-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2026 at 03:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hris_subscription`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_logs`
--

CREATE TABLE `attendance_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `qr_location_id` int(10) UNSIGNED DEFAULT NULL,
  `log_type` varchar(10) NOT NULL,
  `logged_at` datetime NOT NULL,
  `source` varchar(20) NOT NULL DEFAULT 'mobile',
  `lat` decimal(10,7) DEFAULT NULL,
  `lng` decimal(10,7) DEFAULT NULL,
  `qr_payload` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_logs`
--

INSERT INTO `attendance_logs` (`id`, `company_id`, `employee_id`, `qr_location_id`, `log_type`, `logged_at`, `source`, `lat`, `lng`, `qr_payload`, `created_at`) VALUES
(1, 3, 1, 1, 'IN', '2026-04-01 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(2, 3, 1, 1, 'OUT', '2026-04-01 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(3, 3, 1, 1, 'IN', '2026-04-02 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(4, 3, 1, 1, 'OUT', '2026-04-02 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(5, 3, 1, 1, 'IN', '2026-04-03 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(6, 3, 1, 1, 'OUT', '2026-04-03 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(7, 3, 1, 1, 'IN', '2026-04-04 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(8, 3, 1, 1, 'OUT', '2026-04-04 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(9, 3, 1, 1, 'IN', '2026-04-05 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(10, 3, 1, 1, 'OUT', '2026-04-05 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(11, 3, 1, 1, 'IN', '2026-04-06 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(12, 3, 1, 1, 'OUT', '2026-04-06 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(13, 3, 1, 1, 'IN', '2026-04-07 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(14, 3, 1, 1, 'OUT', '2026-04-07 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(15, 3, 1, 1, 'IN', '2026-04-08 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(16, 3, 1, 1, 'OUT', '2026-04-08 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(17, 3, 1, 1, 'IN', '2026-04-09 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(18, 3, 1, 1, 'OUT', '2026-04-09 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(19, 3, 1, 1, 'IN', '2026-04-10 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(20, 3, 1, 1, 'OUT', '2026-04-10 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:21'),
(21, 3, 1, 1, 'IN', '2026-04-01 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(22, 3, 1, 1, 'OUT', '2026-04-01 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(23, 3, 1, 1, 'IN', '2026-04-02 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(24, 3, 1, 1, 'OUT', '2026-04-02 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(25, 3, 1, 1, 'IN', '2026-04-03 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(26, 3, 1, 1, 'OUT', '2026-04-03 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(27, 3, 1, 1, 'IN', '2026-04-04 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(28, 3, 1, 1, 'OUT', '2026-04-04 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(29, 3, 1, 1, 'IN', '2026-04-05 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(30, 3, 1, 1, 'OUT', '2026-04-05 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(31, 3, 1, 1, 'IN', '2026-04-06 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(32, 3, 1, 1, 'OUT', '2026-04-06 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(33, 3, 1, 1, 'IN', '2026-04-07 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(34, 3, 1, 1, 'OUT', '2026-04-07 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(35, 3, 1, 1, 'IN', '2026-04-08 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(36, 3, 1, 1, 'OUT', '2026-04-08 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(37, 3, 1, 1, 'IN', '2026-04-09 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(38, 3, 1, 1, 'OUT', '2026-04-09 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(39, 3, 1, 1, 'IN', '2026-04-10 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(40, 3, 1, 1, 'OUT', '2026-04-10 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 08:59:58'),
(41, 3, 1, 1, 'IN', '2026-04-01 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(42, 3, 1, 1, 'OUT', '2026-04-01 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(43, 3, 1, 1, 'IN', '2026-04-02 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(44, 3, 1, 1, 'OUT', '2026-04-02 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(45, 3, 1, 1, 'IN', '2026-04-03 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(46, 3, 1, 1, 'OUT', '2026-04-03 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(47, 3, 1, 1, 'IN', '2026-04-04 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(48, 3, 1, 1, 'OUT', '2026-04-04 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(49, 3, 1, 1, 'IN', '2026-04-05 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(50, 3, 1, 1, 'OUT', '2026-04-05 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(51, 3, 1, 1, 'IN', '2026-04-06 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(52, 3, 1, 1, 'OUT', '2026-04-06 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(53, 3, 1, 1, 'IN', '2026-04-07 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(54, 3, 1, 1, 'OUT', '2026-04-07 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(55, 3, 1, 1, 'IN', '2026-04-08 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(56, 3, 1, 1, 'OUT', '2026-04-08 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(57, 3, 1, 1, 'IN', '2026-04-09 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(58, 3, 1, 1, 'OUT', '2026-04-09 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(59, 3, 1, 1, 'IN', '2026-04-10 08:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16'),
(60, 3, 1, 1, 'OUT', '2026-04-10 17:00:00', 'seed', NULL, NULL, 'DEMO-QR-LOBBY', '2026-04-08 09:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_qr_locations`
--

CREATE TABLE `attendance_qr_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(120) NOT NULL,
  `qr_token` varchar(120) NOT NULL,
  `geo_lat` decimal(10,7) DEFAULT NULL,
  `geo_lng` decimal(10,7) DEFAULT NULL,
  `radius_meters` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_qr_locations`
--

INSERT INTO `attendance_qr_locations` (`id`, `company_id`, `branch_id`, `name`, `qr_token`, `geo_lat`, `geo_lng`, `radius_meters`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 'Main Office Lobby', 'DEMO-QR-LOBBY', NULL, NULL, 150, 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `benefit_plans`
--

CREATE TABLE `benefit_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(160) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `login_key` varchar(80) DEFAULT NULL,
  `name` varchar(160) NOT NULL,
  `industry` varchar(120) DEFAULT NULL,
  `contact_email` varchar(160) DEFAULT NULL,
  `contact_phone` varchar(40) DEFAULT NULL,
  `logo_url` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'lead',
  `approval_status` varchar(30) DEFAULT 'approved',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `code`, `login_key`, `name`, `industry`, `contact_email`, `contact_phone`, `logo_url`, `status`, `approval_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'onehris-platform', 'onehris', 'oneHRIS Platform', 'HR Technology', 'owner@onehris.com', NULL, 'https://dummyimage.com/120x120/10b981/ffffff&text=oneHRIS', 'active', 'approved', '2026-04-08 08:32:27', '2026-04-08 08:32:27', NULL),
(2, 'onehris-client', 'onehris-client', 'oneHRIS Internal', 'Internal Operations', 'client.superadmin@onehris.com', NULL, 'https://dummyimage.com/120x120/0ea5e9/ffffff&text=Internal', 'active', 'approved', '2026-04-08 08:32:27', '2026-04-08 08:32:27', NULL),
(3, 'demo-company', 'demo', 'Demo Company', 'Technology', 'admin@example.com', NULL, 'https://dummyimage.com/120x120/0f172a/ffffff&text=Demo', 'active', 'approved', '2026-04-08 08:32:27', '2026-04-08 08:32:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_branches`
--

CREATE TABLE `company_branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `timezone` varchar(100) NOT NULL DEFAULT 'Asia/Manila',
  `is_hq` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_branches`
--

INSERT INTO `company_branches` (`id`, `company_id`, `name`, `address`, `timezone`, `is_hq`, `created_at`, `updated_at`) VALUES
(1, 3, 'Main Office', 'Makati, Philippines', 'Asia/Manila', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(2, 3, 'Main Office', 'Makati, Philippines', 'Asia/Manila', 1, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(3, 3, 'Main Office', 'Makati, Philippines', 'Asia/Manila', 1, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(4, 3, 'Main Office', 'Makati, Philippines', 'Asia/Manila', 1, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(5, 3, 'Main Office', 'Makati, Philippines', 'Asia/Manila', 1, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(6, 3, 'Main Office', 'Makati, Philippines', 'Asia/Manila', 1, '2026-04-08 09:09:16', '2026-04-08 09:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(160) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `company_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 3, 'HR', '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(2, 3, 'Payroll', '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(3, 3, 'Operations', '2026-04-08 08:59:02', '2026-04-08 08:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `employee_no` varchar(50) NOT NULL,
  `first_name` varchar(120) NOT NULL,
  `last_name` varchar(120) NOT NULL,
  `email` varchar(160) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `employment_type` varchar(40) NOT NULL DEFAULT 'regular',
  `status` varchar(40) NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `company_id`, `user_id`, `employee_no`, `first_name`, `last_name`, `email`, `hire_date`, `employment_type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 4, 'EMP-0001', 'System', 'Admin', 'admin@example.com', '2026-04-08', 'regular', 'active', '2026-04-08 08:32:27', '2026-04-08 08:32:27', NULL),
(4, 3, 18, 'EMP-0002', 'Team', 'Supervisor', 'supervisor@demo.local', '2026-04-08', 'regular', 'active', '2026-04-08 08:59:02', '2026-04-08 08:59:02', NULL),
(11, 3, 38, 'EMP-0003', 'Payroll', 'Supervisor', 'supervisor.payroll@demo.local', '2026-04-08', 'regular', 'active', '2026-04-08 09:09:16', '2026-04-08 09:09:16', NULL),
(12, 3, 40, 'EMP-0101', 'Ops', 'Staff One', 'ops.staff1@demo.local', '2026-04-08', 'regular', 'active', '2026-04-08 09:09:16', '2026-04-08 09:09:16', NULL),
(13, 3, 41, 'EMP-0102', 'Ops', 'Staff Two', 'ops.staff2@demo.local', '2026-04-08', 'regular', 'active', '2026-04-08 09:09:16', '2026-04-08 09:09:16', NULL),
(14, 3, 42, 'EMP-0201', 'Payroll', 'Staff One', 'payroll.staff1@demo.local', '2026-04-08', 'regular', 'active', '2026-04-08 09:09:16', '2026-04-08 09:09:16', NULL),
(15, 3, 43, 'EMP-0301', 'HR', 'Associate', 'hr.associate@demo.local', '2026-04-08', 'regular', 'active', '2026-04-08 09:09:16', '2026-04-08 09:09:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_positions`
--

CREATE TABLE `employee_positions` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `job_title_id` int(10) UNSIGNED DEFAULT NULL,
  `manager_employee_id` int(10) UNSIGNED DEFAULT NULL,
  `effective_from` date NOT NULL,
  `effective_to` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_positions`
--

INSERT INTO `employee_positions` (`id`, `employee_id`, `department_id`, `job_title_id`, `manager_employee_id`, `effective_from`, `effective_to`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, 4, '2026-04-08', NULL, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(2, 1, 3, NULL, 4, '2026-04-08', NULL, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(3, 4, 3, 1, NULL, '2026-04-08', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(4, 11, 2, 2, NULL, '2026-04-08', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(5, 1, 3, 3, 4, '2026-04-08', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(6, 12, 3, 3, 4, '2026-04-08', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(7, 13, 3, 3, 4, '2026-04-08', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(8, 14, 2, 4, 11, '2026-04-08', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(9, 15, 1, 5, NULL, '2026-04-08', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `employee_requests`
--

CREATE TABLE `employee_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `requester_user_id` int(10) UNSIGNED NOT NULL,
  `request_type` varchar(40) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `reviewed_by_user_id` int(10) UNSIGNED DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_requests`
--

INSERT INTO `employee_requests` (`id`, `company_id`, `employee_id`, `requester_user_id`, `request_type`, `start_date`, `end_date`, `reason`, `status`, `reviewed_by_user_id`, `reviewed_at`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 11, 'leave', NULL, NULL, 'Medical appointment', 'approved', 12, '2026-04-08 08:47:08', '2026-04-08 08:47:07', '2026-04-08 08:47:08'),
(2, 3, NULL, 11, 'overtime', NULL, NULL, 'asd', 'pending', NULL, NULL, '2026-04-08 09:12:00', '2026-04-08 09:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee_request_trails`
--

CREATE TABLE `employee_request_trails` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) UNSIGNED NOT NULL,
  `action` varchar(40) NOT NULL,
  `acted_by_user_id` int(10) UNSIGNED DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_request_trails`
--

INSERT INTO `employee_request_trails` (`id`, `request_id`, `action`, `acted_by_user_id`, `notes`, `created_at`) VALUES
(1, 2, 'submitted', 11, 'Request submitted by employee', '2026-04-08 09:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `forecast_runs`
--

CREATE TABLE `forecast_runs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `period_from` date NOT NULL,
  `period_to` date NOT NULL,
  `forecast_json` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(160) NOT NULL,
  `contact_name` varchar(160) NOT NULL,
  `email` varchar(160) NOT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `employee_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `requested_plan_code` varchar(60) DEFAULT NULL,
  `requested_modules_json` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'new',
  `decision_notes` text DEFAULT NULL,
  `approved_company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `company_name`, `contact_name`, `email`, `phone`, `employee_count`, `requested_plan_code`, `requested_modules_json`, `message`, `status`, `decision_notes`, `approved_company_id`, `created_at`, `updated_at`) VALUES
(1, 'Lucky 8 Star', 'Grace Demo', 'inquiry@example.com', '09171234567', 120, 'growth', '[\"payroll\",\"time_attendance\",\"employee_self_service\"]', 'Interested in payroll, attendance, and employee self-service.', 'pending', NULL, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(2, 'Lucky 8 Star', 'Grace Demo', 'inquiry@example.com', '09171234567', 120, 'growth', '[\"payroll\",\"time_attendance\",\"employee_self_service\"]', 'Interested in payroll, attendance, and employee self-service.', 'pending', NULL, NULL, '2026-04-08 08:45:03', '2026-04-08 08:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_titles`
--

INSERT INTO `job_titles` (`id`, `company_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 3, 'Operations Supervisor', '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(2, 3, 'Payroll Supervisor', '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(3, 3, 'Operations Staff', '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(4, 3, 'Payroll Staff', '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(5, 3, 'HR Associate', '2026-04-08 09:09:16', '2026-04-08 09:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(14, '2026-04-08-070515', 'App\\Database\\Migrations\\CreateSaasCoreTables', 'default', 'App', 1775637146, 1),
(15, '2026-04-08-070515', 'App\\Database\\Migrations\\CreateSubscriptionTables', 'default', 'App', 1775637146, 1),
(16, '2026-04-08-070516', 'App\\Database\\Migrations\\CreateIdentityAndHrCoreTables', 'default', 'App', 1775637146, 1),
(17, '2026-04-08-070517', 'App\\Database\\Migrations\\CreateAttendanceTables', 'default', 'App', 1775637146, 1),
(18, '2026-04-08-070518', 'App\\Database\\Migrations\\CreatePayrollTables', 'default', 'App', 1775637146, 1),
(19, '2026-04-08-070519', 'App\\Database\\Migrations\\AddHrFeatureTables', 'default', 'App', 1775637146, 1),
(20, '2026-04-08-080924', 'App\\Database\\Migrations\\AddCompanyBrandingAndInquiryApproval', 'default', 'App', 1775637146, 1),
(21, '2026-04-08-084405', 'App\\Database\\Migrations\\CreateEmployeeRequestsTable', 'default', 'App', 1775637903, 2),
(22, '2026-04-08-084757', 'App\\Database\\Migrations\\AddSupervisorDepartmentAndRequestTrailTables', 'default', 'App', 1775638752, 3);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(60) NOT NULL,
  `name` varchar(160) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `code`, `name`, `category`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'payroll', 'Payroll processing', 'payroll', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(2, 'taxes_compliance', 'Taxes and compliance', 'payroll', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(3, 'onboarding', 'Employee onboarding', 'hr', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(4, 'training', 'Training and professional development', 'hr', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(5, 'time_attendance', 'Time and attendance', 'workforce', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(6, 'performance', 'Performance evaluation and reviews', 'hr', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(7, 'benefits', 'Benefits administration', 'hr', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(8, 'employee_self_service', 'Employee self-service tools', 'hr', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(9, 'scheduling', 'Scheduling', 'workforce', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(10, 'workforce_forecasting', 'Workforce forecasting', 'workforce', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `onboarding_tasks`
--

CREATE TABLE `onboarding_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `onboarding_template_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(160) NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onboarding_templates`
--

CREATE TABLE `onboarding_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(160) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pagibig_tables`
--

CREATE TABLE `pagibig_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `effective_from` date NOT NULL,
  `effective_to` date DEFAULT NULL,
  `range_from` decimal(12,2) NOT NULL,
  `range_to` decimal(12,2) NOT NULL,
  `employee_share` decimal(12,2) NOT NULL DEFAULT 0.00,
  `employer_share` decimal(12,2) NOT NULL DEFAULT 0.00,
  `extra_json` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_periods`
--

CREATE TABLE `payroll_periods` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `pay_date` date DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'draft',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_periods`
--

INSERT INTO `payroll_periods` (`id`, `company_id`, `code`, `date_from`, `date_to`, `pay_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '2026-04-A', '2026-04-01', '2026-04-15', '2026-04-16', 'open', '2026-04-08 08:32:27', '2026-04-08 08:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_runs`
--

CREATE TABLE `payroll_runs` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `payroll_period_id` int(10) UNSIGNED NOT NULL,
  `run_no` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `status` varchar(30) NOT NULL DEFAULT 'processing',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_runs`
--

INSERT INTO `payroll_runs` (`id`, `company_id`, `payroll_period_id`, `run_no`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 'completed', 10, '2026-04-08 08:55:49', '2026-04-08 08:55:49'),
(2, 3, 1, 2, 'completed', 31, '2026-04-08 09:45:45', '2026-04-08 09:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_run_employees`
--

CREATE TABLE `payroll_run_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payroll_run_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `basic_pay` decimal(12,2) NOT NULL DEFAULT 0.00,
  `gross_pay` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_deduct` decimal(12,2) NOT NULL DEFAULT 0.00,
  `net_pay` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_run_employees`
--

INSERT INTO `payroll_run_employees` (`id`, `payroll_run_id`, `employee_id`, `basic_pay`, `gross_pay`, `total_deduct`, `net_pay`, `created_at`) VALUES
(1, 2, 1, 10000.00, 10000.00, 1000.00, 9000.00, '2026-04-08 09:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_run_items`
--

CREATE TABLE `payroll_run_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payroll_run_employee_id` bigint(20) UNSIGNED NOT NULL,
  `item_type` varchar(40) NOT NULL,
  `code` varchar(80) NOT NULL,
  `label` varchar(120) NOT NULL,
  `amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll_run_items`
--

INSERT INTO `payroll_run_items` (`id`, `payroll_run_employee_id`, `item_type`, `code`, `label`, `amount`) VALUES
(1, 1, 'earning', 'BASIC', 'Basic Pay', 10000.00),
(2, 1, 'deduction', 'WHTAX', 'Withholding Tax (10%)', 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `payslips`
--

CREATE TABLE `payslips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payroll_run_employee_id` bigint(20) UNSIGNED NOT NULL,
  `payslip_no` varchar(80) NOT NULL,
  `issued_at` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payslips`
--

INSERT INTO `payslips` (`id`, `payroll_run_employee_id`, `payslip_no`, `issued_at`, `notes`) VALUES
(1, 1, 'PS-2-000001', '2026-04-08 09:45:45', 'Generated from attendance logs');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `module_code` varchar(80) NOT NULL,
  `action` varchar(80) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `module_code`, `action`, `created_at`, `updated_at`) VALUES
(1, 'platform.inquiries.approve', 'platform', 'approve', '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(2, 'platform.companies.create', 'platform', 'create', '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(3, 'platform.companies.view', 'platform', 'view', '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(4, 'subscription.manage', 'subscription', 'manage', '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(5, 'users.manage', 'security', 'manage', '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(6, 'employee.manage', 'hr_core', 'manage', '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(7, 'attendance.log', 'time_attendance', 'log', '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(8, 'attendance.view', 'time_attendance', 'view', '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(9, 'payroll.run', 'payroll', 'run', '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(10, 'payroll.view', 'payroll', 'view', '2026-04-08 08:32:27', '2026-04-08 08:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `philhealth_tables`
--

CREATE TABLE `philhealth_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `effective_from` date NOT NULL,
  `effective_to` date DEFAULT NULL,
  `range_from` decimal(12,2) NOT NULL,
  `range_to` decimal(12,2) NOT NULL,
  `employee_share` decimal(12,2) NOT NULL DEFAULT 0.00,
  `employer_share` decimal(12,2) NOT NULL DEFAULT 0.00,
  `extra_json` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(60) NOT NULL,
  `name` varchar(120) NOT NULL,
  `billing_cycle` varchar(20) NOT NULL DEFAULT 'monthly',
  `base_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `per_employee_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(8) NOT NULL DEFAULT 'PHP',
  `is_public` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `code`, `name`, `billing_cycle`, `base_price`, `per_employee_price`, `currency`, `is_public`, `created_at`, `updated_at`) VALUES
(1, 'starter', 'Starter', 'monthly', 0.00, 49.00, 'PHP', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(2, 'growth', 'Growth', 'monthly', 0.00, 109.00, 'PHP', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(3, 'enterprise', 'Enterprise', 'monthly', 0.00, 0.00, 'PHP', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `plan_modules`
--

CREATE TABLE `plan_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `is_included` tinyint(1) NOT NULL DEFAULT 1,
  `limits_json` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan_modules`
--

INSERT INTO `plan_modules` (`id`, `plan_id`, `module_id`, `is_included`, `limits_json`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(2, 1, 8, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(3, 1, 3, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(4, 2, 5, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(5, 2, 8, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(6, 2, 3, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(7, 2, 1, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(8, 2, 2, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(9, 2, 7, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(10, 3, 7, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(11, 3, 8, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(12, 3, 3, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(13, 3, 1, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(14, 3, 6, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(15, 3, 9, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(16, 3, 2, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(17, 3, 5, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(18, 3, 4, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(19, 3, 10, 1, NULL, '2026-04-08 08:32:27', '2026-04-08 08:32:27');

-- --------------------------------------------------------

--
-- Table structure for table `review_cycles`
--

CREATE TABLE `review_cycles` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(160) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `code` varchar(80) NOT NULL,
  `name` varchar(120) NOT NULL,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `company_id`, `code`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, NULL, 'system_admin', 'System Admin (oneHRIS)', 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(2, NULL, 'admin', 'Admin (oneHRIS)', 5, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(3, NULL, 'client_superadmin', 'Client Super Admin', 10, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(4, NULL, 'hr_manager', 'HR Manager', 20, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(5, NULL, 'payroll_officer', 'Payroll Officer', 30, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(6, NULL, 'supervisor', 'Supervisor', 40, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(7, NULL, 'employee', 'Employee', 100, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(15, NULL, 'system_admin', 'Super Admin (oneHRIS platform)', 1, '2026-04-11 00:35:52', '2026-04-11 00:35:52'),
(16, NULL, 'admin', 'Platform Admin (approvals & operations)', 5, '2026-04-11 00:35:52', '2026-04-11 00:35:52'),
(17, NULL, 'client_superadmin', 'Company Admin (tenant)', 10, '2026-04-11 00:35:52', '2026-04-11 00:35:52'),
(18, NULL, 'hr_manager', 'HR Manager', 20, '2026-04-11 00:35:52', '2026-04-11 00:35:52'),
(19, NULL, 'payroll_officer', 'Payroll Officer', 30, '2026-04-11 00:35:52', '2026-04-11 00:35:52'),
(20, NULL, 'supervisor', 'Supervisor', 40, '2026-04-11 00:35:52', '2026-04-11 00:35:52'),
(21, NULL, 'employee', 'Employee', 100, '2026-04-11 00:35:52', '2026-04-11 00:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 8),
(3, 10),
(4, 6),
(4, 8),
(5, 8),
(5, 9),
(5, 10),
(6, 8),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(160) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sss_tables`
--

CREATE TABLE `sss_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `effective_from` date NOT NULL,
  `effective_to` date DEFAULT NULL,
  `range_from` decimal(12,2) NOT NULL,
  `range_to` decimal(12,2) NOT NULL,
  `employee_share` decimal(12,2) NOT NULL DEFAULT 0.00,
  `employer_share` decimal(12,2) NOT NULL DEFAULT 0.00,
  `extra_json` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'trial',
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `trial_ends_at` datetime DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `company_id`, `plan_id`, `status`, `starts_at`, `ends_at`, `trial_ends_at`, `auto_renew`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'active', '2026-04-08 08:32:27', NULL, NULL, 1, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(2, 3, 2, 'inactive', '2026-04-08 08:32:27', NULL, NULL, 1, '2026-04-08 08:32:27', '2026-04-08 08:32:41'),
(3, 3, 1, 'inactive', '2026-04-08 08:32:41', NULL, NULL, 1, '2026-04-08 08:32:41', '2026-04-08 08:33:42'),
(4, 3, 1, 'inactive', '2026-04-08 08:33:42', NULL, NULL, 1, '2026-04-08 08:33:42', '2026-04-08 08:34:51'),
(5, 3, 3, 'inactive', '2026-04-08 08:34:51', NULL, NULL, 1, '2026-04-08 08:34:51', '2026-04-08 08:34:58'),
(6, 3, 2, 'active', '2026-04-08 08:34:58', NULL, NULL, 1, '2026-04-08 08:34:58', '2026-04-08 08:34:58'),
(7, 2, 2, 'active', '2026-04-08 08:45:03', NULL, NULL, 1, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(8, 3, 2, 'active', '2026-04-08 08:45:03', NULL, NULL, 1, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(9, 2, 2, 'active', '2026-04-08 08:59:02', NULL, NULL, 1, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(10, 3, 2, 'active', '2026-04-08 08:59:02', NULL, NULL, 1, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(11, 2, 2, 'active', '2026-04-08 08:59:21', NULL, NULL, 1, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(12, 3, 2, 'active', '2026-04-08 08:59:21', NULL, NULL, 1, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(13, 2, 2, 'active', '2026-04-08 08:59:58', NULL, NULL, 1, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(14, 3, 2, 'active', '2026-04-08 08:59:58', NULL, NULL, 1, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(15, 2, 2, 'active', '2026-04-08 09:09:16', NULL, NULL, 1, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(16, 3, 2, 'active', '2026-04-08 09:09:16', NULL, NULL, 1, '2026-04-08 09:09:16', '2026-04-08 09:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_modules`
--

CREATE TABLE `subscription_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `subscription_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'active',
  `add_on_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscription_modules`
--

INSERT INTO `subscription_modules` (`id`, `subscription_id`, `module_id`, `status`, `add_on_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(2, 1, 2, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(3, 1, 3, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(4, 1, 5, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(5, 1, 7, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(6, 1, 8, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(7, 2, 1, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(8, 2, 2, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(9, 2, 3, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(10, 2, 5, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(11, 2, 7, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(12, 2, 8, 'active', 0.00, '2026-04-08 08:32:27', '2026-04-08 08:32:27'),
(13, 3, 3, 'active', 0.00, '2026-04-08 08:32:41', '2026-04-08 08:32:41'),
(14, 3, 5, 'active', 0.00, '2026-04-08 08:32:41', '2026-04-08 08:32:41'),
(15, 3, 8, 'active', 0.00, '2026-04-08 08:32:41', '2026-04-08 08:32:41'),
(16, 4, 3, 'active', 0.00, '2026-04-08 08:33:42', '2026-04-08 08:33:42'),
(17, 4, 5, 'active', 0.00, '2026-04-08 08:33:42', '2026-04-08 08:33:42'),
(18, 4, 8, 'active', 0.00, '2026-04-08 08:33:42', '2026-04-08 08:33:42'),
(19, 5, 1, 'active', 0.00, '2026-04-08 08:34:51', '2026-04-08 08:34:51'),
(20, 5, 2, 'active', 0.00, '2026-04-08 08:34:51', '2026-04-08 08:34:51'),
(21, 5, 3, 'active', 0.00, '2026-04-08 08:34:51', '2026-04-08 08:34:51'),
(22, 5, 4, 'active', 0.00, '2026-04-08 08:34:51', '2026-04-08 08:34:51'),
(23, 5, 5, 'active', 0.00, '2026-04-08 08:34:51', '2026-04-08 08:34:51'),
(24, 5, 6, 'active', 0.00, '2026-04-08 08:34:51', '2026-04-08 08:34:51'),
(25, 5, 7, 'active', 0.00, '2026-04-08 08:34:51', '2026-04-08 08:34:51'),
(26, 5, 8, 'active', 0.00, '2026-04-08 08:34:51', '2026-04-08 08:34:51'),
(27, 5, 9, 'active', 0.00, '2026-04-08 08:34:51', '2026-04-08 08:34:51'),
(28, 5, 10, 'active', 0.00, '2026-04-08 08:34:51', '2026-04-08 08:34:51'),
(29, 6, 1, 'active', 0.00, '2026-04-08 08:34:58', '2026-04-08 08:34:58'),
(30, 6, 2, 'active', 0.00, '2026-04-08 08:34:58', '2026-04-08 08:34:58'),
(31, 6, 3, 'active', 0.00, '2026-04-08 08:34:58', '2026-04-08 08:34:58'),
(32, 6, 5, 'active', 0.00, '2026-04-08 08:34:58', '2026-04-08 08:34:58'),
(33, 6, 7, 'active', 0.00, '2026-04-08 08:34:58', '2026-04-08 08:34:58'),
(34, 6, 8, 'active', 0.00, '2026-04-08 08:34:58', '2026-04-08 08:34:58'),
(35, 7, 1, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(36, 7, 2, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(37, 7, 3, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(38, 7, 5, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(39, 7, 7, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(40, 7, 8, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(41, 8, 1, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(42, 8, 2, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(43, 8, 3, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(44, 8, 5, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(45, 8, 7, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(46, 8, 8, 'active', 0.00, '2026-04-08 08:45:03', '2026-04-08 08:45:03'),
(47, 9, 1, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(48, 9, 2, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(49, 9, 3, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(50, 9, 5, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(51, 9, 7, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(52, 9, 8, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(53, 10, 1, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(54, 10, 2, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(55, 10, 3, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(56, 10, 5, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(57, 10, 7, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(58, 10, 8, 'active', 0.00, '2026-04-08 08:59:02', '2026-04-08 08:59:02'),
(59, 11, 1, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(60, 11, 2, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(61, 11, 3, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(62, 11, 5, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(63, 11, 7, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(64, 11, 8, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(65, 12, 1, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(66, 12, 2, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(67, 12, 3, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(68, 12, 5, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(69, 12, 7, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(70, 12, 8, 'active', 0.00, '2026-04-08 08:59:21', '2026-04-08 08:59:21'),
(71, 13, 1, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(72, 13, 2, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(73, 13, 3, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(74, 13, 5, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(75, 13, 7, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(76, 13, 8, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(77, 14, 1, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(78, 14, 2, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(79, 14, 3, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(80, 14, 5, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(81, 14, 7, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(82, 14, 8, 'active', 0.00, '2026-04-08 08:59:58', '2026-04-08 08:59:58'),
(83, 15, 1, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(84, 15, 2, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(85, 15, 3, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(86, 15, 5, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(87, 15, 7, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(88, 15, 8, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(89, 16, 1, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(90, 16, 2, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(91, 16, 3, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(92, 16, 5, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(93, 16, 7, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16'),
(94, 16, 8, 'active', 0.00, '2026-04-08 09:09:16', '2026-04-08 09:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor_departments`
--

CREATE TABLE `supervisor_departments` (
  `department_id` int(10) UNSIGNED NOT NULL,
  `supervisor_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervisor_departments`
--

INSERT INTO `supervisor_departments` (`department_id`, `supervisor_user_id`, `created_at`) VALUES
(2, 38, '2026-04-08 09:09:16'),
(3, 18, '2026-04-08 08:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `tax_tables`
--

CREATE TABLE `tax_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `effective_from` date NOT NULL,
  `effective_to` date DEFAULT NULL,
  `range_from` decimal(12,2) NOT NULL,
  `range_to` decimal(12,2) NOT NULL,
  `employee_share` decimal(12,2) NOT NULL DEFAULT 0.00,
  `employer_share` decimal(12,2) NOT NULL DEFAULT 0.00,
  `extra_json` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(160) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'active',
  `last_login_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `email`, `password_hash`, `status`, `last_login_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'owner@onehris.com', '$2y$10$zpCJXjYwQkl6l8HhmtHSM.MpOVw/RhEl0k/FOsnSpzn0lEbldwZbu', 'active', NULL, '2026-04-08 08:32:27', '2026-04-08 08:55:09', NULL),
(2, 1, 'admin@onehris.com', '$2y$10$zpCJXjYwQkl6l8HhmtHSM.MpOVw/RhEl0k/FOsnSpzn0lEbldwZbu', 'active', NULL, '2026-04-08 08:32:27', '2026-04-08 08:55:09', NULL),
(3, 2, 'client.superadmin@onehris.com', '$2y$10$zpCJXjYwQkl6l8HhmtHSM.MpOVw/RhEl0k/FOsnSpzn0lEbldwZbu', 'active', NULL, '2026-04-08 08:32:27', '2026-04-08 08:55:09', NULL),
(4, 3, 'admin@example.com', '$2y$10$zpCJXjYwQkl6l8HhmtHSM.MpOVw/RhEl0k/FOsnSpzn0lEbldwZbu', 'active', NULL, '2026-04-08 08:32:27', '2026-04-08 08:55:09', NULL),
(5, 3, 'payroll.demo@company.local', '$2y$10$zpCJXjYwQkl6l8HhmtHSM.MpOVw/RhEl0k/FOsnSpzn0lEbldwZbu', 'active', NULL, '2026-04-08 08:32:41', '2026-04-08 08:55:09', NULL),
(10, 3, 'payroll2@demo.local', '$2y$10$zpCJXjYwQkl6l8HhmtHSM.MpOVw/RhEl0k/FOsnSpzn0lEbldwZbu', 'active', NULL, '2026-04-08 08:47:07', '2026-04-08 08:55:09', NULL),
(11, 3, 'employee1@demo.local', '$2y$10$zpCJXjYwQkl6l8HhmtHSM.MpOVw/RhEl0k/FOsnSpzn0lEbldwZbu', 'active', NULL, '2026-04-08 08:47:07', '2026-04-08 08:55:09', NULL),
(12, 3, 'sup1@demo.local', '$2y$10$zpCJXjYwQkl6l8HhmtHSM.MpOVw/RhEl0k/FOsnSpzn0lEbldwZbu', 'active', NULL, '2026-04-08 08:47:07', '2026-04-08 08:55:09', NULL),
(17, 3, 'hr.manager@demo.local', '$2y$10$MJ62Uta2KW7rmvRfv.gcwuRjFYjn4XC1q5wJoDmE0pDmMVi3EzsuG', 'active', NULL, '2026-04-08 08:59:02', '2026-04-08 08:59:02', NULL),
(18, 3, 'supervisor@demo.local', '$2y$10$4MbcIby3HpXQo6lrWLr3D.kAHmfCh2/u8kIc9t1m9WTzuVj.BwN7y', 'active', NULL, '2026-04-08 08:59:02', '2026-04-08 08:59:02', NULL),
(31, 3, 'payroll.officer@demo.local', '$2y$10$ai6sX.IVnth6czG8V7fHIeKQFPW/f7yY2kTN7pegNp32M//QmB3GG', 'active', NULL, '2026-04-08 08:59:58', '2026-04-08 08:59:58', NULL),
(38, 3, 'supervisor.payroll@demo.local', '$2y$10$KbMLd/yW1KfSy09riFF02upHQrUuQOwWRd/V0AZCEE9VhukvIR7dG', 'active', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16', NULL),
(40, 3, 'ops.staff1@demo.local', '$2y$10$pRcjWfiGBbsSN5YF.rE9u..T0522naKSUWitQQb10pA0Dt67tMiSW', 'active', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16', NULL),
(41, 3, 'ops.staff2@demo.local', '$2y$10$FulCOV5MU/5kGE/lUFHkf.pwVuGxzjjM74s2t9jAhnwUTUgdvtnuK', 'active', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16', NULL),
(42, 3, 'payroll.staff1@demo.local', '$2y$10$7iSze.6CYfdQA15vrf2OQuFJHT7.Mi4dqBllLQjDj5YlLnjBVFN.K', 'active', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16', NULL),
(43, 3, 'hr.associate@demo.local', '$2y$10$rPKWdwdwskm/Y1DtGhzCzOEqqNSnCOX8H/uDSdX9WA/oZT5Q3B2IW', 'active', NULL, '2026-04-08 09:09:16', '2026-04-08 09:09:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 5),
(10, 5),
(11, 7),
(12, 6),
(17, 4),
(18, 6),
(31, 5),
(38, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_logs_employee_id_foreign` (`employee_id`),
  ADD KEY `attendance_logs_qr_location_id_foreign` (`qr_location_id`),
  ADD KEY `company_id_employee_id_logged_at` (`company_id`,`employee_id`,`logged_at`);

--
-- Indexes for table `attendance_qr_locations`
--
ALTER TABLE `attendance_qr_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id_qr_token` (`company_id`,`qr_token`),
  ADD KEY `attendance_qr_locations_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `benefit_plans`
--
ALTER TABLE `benefit_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `benefit_plans_company_id_foreign` (`company_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `companies_login_key_unique` (`login_key`);

--
-- Indexes for table `company_branches`
--
ALTER TABLE `company_branches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_company_id_foreign` (`company_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id_name` (`company_id`,`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id_employee_no` (`company_id`,`employee_no`),
  ADD KEY `employees_user_id_foreign` (`user_id`);

--
-- Indexes for table `employee_positions`
--
ALTER TABLE `employee_positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_positions_department_id_foreign` (`department_id`),
  ADD KEY `employee_positions_job_title_id_foreign` (`job_title_id`),
  ADD KEY `employee_positions_manager_employee_id_foreign` (`manager_employee_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employee_requests`
--
ALTER TABLE `employee_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_requests_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_requests_requester_user_id_foreign` (`requester_user_id`),
  ADD KEY `employee_requests_reviewed_by_user_id_foreign` (`reviewed_by_user_id`),
  ADD KEY `company_id_status` (`company_id`,`status`);

--
-- Indexes for table `employee_request_trails`
--
ALTER TABLE `employee_request_trails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_request_trails_acted_by_user_id_foreign` (`acted_by_user_id`),
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `forecast_runs`
--
ALTER TABLE `forecast_runs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forecast_runs_company_id_foreign` (`company_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_status` (`email`,`status`),
  ADD KEY `inquiries_approved_company_id_fk` (`approved_company_id`);

--
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id_name` (`company_id`,`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `onboarding_tasks`
--
ALTER TABLE `onboarding_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onboarding_tasks_onboarding_template_id_foreign` (`onboarding_template_id`);

--
-- Indexes for table `onboarding_templates`
--
ALTER TABLE `onboarding_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onboarding_templates_company_id_foreign` (`company_id`);

--
-- Indexes for table `pagibig_tables`
--
ALTER TABLE `pagibig_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_periods`
--
ALTER TABLE `payroll_periods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id_code` (`company_id`,`code`);

--
-- Indexes for table `payroll_runs`
--
ALTER TABLE `payroll_runs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_runs_payroll_period_id_foreign` (`payroll_period_id`),
  ADD KEY `payroll_runs_created_by_foreign` (`created_by`),
  ADD KEY `company_id_payroll_period_id` (`company_id`,`payroll_period_id`);

--
-- Indexes for table `payroll_run_employees`
--
ALTER TABLE `payroll_run_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payroll_run_id_employee_id` (`payroll_run_id`,`employee_id`),
  ADD KEY `payroll_run_employees_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `payroll_run_items`
--
ALTER TABLE `payroll_run_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payroll_run_employee_id` (`payroll_run_employee_id`);

--
-- Indexes for table `payslips`
--
ALTER TABLE `payslips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payslip_no` (`payslip_no`),
  ADD KEY `payslips_payroll_run_employee_id_foreign` (`payroll_run_employee_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `philhealth_tables`
--
ALTER TABLE `philhealth_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `plan_modules`
--
ALTER TABLE `plan_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plan_id_module_id` (`plan_id`,`module_id`),
  ADD KEY `plan_modules_module_id_foreign` (`module_id`);

--
-- Indexes for table `review_cycles`
--
ALTER TABLE `review_cycles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_cycles_company_id_foreign` (`company_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id_code` (`company_id`,`code`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifts_company_id_foreign` (`company_id`);

--
-- Indexes for table `sss_tables`
--
ALTER TABLE `sss_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_plan_id_foreign` (`plan_id`),
  ADD KEY `company_id_status` (`company_id`,`status`);

--
-- Indexes for table `subscription_modules`
--
ALTER TABLE `subscription_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_id_module_id` (`subscription_id`,`module_id`),
  ADD KEY `subscription_modules_module_id_foreign` (`module_id`);

--
-- Indexes for table `supervisor_departments`
--
ALTER TABLE `supervisor_departments`
  ADD PRIMARY KEY (`department_id`,`supervisor_user_id`),
  ADD KEY `supervisor_departments_supervisor_user_id_foreign` (`supervisor_user_id`);

--
-- Indexes for table `tax_tables`
--
ALTER TABLE `tax_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_id_email` (`company_id`,`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `attendance_qr_locations`
--
ALTER TABLE `attendance_qr_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `benefit_plans`
--
ALTER TABLE `benefit_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `company_branches`
--
ALTER TABLE `company_branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employee_positions`
--
ALTER TABLE `employee_positions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee_requests`
--
ALTER TABLE `employee_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_request_trails`
--
ALTER TABLE `employee_request_trails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forecast_runs`
--
ALTER TABLE `forecast_runs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `onboarding_tasks`
--
ALTER TABLE `onboarding_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onboarding_templates`
--
ALTER TABLE `onboarding_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pagibig_tables`
--
ALTER TABLE `pagibig_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_periods`
--
ALTER TABLE `payroll_periods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payroll_runs`
--
ALTER TABLE `payroll_runs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payroll_run_employees`
--
ALTER TABLE `payroll_run_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payroll_run_items`
--
ALTER TABLE `payroll_run_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payslips`
--
ALTER TABLE `payslips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `philhealth_tables`
--
ALTER TABLE `philhealth_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `plan_modules`
--
ALTER TABLE `plan_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `review_cycles`
--
ALTER TABLE `review_cycles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sss_tables`
--
ALTER TABLE `sss_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subscription_modules`
--
ALTER TABLE `subscription_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `tax_tables`
--
ALTER TABLE `tax_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  ADD CONSTRAINT `attendance_logs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_logs_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_logs_qr_location_id_foreign` FOREIGN KEY (`qr_location_id`) REFERENCES `attendance_qr_locations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `attendance_qr_locations`
--
ALTER TABLE `attendance_qr_locations`
  ADD CONSTRAINT `attendance_qr_locations_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `company_branches` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_qr_locations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `benefit_plans`
--
ALTER TABLE `benefit_plans`
  ADD CONSTRAINT `benefit_plans_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company_branches`
--
ALTER TABLE `company_branches`
  ADD CONSTRAINT `company_branches_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employee_positions`
--
ALTER TABLE `employee_positions`
  ADD CONSTRAINT `employee_positions_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_positions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_positions_job_title_id_foreign` FOREIGN KEY (`job_title_id`) REFERENCES `job_titles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_positions_manager_employee_id_foreign` FOREIGN KEY (`manager_employee_id`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employee_requests`
--
ALTER TABLE `employee_requests`
  ADD CONSTRAINT `employee_requests_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_requests_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_requests_requester_user_id_foreign` FOREIGN KEY (`requester_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_requests_reviewed_by_user_id_foreign` FOREIGN KEY (`reviewed_by_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `employee_request_trails`
--
ALTER TABLE `employee_request_trails`
  ADD CONSTRAINT `employee_request_trails_acted_by_user_id_foreign` FOREIGN KEY (`acted_by_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_request_trails_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `employee_requests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `forecast_runs`
--
ALTER TABLE `forecast_runs`
  ADD CONSTRAINT `forecast_runs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD CONSTRAINT `inquiries_approved_company_id_fk` FOREIGN KEY (`approved_company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD CONSTRAINT `job_titles_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `onboarding_tasks`
--
ALTER TABLE `onboarding_tasks`
  ADD CONSTRAINT `onboarding_tasks_onboarding_template_id_foreign` FOREIGN KEY (`onboarding_template_id`) REFERENCES `onboarding_templates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `onboarding_templates`
--
ALTER TABLE `onboarding_templates`
  ADD CONSTRAINT `onboarding_templates_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payroll_periods`
--
ALTER TABLE `payroll_periods`
  ADD CONSTRAINT `payroll_periods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payroll_runs`
--
ALTER TABLE `payroll_runs`
  ADD CONSTRAINT `payroll_runs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payroll_runs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `payroll_runs_payroll_period_id_foreign` FOREIGN KEY (`payroll_period_id`) REFERENCES `payroll_periods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payroll_run_employees`
--
ALTER TABLE `payroll_run_employees`
  ADD CONSTRAINT `payroll_run_employees_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payroll_run_employees_payroll_run_id_foreign` FOREIGN KEY (`payroll_run_id`) REFERENCES `payroll_runs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payroll_run_items`
--
ALTER TABLE `payroll_run_items`
  ADD CONSTRAINT `payroll_run_items_payroll_run_employee_id_foreign` FOREIGN KEY (`payroll_run_employee_id`) REFERENCES `payroll_run_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payslips`
--
ALTER TABLE `payslips`
  ADD CONSTRAINT `payslips_payroll_run_employee_id_foreign` FOREIGN KEY (`payroll_run_employee_id`) REFERENCES `payroll_run_employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plan_modules`
--
ALTER TABLE `plan_modules`
  ADD CONSTRAINT `plan_modules_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `plan_modules_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review_cycles`
--
ALTER TABLE `review_cycles`
  ADD CONSTRAINT `review_cycles_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shifts`
--
ALTER TABLE `shifts`
  ADD CONSTRAINT `shifts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscription_modules`
--
ALTER TABLE `subscription_modules`
  ADD CONSTRAINT `subscription_modules_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscription_modules_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supervisor_departments`
--
ALTER TABLE `supervisor_departments`
  ADD CONSTRAINT `supervisor_departments_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supervisor_departments_supervisor_user_id_foreign` FOREIGN KEY (`supervisor_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
