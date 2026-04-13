<?php

namespace App\Controllers\Api;

use App\Controllers\BaseController;

class AuthController extends BaseController
{
    public function me()
    {
        $authHeader = (string) $this->request->getHeaderLine('Authorization');
        if (! preg_match('/^Bearer\s+(.+)$/i', $authHeader, $matches)) {
            return $this->response->setStatusCode(401)->setJSON([
                'status' => 'error',
                'message' => 'Missing bearer token.',
            ]);
        }

        $decoded = base64_decode(trim($matches[1]), true);
        if ($decoded === false) {
            return $this->response->setStatusCode(401)->setJSON([
                'status' => 'error',
                'message' => 'Invalid token.',
            ]);
        }

        $parts = explode('|', $decoded);
        if (count($parts) < 2) {
            return $this->response->setStatusCode(401)->setJSON([
                'status' => 'error',
                'message' => 'Invalid token payload.',
            ]);
        }

        $email = strtolower(trim((string) $parts[0]));
        $role = trim((string) $parts[1]);
        $company = $this->resolveCompanyContext($email, $role);

        return $this->response->setJSON([
            'status' => 'success',
            'data' => [
                'email' => $email,
                'role' => $role,
                'company_id' => $company['id'],
                'company' => [
                    'id' => $company['id'],
                    'name' => $company['name'],
                    'login_key' => $company['login_key'],
                ],
            ],
        ]);
    }

    public function login()
    {
        $payload = $this->request->getJSON(true) ?? [];

        $email = trim((string) ($payload['email'] ?? ''));
        $password = (string) ($payload['password'] ?? '');
        $loginKey = trim((string) ($payload['login_key'] ?? ''));
        $normalizedEmail = strtolower($email);
        $normalizedLoginKey = strtolower($loginKey);

        if ($email === '' || $password === '' || $loginKey === '') {
            return $this->response->setStatusCode(422)->setJSON([
                'status' => 'error',
                'message' => 'Email, password, and login key are required.',
            ]);
        }

        if ($password !== 'password123') {
            return $this->response->setStatusCode(401)->setJSON([
                'status' => 'error',
                'message' => 'Invalid credentials.',
            ]);
        }

        $role = $this->resolveRole($normalizedLoginKey, $normalizedEmail);
        if ($role === null) {
            $role = $this->resolveDynamicCompanyAdminRole($normalizedLoginKey, $normalizedEmail);
        }
        if ($role === null) {
            return $this->response->setStatusCode(401)->setJSON([
                'status' => 'error',
                'message' => 'Invalid login key/account combination.',
            ]);
        }

        $token = base64_encode($email . '|' . $role . '|' . time());

        return $this->response->setJSON([
            'status' => 'success',
            'message' => 'Login successful.',
            'data' => [
                'token' => $token,
                'user' => [
                    'email' => $normalizedEmail,
                    'role' => $role,
                ],
                'company' => [
                    'name' => $this->companyNameFromLoginKey($normalizedLoginKey),
                    'login_key' => $normalizedLoginKey,
                ],
                'enabled_modules' => [
                    'attendance',
                    'payroll',
                    'leave',
                ],
            ],
        ]);
    }

    private function resolveRole(string $loginKey, string $email): ?string
    {
        if ($loginKey === 'onehris') {
            return match ($email) {
                'owner@onehris.com' => 'system_admin',
                'admin@onehris.com' => 'admin',
                default => null,
            };
        }

        if ($loginKey === 'onehris-client') {
            return $email === 'client.superadmin@onehris.com' ? 'client_superadmin' : null;
        }

        if ($loginKey === 'demo') {
            return match ($email) {
                'admin@example.com' => 'client_superadmin',
                'hr.manager@demo.local' => 'hr_manager',
                'payroll.officer@demo.local' => 'payroll_officer',
                'supervisor@demo.local',
                'supervisor.payroll@demo.local' => 'supervisor',
                'ops.staff1@demo.local',
                'ops.staff2@demo.local',
                'payroll.staff1@demo.local',
                'hr.associate@demo.local' => 'employee',
                default => null,
            };
        }

        return null;
    }

    private function companyNameFromLoginKey(string $loginKey): string
    {
        return match (strtolower($loginKey)) {
            'onehris' => 'OneHRIS Platform',
            'onehris-client' => 'OneHRIS Client Demo',
            'demo' => 'Demo Company',
            default => strtoupper($loginKey),
        };
    }

    private function resolveCompanyContext(string $email, string $role): array
    {
        if (str_ends_with($email, '@onehris.com') || $role === 'system_admin' || $role === 'admin') {
            return ['id' => 1, 'name' => 'OneHRIS Platform', 'login_key' => 'onehris'];
        }

        if ($email === 'client.superadmin@onehris.com') {
            return ['id' => 2, 'name' => 'OneHRIS Client Demo', 'login_key' => 'onehris-client'];
        }

        $company = db_connect()
            ->table('companies')
            ->select('id, name, login_key')
            ->where('contact_email', $email)
            ->orWhere('login_key', $this->guessLoginKeyFromEmail($email))
            ->orderBy('id', 'DESC')
            ->get()
            ->getRowArray();
        if (is_array($company)) {
            return [
                'id' => (int) $company['id'],
                'name' => (string) $company['name'],
                'login_key' => (string) $company['login_key'],
            ];
        }

        return ['id' => 3, 'name' => 'Demo Company', 'login_key' => 'demo'];
    }

    private function resolveDynamicCompanyAdminRole(string $loginKey, string $email): ?string
    {
        $company = db_connect()
            ->table('companies')
            ->select('id')
            ->where('login_key', $loginKey)
            ->where('contact_email', $email)
            ->where('approval_status', 'approved')
            ->get()
            ->getRowArray();

        return is_array($company) ? 'client_superadmin' : null;
    }

    private function guessLoginKeyFromEmail(string $email): string
    {
        $parts = explode('@', $email);
        if (count($parts) !== 2) {
            return '';
        }

        return strtolower(trim(preg_replace('/[^a-z0-9]+/i', '-', $parts[0]) ?? ''));
    }
}
