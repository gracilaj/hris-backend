<?php

namespace App\Controllers\Api;

use App\Controllers\BaseController;
use CodeIgniter\I18n\Time;

class AdminController extends BaseController
{
    public function inquiries()
    {
        $rows = db_connect()
            ->table('inquiries')
            ->select('id, company_name, contact_name, email, requested_plan_code, status')
            ->orderBy('id', 'DESC')
            ->get()
            ->getResultArray();

        return $this->response->setJSON([
            'status' => 'success',
            'data' => [
                'inquiries' => $rows,
            ],
        ]);
    }

    public function approveInquiry(int $id)
    {
        $payload = $this->request->getJSON(true) ?? [];
        $loginKey = trim((string) ($payload['login_key'] ?? ''));

        if ($loginKey === '') {
            return $this->response->setStatusCode(422)->setJSON([
                'status' => 'error',
                'message' => 'login_key is required.',
            ]);
        }

        $db = db_connect();
        $inquiry = $db->table('inquiries')->where('id', $id)->get()->getRowArray();
        if (! is_array($inquiry)) {
            return $this->response->setStatusCode(404)->setJSON([
                'status' => 'error',
                'message' => 'Inquiry not found.',
            ]);
        }

        $now = Time::now('UTC')->toDateTimeString();

        $company = $db->table('companies')->where('login_key', $loginKey)->get()->getRowArray();
        if (! is_array($company)) {
            $companyData = [
                'code' => $this->slugify((string) ($inquiry['company_name'] ?? $loginKey)),
                'login_key' => $loginKey,
                'name' => (string) ($inquiry['company_name'] ?? strtoupper($loginKey)),
                'industry' => 'General',
                'contact_email' => (string) ($inquiry['email'] ?? ''),
                'contact_phone' => (string) ($inquiry['phone'] ?? ''),
                'status' => 'active',
                'approval_status' => 'approved',
                'created_at' => $now,
                'updated_at' => $now,
            ];
            $db->table('companies')->insert($companyData);
            $companyId = (int) $db->insertID();
        } else {
            $companyId = (int) $company['id'];
            $db->table('companies')->where('id', $companyId)->update([
                'approval_status' => 'approved',
                'status' => 'active',
                'updated_at' => $now,
            ]);
        }

        $db->table('inquiries')->where('id', $id)->update([
            'status' => 'approved',
            'approved_company_id' => $companyId,
            'decision_notes' => 'Approved via platform admin dashboard.',
            'updated_at' => $now,
        ]);

        $requestedPlanCode = strtolower((string) ($inquiry['requested_plan_code'] ?? 'starter'));
        $plan = $db->table('plans')
            ->select('id, code')
            ->where('code', $requestedPlanCode)
            ->get()
            ->getRowArray();
        if (! is_array($plan)) {
            $plan = $db->table('plans')
                ->select('id, code')
                ->where('code', 'starter')
                ->get()
                ->getRowArray();
        }

        if (is_array($plan)) {
            $db->table('subscriptions')
                ->where('company_id', $companyId)
                ->update(['status' => 'inactive', 'updated_at' => $now]);

            $db->table('subscriptions')->insert([
                'company_id' => $companyId,
                'plan_id' => (int) $plan['id'],
                'status' => 'active',
                'starts_at' => $now,
                'ends_at' => null,
                'trial_ends_at' => null,
                'auto_renew' => 1,
                'created_at' => $now,
                'updated_at' => $now,
            ]);
            $subscriptionId = (int) $db->insertID();

            $planModules = $db->table('plan_modules')
                ->select('module_id')
                ->where('plan_id', (int) $plan['id'])
                ->where('is_included', 1)
                ->get()
                ->getResultArray();

            $insertRows = array_map(
                static fn(array $m): array => [
                    'subscription_id' => $subscriptionId,
                    'module_id' => (int) $m['module_id'],
                    'status' => 'active',
                    'add_on_price' => 0.00,
                    'created_at' => $now,
                    'updated_at' => $now,
                ],
                $planModules
            );
            if ($insertRows !== []) {
                $db->table('subscription_modules')->insertBatch($insertRows);
            }
        }

        return $this->response->setJSON([
            'status' => 'success',
            'message' => 'Inquiry approved.',
            'data' => [
                'id' => $id,
                'login_key' => $loginKey,
                'approved_company_id' => $companyId,
                'plan_code' => is_array($plan) ? (string) $plan['code'] : null,
            ],
        ]);
    }

    private function slugify(string $value): string
    {
        $slug = strtolower(trim(preg_replace('/[^a-z0-9]+/i', '-', $value) ?? ''));
        $slug = trim($slug, '-');

        return $slug !== '' ? $slug : 'company-' . time();
    }
}
