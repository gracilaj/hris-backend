<?php

namespace App\Controllers\Api;

use App\Controllers\BaseController;

class CompanyController extends BaseController
{
    public function modules(int $companyId)
    {
        $db = db_connect();

        $subscription = $db->table('subscriptions')
            ->select('id, plan_id')
            ->where('company_id', $companyId)
            ->where('status', 'active')
            ->orderBy('id', 'DESC')
            ->get()
            ->getRowArray();

        $activeModuleIds = [];
        if (is_array($subscription)) {
            $planRows = $db->table('plan_modules')
                ->select('module_id')
                ->where('plan_id', (int) $subscription['plan_id'])
                ->where('is_included', 1)
                ->get()
                ->getResultArray();

            $activeRows = $db->table('subscription_modules')
                ->select('module_id')
                ->where('subscription_id', (int) $subscription['id'])
                ->where('status', 'active')
                ->get()
                ->getResultArray();

            $activeModuleIds = array_values(array_unique(array_merge(
                array_map(static fn(array $r): int => (int) $r['module_id'], $planRows),
                array_map(static fn(array $r): int => (int) $r['module_id'], $activeRows)
            )));
        }

        $rows = $db->table('modules')
            ->select('id, code, name')
            ->where('is_active', 1)
            ->orderBy('id', 'ASC')
            ->get()
            ->getResultArray();

        $modules = array_map(
            static fn(array $row): array => [
                'code' => (string) $row['code'],
                'name' => (string) $row['name'],
                'active' => in_array((int) $row['id'], $activeModuleIds, true),
            ],
            $rows
        );

        return $this->response->setJSON([
            'status' => 'success',
            'data' => [
                'modules' => $modules,
            ],
        ]);
    }
}
