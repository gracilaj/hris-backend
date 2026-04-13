<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

$routes->group('api/v1', static function ($routes) {
    $routes->post('auth/login', 'Api\AuthController::login');
    $routes->get('me', 'Api\AuthController::me');
    $routes->get('companies/(:num)/modules', 'Api\CompanyController::modules/$1');
    $routes->get('employees', 'Api\WorkspaceController::employees');
    $routes->post('employees/upload', 'Api\WorkspaceController::uploadEmployees');
    $routes->get('plans', 'Api\WorkspaceController::plans');
    $routes->get('company-users', 'Api\WorkspaceController::companyUsers');
    $routes->post('company-users/create', 'Api\WorkspaceController::createCompanyUser');
    $routes->get('departments', 'Api\WorkspaceController::departments');
    $routes->post('departments/assign-supervisor', 'Api\WorkspaceController::assignSupervisor');
    $routes->post('subscriptions/select-plan', 'Api\WorkspaceController::selectPlan');
    $routes->get('public/company/(:segment)', 'Api\PublicController::company/$1');
    $routes->get('admin/inquiries', 'Api\AdminController::inquiries');
    $routes->post('admin/inquiries/(:num)/approve', 'Api\AdminController::approveInquiry/$1');
});
