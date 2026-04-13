<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use CodeIgniter\I18n\Time;

class InquirySeeder extends Seeder
{
    public function run()
    {
        $now = Time::now('UTC')->toDateTimeString();

        $rows = [
            [
                'company_name' => 'Acme Logistics PH',
                'contact_name' => 'Maria Santos',
                'email' => 'maria.santos@acmelogistics.ph',
                'phone' => '09170001001',
                'employee_count' => 120,
                'requested_plan_code' => 'growth',
                'requested_modules_json' => json_encode(['payroll', 'time_attendance', 'employee_self_service']),
                'message' => 'Need payroll + attendance with quick onboarding.',
                'status' => 'pending',
                'decision_notes' => null,
                'approved_company_id' => null,
                'created_at' => $now,
                'updated_at' => $now,
            ],
            [
                'company_name' => 'Northwind Retail Corp',
                'contact_name' => 'Andre Cruz',
                'email' => 'andre.cruz@northwindretail.ph',
                'phone' => '09170001002',
                'employee_count' => 85,
                'requested_plan_code' => 'starter',
                'requested_modules_json' => json_encode(['time_attendance', 'employee_self_service']),
                'message' => 'Looking for starter package and attendance.',
                'status' => 'pending',
                'decision_notes' => null,
                'approved_company_id' => null,
                'created_at' => $now,
                'updated_at' => $now,
            ],
            [
                'company_name' => 'Blue Harbor Foods',
                'contact_name' => 'Lea Ramos',
                'email' => 'lea.ramos@blueharborfoods.ph',
                'phone' => '09170001003',
                'employee_count' => 210,
                'requested_plan_code' => 'enterprise',
                'requested_modules_json' => json_encode(['payroll', 'time_attendance', 'benefits', 'performance']),
                'message' => 'Enterprise rollout for multiple departments.',
                'status' => 'approved',
                'decision_notes' => 'Pre-approved during pilot.',
                'approved_company_id' => 3,
                'created_at' => $now,
                'updated_at' => $now,
            ],
            [
                'company_name' => 'Summit Builders Inc',
                'contact_name' => 'Paolo Mendoza',
                'email' => 'paolo.mendoza@summitbuilders.ph',
                'phone' => '09170001004',
                'employee_count' => 160,
                'requested_plan_code' => 'growth',
                'requested_modules_json' => json_encode(['time_attendance', 'scheduling', 'workforce_forecasting']),
                'message' => 'Need workforce scheduling with attendance.',
                'status' => 'pending',
                'decision_notes' => null,
                'approved_company_id' => null,
                'created_at' => $now,
                'updated_at' => $now,
            ],
            [
                'company_name' => 'Evergreen Med Clinic',
                'contact_name' => 'Trisha Dela Paz',
                'email' => 'trisha.delapaz@evergreenmed.ph',
                'phone' => '09170001005',
                'employee_count' => 65,
                'requested_plan_code' => 'starter',
                'requested_modules_json' => json_encode(['onboarding', 'employee_self_service']),
                'message' => 'Focus on onboarding and self-service.',
                'status' => 'pending',
                'decision_notes' => null,
                'approved_company_id' => null,
                'created_at' => $now,
                'updated_at' => $now,
            ],
        ];

        $this->db->table('inquiries')->truncate();
        $this->db->table('inquiries')->insertBatch($rows);
    }
}
