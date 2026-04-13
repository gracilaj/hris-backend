<?php

namespace App\Controllers\Api;

use App\Controllers\BaseController;

class PublicController extends BaseController
{
    public function company(string $loginKey)
    {
        $key = strtolower(trim($loginKey));
        $company = $this->companyByKey($key);

        if ($company === null) {
            return $this->response->setStatusCode(404)->setJSON([
                'status' => 'error',
                'message' => 'Company login key not found.',
            ]);
        }

        return $this->response->setJSON([
            'status' => 'success',
            'data' => [
                'company' => $company,
            ],
        ]);
    }

    private function companyByKey(string $key): ?array
    {
        return match ($key) {
            'onehris' => [
                'id' => 1,
                'name' => 'OneHRIS Platform',
                'login_key' => 'onehris',
                'approval_status' => 'approved',
            ],
            'onehris-client' => [
                'id' => 2,
                'name' => 'OneHRIS Client Demo',
                'login_key' => 'onehris-client',
                'approval_status' => 'approved',
            ],
            'demo' => [
                'id' => 3,
                'name' => 'Demo Company',
                'login_key' => 'demo',
                'approval_status' => 'approved',
            ],
            default => null,
        };
    }
}
