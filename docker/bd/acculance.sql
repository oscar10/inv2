-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table acculance_v1.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_created_by_foreign` (`created_by`),
  CONSTRAINT `accounts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.accounts: ~0 rows (approximately)
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `bank_name`, `branch_name`, `account_number`, `slug`, `date`, `note`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
	(1, 'Cash', 'Office', 'CASH-0001', 'cash-0001', '2022-09-21', NULL, 1, '2022-09-21 22:40:18', '2022-09-21 22:40:18', 1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.account_transactions
CREATE TABLE IF NOT EXISTS `account_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(12,2) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0 is Debit and 1 is Credit',
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_date` datetime NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_transactions_account_id_foreign` (`account_id`),
  KEY `account_transactions_created_by_foreign` (`created_by`),
  CONSTRAINT `account_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `account_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.account_transactions: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_transactions` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.adjustment_products
CREATE TABLE IF NOT EXISTS `adjustment_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL COMMENT '1 is increment and 0 is decrement',
  `purchase_price` double(12,2) DEFAULT NULL,
  `quantity` double(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `adjustment_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adjustment_products_adjustment_id_foreign` (`adjustment_id`),
  KEY `adjustment_products_product_id_foreign` (`product_id`),
  CONSTRAINT `adjustment_products_adjustment_id_foreign` FOREIGN KEY (`adjustment_id`) REFERENCES `inventory_adjustments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `adjustment_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.adjustment_products: ~0 rows (approximately)
/*!40000 ALTER TABLE `adjustment_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `adjustment_products` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.assets
CREATE TABLE IF NOT EXISTS `assets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_cost` double(12,2) NOT NULL,
  `depreciation` tinyint(1) DEFAULT '0',
  `depreciation_type` tinyint(1) DEFAULT '0',
  `salvage_value` double(12,2) DEFAULT NULL,
  `useful_life` double(5,2) DEFAULT NULL,
  `daily_depreciation` double(12,2) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assets_cat_id_foreign` (`cat_id`),
  KEY `assets_created_by_foreign` (`created_by`),
  CONSTRAINT `assets_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `asset_types` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `assets_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.assets: ~0 rows (approximately)
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.asset_types
CREATE TABLE IF NOT EXISTS `asset_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.asset_types: ~0 rows (approximately)
/*!40000 ALTER TABLE `asset_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `asset_types` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.balance_tansfers
CREATE TABLE IF NOT EXISTS `balance_tansfers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(12,2) NOT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `debit_id` bigint(20) unsigned NOT NULL,
  `credit_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `balance_tansfers_debit_id_foreign` (`debit_id`),
  KEY `balance_tansfers_credit_id_foreign` (`credit_id`),
  KEY `balance_tansfers_created_by_foreign` (`created_by`),
  CONSTRAINT `balance_tansfers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `balance_tansfers_credit_id_foreign` FOREIGN KEY (`credit_id`) REFERENCES `account_transactions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `balance_tansfers_debit_id_foreign` FOREIGN KEY (`debit_id`) REFERENCES `account_transactions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.balance_tansfers: ~0 rows (approximately)
/*!40000 ALTER TABLE `balance_tansfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `balance_tansfers` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.brands: ~0 rows (approximately)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.clients
CREATE TABLE IF NOT EXISTS `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.clients: ~0 rows (approximately)
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` (`id`, `name`, `client_id`, `slug`, `email`, `phone`, `company_name`, `address`, `status`, `image_path`, `created_at`, `updated_at`) VALUES
	(1, 'Walking Customer', '1', 'walking-customer', 'acculance@example.com', '017000000', 'Codeshaper', NULL, 1, NULL, '2022-09-21 22:40:19', '2022-09-21 22:40:19');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.currencies
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.currencies: ~0 rows (approximately)
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` (`id`, `name`, `slug`, `code`, `symbol`, `position`, `note`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'United States Dollar', 'united-states-dollar', 'US Dollar', '$', 'left', 'This is default currency', 1, NULL, NULL);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.departments: ~0 rows (approximately)
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` double(12,2) DEFAULT NULL,
  `commission` double(12,2) DEFAULT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `department_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_department_id_foreign` (`department_id`),
  KEY `employees_user_id_foreign` (`user_id`),
  CONSTRAINT `employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.employees: ~0 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.expenses
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_cat_id` bigint(20) unsigned NOT NULL,
  `transaction_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expenses_sub_cat_id_foreign` (`sub_cat_id`),
  KEY `expenses_transaction_id_foreign` (`transaction_id`),
  KEY `expenses_created_by_foreign` (`created_by`),
  CONSTRAINT `expenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `expenses_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_id`) REFERENCES `expense_sub_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `expenses_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `account_transactions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.expenses: ~0 rows (approximately)
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.expense_categories
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.expense_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `expense_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_categories` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.expense_sub_categories
CREATE TABLE IF NOT EXISTS `expense_sub_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exp_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_sub_categories_exp_id_foreign` (`exp_id`),
  CONSTRAINT `expense_sub_categories_exp_id_foreign` FOREIGN KEY (`exp_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.expense_sub_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `expense_sub_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense_sub_categories` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.general_settings
CREATE TABLE IF NOT EXISTS `general_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.general_settings: ~29 rows (approximately)
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` (`id`, `key`, `display_name`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'company_name', 'Company Name', 'Acculance', NULL, NULL),
	(2, 'company_tagline', 'Company Tagline', 'Ultimate Sales, Inventory, Accounting Management System', NULL, NULL),
	(3, 'email_address', 'Email Address', 'support@codeshape.net', NULL, NULL),
	(4, 'phone_number', 'Phone Number', '0170000000', NULL, NULL),
	(5, 'address', 'Address', 'Ground Floor, Road# 24, House# 339, New DOHS, Mohakhali, Dhaka - 1206, Bangladesh', NULL, NULL),
	(6, 'client_prefix', 'Client Prefix', 'AC', NULL, NULL),
	(7, 'supplier_prefix', 'Supplier Prefix', 'AS', NULL, NULL),
	(8, 'employee_prefix', 'Employee Prefix', 'AE', NULL, NULL),
	(9, 'product_cat_prefix', 'Product Cat Prefix', 'APC', NULL, NULL),
	(10, 'product_sub_cat_prefix', 'Product Sub Cat Prefix', 'APS', NULL, NULL),
	(11, 'product_prefix', 'Product Prefix', 'AP', NULL, NULL),
	(12, 'exp_cat_prefix', 'Exp Cat Prefix', 'AEC', NULL, NULL),
	(13, 'exp_sub_cat_prefix', 'Exp Sub Cat Prefix', 'AES', NULL, NULL),
	(14, 'pur_prefix', 'Pur Prefix', 'APP', NULL, NULL),
	(15, 'pur_return_prefix', 'Pur Return Prefix', 'APR', NULL, NULL),
	(16, 'quotation_prefix', 'Quotation Prefix', 'APQ', NULL, NULL),
	(17, 'invoice_prefix', 'Invoice Prefix', 'AI', NULL, NULL),
	(18, 'invoice_return_prefix', 'Invoice Return Prefix', 'AIR', NULL, NULL),
	(19, 'adjustment_prefix', 'Adjustment Prefix', 'AIA', NULL, NULL),
	(20, 'default_currency', 'Default Currency', '1', NULL, NULL),
	(21, 'default_language', 'Default Language', 'en', NULL, NULL),
	(22, 'logo', 'Logo', 'logo.png', NULL, NULL),
	(23, 'logo_black', 'Logo Black', 'logo-black.png', NULL, NULL),
	(24, 'small_logo', 'Small Logo', 'small-logo.png', NULL, NULL),
	(25, 'favicon', 'Favicon', 'favicon.png', NULL, NULL),
	(26, 'copyright', 'Copyright', 'copyright', NULL, NULL),
	(27, 'default_client_slug', 'Default Client Slug', 'walking-customer', NULL, NULL),
	(28, 'default_account_slug', 'Default Account Slug', 'cash-0001', NULL, NULL),
	(29, 'default_vat_rate_slug', 'Default Vat Rate Slug', 'vat-0', NULL, NULL);
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.inventory_adjustments
CREATE TABLE IF NOT EXISTS `inventory_adjustments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_adjustments_created_by_foreign` (`created_by`),
  CONSTRAINT `inventory_adjustments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.inventory_adjustments: ~0 rows (approximately)
/*!40000 ALTER TABLE `inventory_adjustments` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_adjustments` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport` double(12,2) DEFAULT NULL,
  `discount_type` tinyint(1) DEFAULT NULL COMMENT '0 means fixed and 1 means percentage',
  `discount` double(12,2) DEFAULT NULL,
  `sub_total` double(12,2) DEFAULT NULL,
  `po_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_terms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `is_paid` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `tax_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoices_client_id_foreign` (`client_id`),
  KEY `invoices_tax_id_foreign` (`tax_id`),
  KEY `invoices_created_by_foreign` (`created_by`),
  CONSTRAINT `invoices_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `invoices_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `invoices_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `vat_rates` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.invoices: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.invoice_payments
CREATE TABLE IF NOT EXISTS `invoice_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(12,2) DEFAULT NULL,
  `discount` double(12,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_id` bigint(20) unsigned NOT NULL,
  `transaction_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_payments_invoice_id_foreign` (`invoice_id`),
  KEY `invoice_payments_transaction_id_foreign` (`transaction_id`),
  KEY `invoice_payments_created_by_foreign` (`created_by`),
  CONSTRAINT `invoice_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `invoice_payments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `invoice_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `account_transactions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.invoice_payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoice_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_payments` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.invoice_products
CREATE TABLE IF NOT EXISTS `invoice_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` double(12,2) DEFAULT NULL,
  `purchase_price` double(12,2) DEFAULT NULL,
  `sale_price` double(12,2) DEFAULT NULL,
  `unit_cost` double(12,2) DEFAULT NULL,
  `tax_amount` double(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  KEY `invoice_products_product_id_foreign` (`product_id`),
  CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.invoice_products: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoice_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_products` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.invoice_returns
CREATE TABLE IF NOT EXISTS `invoice_returns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `return_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_return` double(12,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_id` bigint(20) unsigned NOT NULL,
  `transaction_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_returns_invoice_id_foreign` (`invoice_id`),
  KEY `invoice_returns_transaction_id_foreign` (`transaction_id`),
  KEY `invoice_returns_created_by_foreign` (`created_by`),
  CONSTRAINT `invoice_returns_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `invoice_returns_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `invoice_returns_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `account_transactions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.invoice_returns: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoice_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_returns` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.invoice_return_products
CREATE TABLE IF NOT EXISTS `invoice_return_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sale_price` double(12,2) DEFAULT NULL,
  `purchase_price` double(12,2) DEFAULT NULL,
  `quantity` double(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `return_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `invoice_return_products_return_id_foreign` (`return_id`),
  KEY `invoice_return_products_product_id_foreign` (`product_id`),
  CONSTRAINT `invoice_return_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `invoice_return_products_return_id_foreign` FOREIGN KEY (`return_id`) REFERENCES `invoice_returns` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.invoice_return_products: ~0 rows (approximately)
/*!40000 ALTER TABLE `invoice_return_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_return_products` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.loans
CREATE TABLE IF NOT EXISTS `loans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_type` tinyint(1) DEFAULT NULL,
  `interest` double(12,2) DEFAULT NULL,
  `payable` double(12,2) DEFAULT NULL,
  `payment_type` tinyint(1) DEFAULT NULL COMMENT '0 is Daily 1 is Monthly and 2 is Yearly',
  `duration` tinyint(3) unsigned DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `is_paid` tinyint(1) DEFAULT '0',
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `authority_id` bigint(20) unsigned NOT NULL,
  `transaction_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loans_authority_id_foreign` (`authority_id`),
  KEY `loans_transaction_id_foreign` (`transaction_id`),
  KEY `loans_created_by_foreign` (`created_by`),
  CONSTRAINT `loans_authority_id_foreign` FOREIGN KEY (`authority_id`) REFERENCES `loan_authorities` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `loans_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `loans_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `account_transactions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.loans: ~0 rows (approximately)
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.loan_authorities
CREATE TABLE IF NOT EXISTS `loan_authorities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_limit` decimal(14,2) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.loan_authorities: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_authorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_authorities` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.loan_payments
CREATE TABLE IF NOT EXISTS `loan_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(12,2) DEFAULT NULL,
  `interest` double(12,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `loan_id` bigint(20) unsigned NOT NULL,
  `transaction_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `loan_payments_loan_id_foreign` (`loan_id`),
  KEY `loan_payments_transaction_id_foreign` (`transaction_id`),
  KEY `loan_payments_created_by_foreign` (`created_by`),
  CONSTRAINT `loan_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `loan_payments_loan_id_foreign` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `loan_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `account_transactions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.loan_payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `loan_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_payments` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.migrations: ~51 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2017_12_07_122845_create_oauth_providers_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2021_02_13_095716_create_roles_table', 1),
	(6, '2021_02_13_102015_create_permissions_table', 1),
	(7, '2021_02_13_104235_create_user_permission_table', 1),
	(8, '2021_02_13_104245_create_user_role_table', 1),
	(9, '2021_02_13_104407_create_role_permission_table', 1),
	(10, '2021_02_13_104412_create_currencies_table', 1),
	(11, '2021_02_13_104414_create_payment_methods_table', 1),
	(12, '2021_02_13_104418_create_units_table', 1),
	(13, '2021_02_13_104420_create_vat_rates_table', 1),
	(14, '2021_02_13_104424_create_general_settings_table', 1),
	(15, '2021_02_13_104428_create_brands_table', 1),
	(16, '2021_02_13_104430_create_product_categories_table', 1),
	(17, '2021_02_13_104432_create_product_sub_categories_table', 1),
	(18, '2021_02_13_104434_create_products_table', 1),
	(19, '2021_02_13_104437_create_accounts_table', 1),
	(20, '2021_02_13_104439_create_account_transactions_table', 1),
	(21, '2021_02_13_104440_create_balance_tansfers_table', 1),
	(22, '2021_02_13_104442_create_asset_types_table', 1),
	(23, '2021_02_13_104445_create_assets_table', 1),
	(24, '2021_02_13_104480_create_expense_categories_table', 1),
	(25, '2021_02_13_104485_create_expense_sub_categories_table', 1),
	(26, '2021_02_13_104485_create_expenses_table', 1),
	(27, '2021_02_13_104490_create_clients_table', 1),
	(28, '2021_02_13_104495_create_suppliers_table', 1),
	(29, '2021_03_03_080732_create_purchases_table', 1),
	(30, '2021_03_03_080734_create_purchase_products_table', 1),
	(31, '2021_03_03_080736_create_purchase_payments_table', 1),
	(32, '2021_03_03_080750_create_purchase_returns_table', 1),
	(33, '2021_03_03_080760_create_purchase_return_products_table', 1),
	(34, '2021_03_10_085743_create_loan_authorities_table', 1),
	(35, '2021_03_10_085748_create_loans_table', 1),
	(36, '2021_03_10_085751_create_loan_payments_table', 1),
	(37, '2021_03_10_191817_create_departments_table', 1),
	(38, '2021_05_02_170213_create_employees_table', 1),
	(39, '2021_05_03_120828_create_salary_increments_table', 1),
	(40, '2021_05_05_145647_create_payrolls_table', 1),
	(41, '2021_05_23_035457_create_quotations_table', 1),
	(42, '2021_05_23_170721_create_quotation_products_table', 1),
	(43, '2021_05_23_193319_create_invoices_table', 1),
	(44, '2021_05_23_193527_create_invoice_products_table', 1),
	(45, '2021_05_23_193535_create_invoice_payments_table', 1),
	(46, '2021_05_24_114000_create_invoice_returns_table', 1),
	(47, '2021_05_25_114159_create_invoice_return_products_table', 1),
	(48, '2021_07_29_132545_create_inventory_adjustments_table', 1),
	(49, '2021_07_29_133109_create_adjustment_products_table', 1),
	(50, '2022_01_02_164016_create_non_invoice_payments_table', 1),
	(51, '2022_01_02_164415_create_non_purchase_payments_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.non_invoice_payments
CREATE TABLE IF NOT EXISTS `non_invoice_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(12,2) DEFAULT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0 is Debit and 1 is Credit',
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `transaction_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `non_invoice_payments_client_id_foreign` (`client_id`),
  KEY `non_invoice_payments_transaction_id_foreign` (`transaction_id`),
  KEY `non_invoice_payments_created_by_foreign` (`created_by`),
  CONSTRAINT `non_invoice_payments_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `non_invoice_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `non_invoice_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `account_transactions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.non_invoice_payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `non_invoice_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `non_invoice_payments` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.non_purchase_payments
CREATE TABLE IF NOT EXISTS `non_purchase_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(12,2) DEFAULT NULL,
  `type` tinyint(1) NOT NULL COMMENT '0 is Debit and 1 is Credit',
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_id` bigint(20) unsigned NOT NULL,
  `transaction_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `non_purchase_payments_supplier_id_foreign` (`supplier_id`),
  KEY `non_purchase_payments_transaction_id_foreign` (`transaction_id`),
  KEY `non_purchase_payments_created_by_foreign` (`created_by`),
  CONSTRAINT `non_purchase_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `non_purchase_payments_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `non_purchase_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `account_transactions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.non_purchase_payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `non_purchase_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `non_purchase_payments` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.oauth_providers
CREATE TABLE IF NOT EXISTS `oauth_providers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_providers_user_id_foreign` (`user_id`),
  KEY `oauth_providers_provider_user_id_index` (`provider_user_id`),
  CONSTRAINT `oauth_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.oauth_providers: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_providers` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.payment_methods
CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.payment_methods: ~0 rows (approximately)
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.payrolls
CREATE TABLE IF NOT EXISTS `payrolls` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deduction_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deduction_amount` double(12,2) DEFAULT NULL,
  `mobile_bill` double(12,2) DEFAULT NULL,
  `food_bill` double(12,2) DEFAULT NULL,
  `bonus` double(12,2) DEFAULT NULL,
  `commission` double(12,2) DEFAULT NULL,
  `advance` double(12,2) DEFAULT NULL,
  `festival_bonus` double(12,2) DEFAULT NULL,
  `travel_allowance` double(12,2) DEFAULT NULL,
  `others` double(12,2) DEFAULT NULL,
  `salary_date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` bigint(20) unsigned NOT NULL,
  `transaction_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payrolls_employee_id_foreign` (`employee_id`),
  KEY `payrolls_transaction_id_foreign` (`transaction_id`),
  KEY `payrolls_created_by_foreign` (`created_by`),
  CONSTRAINT `payrolls_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `payrolls_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `payrolls_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `account_transactions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.payrolls: ~0 rows (approximately)
/*!40000 ALTER TABLE `payrolls` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrolls` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.permissions: ~171 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Create', 'Expense Category Management', 'expense-category-create', NULL, NULL),
	(2, 'List', 'Expense Category Management', 'expense-category-list', NULL, NULL),
	(3, 'Edit', 'Expense Category Management', 'expense-category-edit', NULL, NULL),
	(4, 'Delete', 'Expense Category Management', 'expense-category-delete', NULL, NULL),
	(5, 'Create', 'Expense Subcategory Management', 'expense-sub-category-create', NULL, NULL),
	(6, 'List', 'Expense Subcategory Management', 'expense-sub-category-list', NULL, NULL),
	(7, 'Edit', 'Expense Subcategory Management', 'expense-sub-category-edit', NULL, NULL),
	(8, 'Delete', 'Expense Subcategory Management', 'expense-sub-category-delete', NULL, NULL),
	(9, 'Create', 'Expense Management', 'expense-create', NULL, NULL),
	(10, 'List', 'Expense Management', 'expense-list', NULL, NULL),
	(11, 'Edit', 'Expense Management', 'expense-edit', NULL, NULL),
	(12, 'View', 'Expense Management', 'expense-view', NULL, NULL),
	(13, 'Expense Delete', 'Expense Management', 'expense-delete', NULL, NULL),
	(14, 'Create', 'Purchase Management', 'purchase-create', NULL, NULL),
	(15, 'List', 'Purchase Management', 'purchase-list', NULL, NULL),
	(16, 'Edit', 'Purchase Management', 'purchase-edit', NULL, NULL),
	(17, 'View', 'Purchase Management', 'purchase-view', NULL, NULL),
	(18, 'Delete', 'Purchase Management', 'purchase-delete', NULL, NULL),
	(19, 'Create', 'Purchase Return Management', 'purchase-return-create', NULL, NULL),
	(20, 'List', 'Purchase Return Management', 'purchase-return-list', NULL, NULL),
	(21, 'Edit', 'Purchase Return Management', 'purchase-return-edit', NULL, NULL),
	(22, 'View', 'Purchase Return Management', 'purchase-return-view', NULL, NULL),
	(23, 'Delete', 'Purchase Return Management', 'purchase-return-delete', NULL, NULL),
	(24, 'Create', 'Quotation Management', 'quotation-create', NULL, NULL),
	(25, 'List', 'Quotation Management', 'quotation-list', NULL, NULL),
	(26, 'Edit', 'Quotation Management', 'quotation-edit', NULL, NULL),
	(27, 'View', 'Quotation Management', 'quotation-view', NULL, NULL),
	(28, 'Delete', 'Quotation Management', 'quotation-delete', NULL, NULL),
	(29, 'Quotation to Invoice', 'Quotation Management', 'quotation-to-invoice', NULL, NULL),
	(30, 'Create', 'Invoice Management', 'invoice-create', NULL, NULL),
	(31, 'List', 'Invoice Management', 'invoice-list', NULL, NULL),
	(32, 'Edit', 'Invoice Management', 'invoice-edit', NULL, NULL),
	(33, 'View', 'Invoice Management', 'invoice-view', NULL, NULL),
	(34, 'Delete', 'Invoice Management', 'invoice-delete', NULL, NULL),
	(35, 'Create', 'Invoice Return Management', 'invoice-return-create', NULL, NULL),
	(36, 'List', 'Invoice Return Management', 'invoice-return-list', NULL, NULL),
	(37, 'Edit', 'Invoice Return Management', 'invoice-return-edit', NULL, NULL),
	(38, 'View', 'Invoice Return Management', 'invoice-return-view', NULL, NULL),
	(39, 'Delete', 'Invoice Return Management', 'invoice-return-delete', NULL, NULL),
	(40, 'Create', 'Account Management', 'account-create', NULL, NULL),
	(41, 'List', 'Account Management', 'account-list', NULL, NULL),
	(42, 'Edit', 'Account Management', 'account-edit', NULL, NULL),
	(43, 'View', 'Account Management', 'account-view', NULL, NULL),
	(44, 'Delete', 'Account Management', 'account-delete', NULL, NULL),
	(45, 'Create', 'Account Balance Management', 'account-balance-create', NULL, NULL),
	(46, 'List', 'Account Balance Management', 'account-balance-list', NULL, NULL),
	(47, 'Edit', 'Account Balance Management', 'account-balance-edit', NULL, NULL),
	(48, 'Delete', 'Account Balance Management', 'account-balance-delete', NULL, NULL),
	(49, 'Create', 'Balance Transfer Management', 'account-transfer-balance-create', NULL, NULL),
	(50, 'List', 'Balance Transfer Management', 'account-transfer-balance-list', NULL, NULL),
	(51, 'Edit', 'Balance Transfer Management', 'account-transfer-balance-edit', NULL, NULL),
	(52, 'View', 'Balance Transfer Management', 'account-transfer-balance-view', NULL, NULL),
	(53, 'Delete', 'Balance Transfer Management', 'account-transfer-balance-delete', NULL, NULL),
	(54, 'Create', 'Non Purchase Payment Management', 'non-purchase-payment-create', NULL, NULL),
	(55, 'List', 'Non Purchase Payment Management', 'non-purchase-payment-list', NULL, NULL),
	(56, 'Edit', 'Non Purchase Payment Management', 'non-purchase-payment-edit', NULL, NULL),
	(57, 'View', 'Non Purchase Payment Management', 'non-purchase-payment-view', NULL, NULL),
	(58, 'Delete', 'Non Purchase Payment Management', 'non-purchase-payment-delete', NULL, NULL),
	(59, 'Create', 'Purchase Payment Management', 'purchase-payment-create', NULL, NULL),
	(60, 'List', 'Purchase Payment Management', 'purchase-payment-list', NULL, NULL),
	(61, 'Edit', 'Purchase Payment Management', 'purchase-payment-edit', NULL, NULL),
	(62, 'View', 'Purchase Payment Management', 'purchase-payment-view', NULL, NULL),
	(63, 'Delete', 'Purchase Payment Management', 'purchase-payment-delete', NULL, NULL),
	(64, 'Create', 'Non Invoice Payment Management', 'non-invoice-payment-create', NULL, NULL),
	(65, 'List', 'Non Invoice Payment Management', 'non-invoice-payment-list', NULL, NULL),
	(66, 'Edit', 'Non Invoice Payment Management', 'non-invoice-payment-edit', NULL, NULL),
	(67, 'View', 'Non Invoice Payment Management', 'non-invoice-payment-view', NULL, NULL),
	(68, 'Delete', 'Non Invoice Payment Management', 'non-invoice-payment-delete', NULL, NULL),
	(69, 'Create', 'Invoice Payment Management', 'invoice-payment-create', NULL, NULL),
	(70, 'List', 'Invoice Payment Management', 'invoice-payment-list', NULL, NULL),
	(71, 'Edit', 'Invoice Payment Management', 'invoice-payment-edit', NULL, NULL),
	(72, 'View', 'Invoice Payment Management', 'invoice-payment-view', NULL, NULL),
	(73, 'Delete', 'Invoice Payment Management', 'invoice-payment-delete', NULL, NULL),
	(74, 'Create', 'Loan Authority Management', 'loan-authority-create', NULL, NULL),
	(75, 'List', 'Loan Authority Management', 'loan-authority-list', NULL, NULL),
	(76, 'Edit', 'Loan Authority Management', 'loan-authority-edit', NULL, NULL),
	(77, 'View', 'Loan Authority Management', 'loan-authority-view', NULL, NULL),
	(78, 'Delete', 'Loan Authority Management', 'loan-authority-delete', NULL, NULL),
	(79, 'Create', 'Loan Management', 'loan-create', NULL, NULL),
	(80, 'List', 'Loan Management', 'loan-list', NULL, NULL),
	(81, 'Edit', 'Loan Management', 'loan-edit', NULL, NULL),
	(82, 'View', 'Loan Management', 'loan-view', NULL, NULL),
	(83, 'Delete', 'Loan Management', 'loan-delete', NULL, NULL),
	(84, 'Create', 'Loan Payment Management', 'loan-payment-create', NULL, NULL),
	(85, 'List', 'Loan Payment Management', 'loan-payment-list', NULL, NULL),
	(86, 'Edit', 'Loan Payment Management', 'loan-payment-edit', NULL, NULL),
	(87, 'View', 'Loan Payment Management', 'loan-payment-view', NULL, NULL),
	(88, 'Delete', 'Loan Payment Management', 'loan-payment-delete', NULL, NULL),
	(89, 'Create', 'Asset Type Management', 'asset-type-create', NULL, NULL),
	(90, 'List', 'Asset Type Management', 'asset-type-list', NULL, NULL),
	(91, 'Edit', 'Asset Type Management', 'asset-type-edit', NULL, NULL),
	(92, 'Delete', 'Asset Type Management', 'asset-type-delete', NULL, NULL),
	(93, 'Create', 'Asset Management', 'asset-create', NULL, NULL),
	(94, 'List', 'Asset Management', 'asset-list', NULL, NULL),
	(95, 'Edit', 'Asset Management', 'asset-edit', NULL, NULL),
	(96, 'View', 'Asset Management', 'asset-view', NULL, NULL),
	(97, 'Delete', 'Asset Management', 'asset-delete', NULL, NULL),
	(98, 'Create', 'Payroll Management', 'payroll-create', NULL, NULL),
	(99, 'List', 'Payroll Management', 'payroll-list', NULL, NULL),
	(100, 'Edit', 'Payroll Management', 'payroll-edit', NULL, NULL),
	(101, 'View', 'Payroll Management', 'payroll-view', NULL, NULL),
	(102, 'Delete', 'Payroll Management', 'payroll-delete', NULL, NULL),
	(103, 'Create', 'Client Management', 'client-create', NULL, NULL),
	(104, 'List', 'Client Management', 'client-list', NULL, NULL),
	(105, 'Edit', 'Client Management', 'client-edit', NULL, NULL),
	(106, 'View', 'Client Management', 'client-view', NULL, NULL),
	(107, 'Delete', 'Client Management', 'client-delete', NULL, NULL),
	(108, 'Create', 'Supplier Management', 'supplier-create', NULL, NULL),
	(109, 'List', 'Supplier Management', 'supplier-list', NULL, NULL),
	(110, 'Edit', 'Supplier Management', 'supplier-edit', NULL, NULL),
	(111, 'View', 'Supplier Management', 'supplier-view', NULL, NULL),
	(112, 'Delete', 'Supplier Management', 'supplier-delete', NULL, NULL),
	(113, 'Create', 'Department Management', 'department-create', NULL, NULL),
	(114, 'List', 'Department Management', 'department-list', NULL, NULL),
	(115, 'Edit', 'Department Management', 'department-edit', NULL, NULL),
	(116, 'Delete', 'Department Management', 'department-delete', NULL, NULL),
	(117, 'Create', 'Employee Management', 'employee-create', NULL, NULL),
	(118, 'List', 'Employee Management', 'employee-list', NULL, NULL),
	(119, 'Edit', 'Employee Management', 'employee-edit', NULL, NULL),
	(120, 'View', 'Employee Management', 'employee-view', NULL, NULL),
	(121, 'Delete', 'Employee Management', 'employee-delete', NULL, NULL),
	(122, 'Create', 'Increment Management', 'increment-create', NULL, NULL),
	(123, 'List', 'Increment Management', 'increment-list', NULL, NULL),
	(124, 'Edit', 'Increment Management', 'increment-edit', NULL, NULL),
	(125, 'View', 'Increment Management', 'increment-view', NULL, NULL),
	(126, 'Delete', 'Increment Management', 'increment-delete', NULL, NULL),
	(127, 'Create', 'Product Category Management', 'product-category-create', NULL, NULL),
	(128, 'List', 'Product Category Management', 'product-category-list', NULL, NULL),
	(129, 'Edit', 'Product Category Management', 'product-category-edit', NULL, NULL),
	(130, 'Delete', 'Product Category Management', 'product-category-delete', NULL, NULL),
	(131, 'Create', 'Product Subcategory Management', 'product-sub-category-create', NULL, NULL),
	(132, 'List', 'Product Subcategory Management', 'product-sub-category-list', NULL, NULL),
	(133, 'Edit', 'Product Subcategory Management', 'product-sub-category-edit', NULL, NULL),
	(134, 'Delete', 'Product Subcategory Management', 'product-sub-category-delete', NULL, NULL),
	(135, 'Create', 'Product Management', 'product-create', NULL, NULL),
	(136, 'List', 'Product Management', 'product-list', NULL, NULL),
	(137, 'Edit', 'Product Management', 'product-edit', NULL, NULL),
	(138, 'View', 'Product Management', 'product-view', NULL, NULL),
	(139, 'Delete', 'Product Management', 'product-delete', NULL, NULL),
	(140, 'History', 'Inventory Management', 'inventory-history', NULL, NULL),
	(141, 'View', 'Inventory Management', 'inventory-view', NULL, NULL),
	(142, 'Create', 'Inventory Adjustment Management', 'adjustment-create', NULL, NULL),
	(143, 'List', 'Inventory Adjustment Management', 'adjustment-list', NULL, NULL),
	(144, 'Edit', 'Inventory Adjustment Management', 'adjustment-edit', NULL, NULL),
	(145, 'View', 'Inventory Adjustment Management', 'adjustment-view', NULL, NULL),
	(146, 'Delete', 'Inventory Adjustment Management', 'adjustment-delete', NULL, NULL),
	(147, 'Print Barcode', 'Extra Management', 'print-barcode', NULL, NULL),
	(148, 'Transaction History', 'Extra Management', 'transaction-history', NULL, NULL),
	(149, 'Database Backup', 'Extra Management', 'database-backup', NULL, NULL),
	(150, 'Update Profile', 'Extra Management', 'update-profile', NULL, NULL),
	(151, 'Balance Sheet', 'Report View', 'balance-sheet', NULL, NULL),
	(152, 'Summary Report', 'Report View', 'summary-report', NULL, NULL),
	(153, 'Profit/Loss', 'Report View', 'profit-loss', NULL, NULL),
	(154, 'Expense Report', 'Report View', 'expense-report', NULL, NULL),
	(155, 'Item Report', 'Report View', 'item-report', NULL, NULL),
	(156, 'Inventory Report', 'Report View', 'inventory-report', NULL, NULL),
	(157, 'General settings', 'Setup', 'general-settings', NULL, NULL),
	(158, 'Permissions management', 'Setup', 'user-permission', NULL, NULL),
	(159, 'Roles Management', 'Setup', 'user-role', NULL, NULL),
	(160, 'Units management', 'Setup', 'units-management', NULL, NULL),
	(161, 'Currencies Management', 'Setup', 'currencies-management', NULL, NULL),
	(162, 'Brands Management', 'Setup', 'brands-management', NULL, NULL),
	(163, 'Payment Method Management', 'Setup', 'payment-method-management', NULL, NULL),
	(164, 'VAT Rate Management', 'Setup', 'vat-rate-management', NULL, NULL),
	(165, 'Account Summery', 'Dashboard View', 'account-summery', NULL, NULL),
	(166, 'Top Selling Products', 'Dashboard View', 'top-selling-products', NULL, NULL),
	(167, 'Recent Activities', 'Dashboard View', 'recent-activities', NULL, NULL),
	(168, 'Payment Sent vs Payment Received', 'Dashboard View', 'payment-sent-vs-payment-received', NULL, NULL),
	(169, 'Top Clients', 'Dashboard View', 'top-clients', NULL, NULL),
	(170, 'Stock Alert', 'Dashboard View', 'stock-alert', NULL, NULL),
	(171, 'Sales vs Purchases', 'Dashboard View', 'sales-vs-purchases', NULL, NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` double(12,2) DEFAULT NULL,
  `regular_price` double(12,2) DEFAULT NULL,
  `discount` double(5,2) DEFAULT NULL,
  `inventory_count` double(12,2) DEFAULT NULL,
  `alert_qty` tinyint(3) unsigned DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_cat_id` bigint(20) unsigned NOT NULL,
  `brand_id` bigint(20) unsigned DEFAULT NULL,
  `unit_id` bigint(20) unsigned DEFAULT NULL,
  `tax_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_sub_cat_id_foreign` (`sub_cat_id`),
  KEY `products_brand_id_foreign` (`brand_id`),
  KEY `products_unit_id_foreign` (`unit_id`),
  KEY `products_tax_id_foreign` (`tax_id`),
  CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `products_sub_cat_id_foreign` FOREIGN KEY (`sub_cat_id`) REFERENCES `product_sub_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `products_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `vat_rates` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.products: ~0 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.product_categories
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.product_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.product_sub_categories
CREATE TABLE IF NOT EXISTS `product_sub_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_sub_categories_cat_id_foreign` (`cat_id`),
  CONSTRAINT `product_sub_categories_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.product_sub_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_sub_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_sub_categories` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(12,2) DEFAULT NULL,
  `transport` double(12,2) DEFAULT NULL,
  `sub_total` double(12,2) DEFAULT NULL,
  `po_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_terms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_date` date DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `is_paid` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_id` bigint(20) unsigned NOT NULL,
  `tax_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_supplier_id_foreign` (`supplier_id`),
  KEY `purchases_tax_id_foreign` (`tax_id`),
  KEY `purchases_created_by_foreign` (`created_by`),
  CONSTRAINT `purchases_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `purchases_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `vat_rates` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.purchases: ~0 rows (approximately)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.purchase_payments
CREATE TABLE IF NOT EXISTS `purchase_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(12,2) DEFAULT NULL,
  `discount` double(12,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `purchase_id` bigint(20) unsigned NOT NULL,
  `transaction_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_payments_purchase_id_foreign` (`purchase_id`),
  KEY `purchase_payments_transaction_id_foreign` (`transaction_id`),
  KEY `purchase_payments_created_by_foreign` (`created_by`),
  CONSTRAINT `purchase_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `purchase_payments_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `purchase_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `account_transactions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.purchase_payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `purchase_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_payments` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.purchase_products
CREATE TABLE IF NOT EXISTS `purchase_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` double(12,2) DEFAULT NULL,
  `purchase_price` double(12,2) DEFAULT NULL,
  `unit_cost` double(12,2) DEFAULT NULL,
  `tax_amount` double(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `purchase_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_products_purchase_id_foreign` (`purchase_id`),
  KEY `purchase_products_product_id_foreign` (`product_id`),
  CONSTRAINT `purchase_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `purchase_products_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.purchase_products: ~0 rows (approximately)
/*!40000 ALTER TABLE `purchase_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_products` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.purchase_returns
CREATE TABLE IF NOT EXISTS `purchase_returns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) DEFAULT NULL,
  `total_return` double(12,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `purchase_id` bigint(20) unsigned NOT NULL,
  `transaction_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_returns_purchase_id_foreign` (`purchase_id`),
  KEY `purchase_returns_transaction_id_foreign` (`transaction_id`),
  KEY `purchase_returns_created_by_foreign` (`created_by`),
  CONSTRAINT `purchase_returns_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `purchase_returns_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `purchase_returns_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `account_transactions` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.purchase_returns: ~0 rows (approximately)
/*!40000 ALTER TABLE `purchase_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_returns` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.purchase_return_products
CREATE TABLE IF NOT EXISTS `purchase_return_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_price` double(12,2) DEFAULT NULL,
  `quantity` double(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `return_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_return_products_return_id_foreign` (`return_id`),
  KEY `purchase_return_products_product_id_foreign` (`product_id`),
  CONSTRAINT `purchase_return_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `purchase_return_products_return_id_foreign` FOREIGN KEY (`return_id`) REFERENCES `purchase_returns` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.purchase_return_products: ~0 rows (approximately)
/*!40000 ALTER TABLE `purchase_return_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_return_products` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.quotations
CREATE TABLE IF NOT EXISTS `quotations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transport` double(12,2) DEFAULT NULL,
  `discount_type` tinyint(1) DEFAULT NULL COMMENT '0 means fixed and 1 means percentage',
  `discount` double(12,2) DEFAULT NULL,
  `total_tax` double(12,2) DEFAULT NULL,
  `sub_total` double(12,2) DEFAULT NULL,
  `po_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_terms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `tax_id` bigint(20) unsigned DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quotations_client_id_foreign` (`client_id`),
  KEY `quotations_tax_id_foreign` (`tax_id`),
  KEY `quotations_created_by_foreign` (`created_by`),
  CONSTRAINT `quotations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `quotations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `quotations_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `vat_rates` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.quotations: ~0 rows (approximately)
/*!40000 ALTER TABLE `quotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotations` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.quotation_products
CREATE TABLE IF NOT EXISTS `quotation_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` double(12,2) DEFAULT NULL,
  `purchase_price` double(12,2) DEFAULT NULL,
  `sale_price` double(12,2) DEFAULT NULL,
  `unit_cost` double(12,2) DEFAULT NULL,
  `tax_amount` double(12,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quotation_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quotation_products_quotation_id_foreign` (`quotation_id`),
  KEY `quotation_products_product_id_foreign` (`product_id`),
  CONSTRAINT `quotation_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `quotation_products_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.quotation_products: ~0 rows (approximately)
/*!40000 ALTER TABLE `quotation_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `quotation_products` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Developer', 'developer', NULL, NULL),
	(2, 'Super Admin', 'super-admin', NULL, NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.role_permission
CREATE TABLE IF NOT EXISTS `role_permission` (
  `role_id` bigint(20) unsigned NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  KEY `role_permission_role_id_foreign` (`role_id`),
  KEY `role_permission_permission_id_foreign` (`permission_id`),
  CONSTRAINT `role_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `role_permission_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.role_permission: ~342 rows (approximately)
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` (`role_id`, `permission_id`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 18),
	(1, 19),
	(1, 20),
	(1, 21),
	(1, 22),
	(1, 23),
	(1, 24),
	(1, 25),
	(1, 26),
	(1, 27),
	(1, 28),
	(1, 29),
	(1, 30),
	(1, 31),
	(1, 32),
	(1, 33),
	(1, 34),
	(1, 35),
	(1, 36),
	(1, 37),
	(1, 38),
	(1, 39),
	(1, 40),
	(1, 41),
	(1, 42),
	(1, 43),
	(1, 44),
	(1, 45),
	(1, 46),
	(1, 47),
	(1, 48),
	(1, 49),
	(1, 50),
	(1, 51),
	(1, 52),
	(1, 53),
	(1, 54),
	(1, 55),
	(1, 56),
	(1, 57),
	(1, 58),
	(1, 59),
	(1, 60),
	(1, 61),
	(1, 62),
	(1, 63),
	(1, 64),
	(1, 65),
	(1, 66),
	(1, 67),
	(1, 68),
	(1, 69),
	(1, 70),
	(1, 71),
	(1, 72),
	(1, 73),
	(1, 74),
	(1, 75),
	(1, 76),
	(1, 77),
	(1, 78),
	(1, 79),
	(1, 80),
	(1, 81),
	(1, 82),
	(1, 83),
	(1, 84),
	(1, 85),
	(1, 86),
	(1, 87),
	(1, 88),
	(1, 89),
	(1, 90),
	(1, 91),
	(1, 92),
	(1, 93),
	(1, 94),
	(1, 95),
	(1, 96),
	(1, 97),
	(1, 98),
	(1, 99),
	(1, 100),
	(1, 101),
	(1, 102),
	(1, 103),
	(1, 104),
	(1, 105),
	(1, 106),
	(1, 107),
	(1, 108),
	(1, 109),
	(1, 110),
	(1, 111),
	(1, 112),
	(1, 113),
	(1, 114),
	(1, 115),
	(1, 116),
	(1, 117),
	(1, 118),
	(1, 119),
	(1, 120),
	(1, 121),
	(1, 122),
	(1, 123),
	(1, 124),
	(1, 125),
	(1, 126),
	(1, 127),
	(1, 128),
	(1, 129),
	(1, 130),
	(1, 131),
	(1, 132),
	(1, 133),
	(1, 134),
	(1, 135),
	(1, 136),
	(1, 137),
	(1, 138),
	(1, 139),
	(1, 140),
	(1, 141),
	(1, 142),
	(1, 143),
	(1, 144),
	(1, 145),
	(1, 146),
	(1, 147),
	(1, 148),
	(1, 149),
	(1, 150),
	(1, 151),
	(1, 152),
	(1, 153),
	(1, 154),
	(1, 155),
	(1, 156),
	(1, 157),
	(1, 158),
	(1, 159),
	(1, 160),
	(1, 161),
	(1, 162),
	(1, 163),
	(1, 164),
	(1, 165),
	(1, 166),
	(1, 167),
	(1, 168),
	(1, 169),
	(1, 170),
	(1, 171),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(2, 7),
	(2, 8),
	(2, 9),
	(2, 10),
	(2, 11),
	(2, 12),
	(2, 13),
	(2, 14),
	(2, 15),
	(2, 16),
	(2, 17),
	(2, 18),
	(2, 19),
	(2, 20),
	(2, 21),
	(2, 22),
	(2, 23),
	(2, 24),
	(2, 25),
	(2, 26),
	(2, 27),
	(2, 28),
	(2, 29),
	(2, 30),
	(2, 31),
	(2, 32),
	(2, 33),
	(2, 34),
	(2, 35),
	(2, 36),
	(2, 37),
	(2, 38),
	(2, 39),
	(2, 40),
	(2, 41),
	(2, 42),
	(2, 43),
	(2, 44),
	(2, 45),
	(2, 46),
	(2, 47),
	(2, 48),
	(2, 49),
	(2, 50),
	(2, 51),
	(2, 52),
	(2, 53),
	(2, 54),
	(2, 55),
	(2, 56),
	(2, 57),
	(2, 58),
	(2, 59),
	(2, 60),
	(2, 61),
	(2, 62),
	(2, 63),
	(2, 64),
	(2, 65),
	(2, 66),
	(2, 67),
	(2, 68),
	(2, 69),
	(2, 70),
	(2, 71),
	(2, 72),
	(2, 73),
	(2, 74),
	(2, 75),
	(2, 76),
	(2, 77),
	(2, 78),
	(2, 79),
	(2, 80),
	(2, 81),
	(2, 82),
	(2, 83),
	(2, 84),
	(2, 85),
	(2, 86),
	(2, 87),
	(2, 88),
	(2, 89),
	(2, 90),
	(2, 91),
	(2, 92),
	(2, 93),
	(2, 94),
	(2, 95),
	(2, 96),
	(2, 97),
	(2, 98),
	(2, 99),
	(2, 100),
	(2, 101),
	(2, 102),
	(2, 103),
	(2, 104),
	(2, 105),
	(2, 106),
	(2, 107),
	(2, 108),
	(2, 109),
	(2, 110),
	(2, 111),
	(2, 112),
	(2, 113),
	(2, 114),
	(2, 115),
	(2, 116),
	(2, 117),
	(2, 118),
	(2, 119),
	(2, 120),
	(2, 121),
	(2, 122),
	(2, 123),
	(2, 124),
	(2, 125),
	(2, 126),
	(2, 127),
	(2, 128),
	(2, 129),
	(2, 130),
	(2, 131),
	(2, 132),
	(2, 133),
	(2, 134),
	(2, 135),
	(2, 136),
	(2, 137),
	(2, 138),
	(2, 139),
	(2, 140),
	(2, 141),
	(2, 142),
	(2, 143),
	(2, 144),
	(2, 145),
	(2, 146),
	(2, 147),
	(2, 148),
	(2, 149),
	(2, 150),
	(2, 151),
	(2, 152),
	(2, 153),
	(2, 154),
	(2, 155),
	(2, 156),
	(2, 157),
	(2, 158),
	(2, 159),
	(2, 160),
	(2, 161),
	(2, 162),
	(2, 163),
	(2, 164),
	(2, 165),
	(2, 166),
	(2, 167),
	(2, 168),
	(2, 169),
	(2, 170),
	(2, 171);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.salary_increments
CREATE TABLE IF NOT EXISTS `salary_increments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `increment_amount` double(12,2) DEFAULT NULL,
  `increment_date` date DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `empolyee_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `salary_increments_empolyee_id_foreign` (`empolyee_id`),
  KEY `salary_increments_created_by_foreign` (`created_by`),
  CONSTRAINT `salary_increments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `salary_increments_empolyee_id_foreign` FOREIGN KEY (`empolyee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.salary_increments: ~0 rows (approximately)
/*!40000 ALTER TABLE `salary_increments` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_increments` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.suppliers
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.suppliers: ~0 rows (approximately)
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.units
CREATE TABLE IF NOT EXISTS `units` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.units: ~0 rows (approximately)
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
/*!40000 ALTER TABLE `units` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_role` tinyint(4) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `account_role`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'Super Admin', 'superadmin@acculance.com', '2022-09-21 22:40:18', '$2y$10$eVwt98ICYJp6N1a434TsF.qyiidZZgnHFKKm7EtVn6bGLGRrALyBy', NULL, 1, 1, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.user_permission
CREATE TABLE IF NOT EXISTS `user_permission` (
  `user_id` bigint(20) unsigned NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  KEY `user_permission_user_id_foreign` (`user_id`),
  KEY `user_permission_permission_id_foreign` (`permission_id`),
  CONSTRAINT `user_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_permission_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.user_permission: ~171 rows (approximately)
/*!40000 ALTER TABLE `user_permission` DISABLE KEYS */;
INSERT INTO `user_permission` (`user_id`, `permission_id`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 18),
	(1, 19),
	(1, 20),
	(1, 21),
	(1, 22),
	(1, 23),
	(1, 24),
	(1, 25),
	(1, 26),
	(1, 27),
	(1, 28),
	(1, 29),
	(1, 30),
	(1, 31),
	(1, 32),
	(1, 33),
	(1, 34),
	(1, 35),
	(1, 36),
	(1, 37),
	(1, 38),
	(1, 39),
	(1, 40),
	(1, 41),
	(1, 42),
	(1, 43),
	(1, 44),
	(1, 45),
	(1, 46),
	(1, 47),
	(1, 48),
	(1, 49),
	(1, 50),
	(1, 51),
	(1, 52),
	(1, 53),
	(1, 54),
	(1, 55),
	(1, 56),
	(1, 57),
	(1, 58),
	(1, 59),
	(1, 60),
	(1, 61),
	(1, 62),
	(1, 63),
	(1, 64),
	(1, 65),
	(1, 66),
	(1, 67),
	(1, 68),
	(1, 69),
	(1, 70),
	(1, 71),
	(1, 72),
	(1, 73),
	(1, 74),
	(1, 75),
	(1, 76),
	(1, 77),
	(1, 78),
	(1, 79),
	(1, 80),
	(1, 81),
	(1, 82),
	(1, 83),
	(1, 84),
	(1, 85),
	(1, 86),
	(1, 87),
	(1, 88),
	(1, 89),
	(1, 90),
	(1, 91),
	(1, 92),
	(1, 93),
	(1, 94),
	(1, 95),
	(1, 96),
	(1, 97),
	(1, 98),
	(1, 99),
	(1, 100),
	(1, 101),
	(1, 102),
	(1, 103),
	(1, 104),
	(1, 105),
	(1, 106),
	(1, 107),
	(1, 108),
	(1, 109),
	(1, 110),
	(1, 111),
	(1, 112),
	(1, 113),
	(1, 114),
	(1, 115),
	(1, 116),
	(1, 117),
	(1, 118),
	(1, 119),
	(1, 120),
	(1, 121),
	(1, 122),
	(1, 123),
	(1, 124),
	(1, 125),
	(1, 126),
	(1, 127),
	(1, 128),
	(1, 129),
	(1, 130),
	(1, 131),
	(1, 132),
	(1, 133),
	(1, 134),
	(1, 135),
	(1, 136),
	(1, 137),
	(1, 138),
	(1, 139),
	(1, 140),
	(1, 141),
	(1, 142),
	(1, 143),
	(1, 144),
	(1, 145),
	(1, 146),
	(1, 147),
	(1, 148),
	(1, 149),
	(1, 150),
	(1, 151),
	(1, 152),
	(1, 153),
	(1, 154),
	(1, 155),
	(1, 156),
	(1, 157),
	(1, 158),
	(1, 159),
	(1, 160),
	(1, 161),
	(1, 162),
	(1, 163),
	(1, 164),
	(1, 165),
	(1, 166),
	(1, 167),
	(1, 168),
	(1, 169),
	(1, 170),
	(1, 171);
/*!40000 ALTER TABLE `user_permission` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  KEY `user_role_user_id_foreign` (`user_id`),
  KEY `user_role_role_id_foreign` (`role_id`),
  CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.user_role: ~1 rows (approximately)
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

-- Dumping structure for table acculance_v1.vat_rates
CREATE TABLE IF NOT EXISTS `vat_rates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(4,2) NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table acculance_v1.vat_rates: ~0 rows (approximately)
/*!40000 ALTER TABLE `vat_rates` DISABLE KEYS */;
INSERT INTO `vat_rates` (`id`, `name`, `slug`, `code`, `rate`, `note`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'VAT 0%', 'vat-0', 'VAT@0', 0.00, NULL, 1, NULL, NULL);
/*!40000 ALTER TABLE `vat_rates` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
