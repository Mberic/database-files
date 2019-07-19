-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2019 at 10:49 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `UFT`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acct_balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agentemail`
--

CREATE TABLE `agentemail` (
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agentheademail`
--

CREATE TABLE `agentheademail` (
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agentheadname`
--

CREATE TABLE `agentheadname` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agentheads`
--

CREATE TABLE `agentheads` (
  `agentheadid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acct_balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date_of_reg` date NOT NULL,
  `signatures` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agentname`
--

CREATE TABLE `agentname` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `agentid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acct_balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date_of_reg` date NOT NULL,
  `signatures` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `dname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_agents` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `number_of_members` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finances`
--

CREATE TABLE `finances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dated` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agentid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_contact`
--

CREATE TABLE `member_contact` (
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_name`
--

CREATE TABLE `member_name` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_reg` date NOT NULL,
  `recommender_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_registrar`
--

CREATE TABLE `member_registrar` (
  `registrar_agentid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_administrator_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_04_062518_create_wellwishers_table', 1),
(4, '2019_07_04_063142_create_finances_table', 1),
(5, '2019_07_04_063203_create_districts_table', 1),
(6, '2019_07_04_063234_create_agents_table', 1),
(7, '2019_07_04_063253_create_agentheads_table', 1),
(8, '2019_07_17_063919_create_members_table', 1),
(9, '2019_07_18_102151_create_agentemail', 1),
(10, '2019_07_18_102214_create_agentname', 1),
(11, '2019_07_18_104802_create_wellwisher_name', 1),
(12, '2019_07_19_062241_create_member_contact', 1),
(13, '2019_07_19_062256_create_member_name', 1),
(14, '2019_07_19_062314_create_member_registrar', 1),
(15, '2019_07_19_084247_create_agentheademail', 1),
(16, '2019_07_19_084302_create_agentheadname', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wellwishers`
--

CREATE TABLE `wellwishers` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_reg` date NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wellwisher_name`
--

CREATE TABLE `wellwisher_name` (
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `administrator_account_number_unique` (`account_number`);

--
-- Indexes for table `agentemail`
--
ALTER TABLE `agentemail`
  ADD UNIQUE KEY `agentemail_email_unique` (`email`),
  ADD KEY `agentemail_account_number_foreign` (`account_number`);

--
-- Indexes for table `agentheademail`
--
ALTER TABLE `agentheademail`
  ADD UNIQUE KEY `agentheademail_email_unique` (`email`),
  ADD KEY `agentheademail_account_number_foreign` (`account_number`);

--
-- Indexes for table `agentheadname`
--
ALTER TABLE `agentheadname`
  ADD KEY `agentheadname_email_foreign` (`email`);

--
-- Indexes for table `agentheads`
--
ALTER TABLE `agentheads`
  ADD PRIMARY KEY (`agentheadid`),
  ADD UNIQUE KEY `agentheads_account_number_unique` (`account_number`),
  ADD KEY `agentheads_dname_foreign` (`dname`);

--
-- Indexes for table `agentname`
--
ALTER TABLE `agentname`
  ADD KEY `agentname_email_foreign` (`email`);

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`agentid`),
  ADD UNIQUE KEY `agents_account_number_unique` (`account_number`),
  ADD KEY `agents_district_name_foreign` (`district_name`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`dname`);

--
-- Indexes for table `finances`
--
ALTER TABLE `finances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finances_email_foreign` (`email`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `members_tel_unique` (`tel`),
  ADD KEY `members_agentid_foreign` (`agentid`);

--
-- Indexes for table `member_contact`
--
ALTER TABLE `member_contact`
  ADD UNIQUE KEY `member_contact_email_unique` (`email`),
  ADD KEY `member_contact_tel_foreign` (`tel`);

--
-- Indexes for table `member_name`
--
ALTER TABLE `member_name`
  ADD PRIMARY KEY (`email`),
  ADD KEY `member_name_recommender_id_foreign` (`recommender_id`);

--
-- Indexes for table `member_registrar`
--
ALTER TABLE `member_registrar`
  ADD KEY `member_registrar_registrar_agentid_foreign` (`registrar_agentid`),
  ADD KEY `member_registrar_district_name_foreign` (`district_name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `wellwishers`
--
ALTER TABLE `wellwishers`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `wellwishers_tel_unique` (`tel`);

--
-- Indexes for table `wellwisher_name`
--
ALTER TABLE `wellwisher_name`
  ADD KEY `wellwisher_name_tel_foreign` (`tel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `finances`
--
ALTER TABLE `finances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agentemail`
--
ALTER TABLE `agentemail`
  ADD CONSTRAINT `agentemail_account_number_foreign` FOREIGN KEY (`account_number`) REFERENCES `agents` (`account_number`);

--
-- Constraints for table `agentheademail`
--
ALTER TABLE `agentheademail`
  ADD CONSTRAINT `agentheademail_account_number_foreign` FOREIGN KEY (`account_number`) REFERENCES `agentheads` (`account_number`);

--
-- Constraints for table `agentheadname`
--
ALTER TABLE `agentheadname`
  ADD CONSTRAINT `agentheadname_email_foreign` FOREIGN KEY (`email`) REFERENCES `agentheademail` (`email`);

--
-- Constraints for table `agentheads`
--
ALTER TABLE `agentheads`
  ADD CONSTRAINT `agentheads_dname_foreign` FOREIGN KEY (`dname`) REFERENCES `districts` (`dname`);

--
-- Constraints for table `agentname`
--
ALTER TABLE `agentname`
  ADD CONSTRAINT `agentname_email_foreign` FOREIGN KEY (`email`) REFERENCES `agentemail` (`email`);

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_district_name_foreign` FOREIGN KEY (`district_name`) REFERENCES `districts` (`dname`);

--
-- Constraints for table `finances`
--
ALTER TABLE `finances`
  ADD CONSTRAINT `finances_email_foreign` FOREIGN KEY (`email`) REFERENCES `wellwishers` (`email`);

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_agentid_foreign` FOREIGN KEY (`agentid`) REFERENCES `agents` (`agentid`);

--
-- Constraints for table `member_contact`
--
ALTER TABLE `member_contact`
  ADD CONSTRAINT `member_contact_tel_foreign` FOREIGN KEY (`tel`) REFERENCES `members` (`tel`);

--
-- Constraints for table `member_name`
--
ALTER TABLE `member_name`
  ADD CONSTRAINT `member_name_email_foreign` FOREIGN KEY (`email`) REFERENCES `member_contact` (`email`),
  ADD CONSTRAINT `member_name_recommender_id_foreign` FOREIGN KEY (`recommender_id`) REFERENCES `members` (`member_id`);

--
-- Constraints for table `member_registrar`
--
ALTER TABLE `member_registrar`
  ADD CONSTRAINT `member_registrar_district_name_foreign` FOREIGN KEY (`district_name`) REFERENCES `agents` (`district_name`),
  ADD CONSTRAINT `member_registrar_registrar_agentid_foreign` FOREIGN KEY (`registrar_agentid`) REFERENCES `members` (`agentid`);

--
-- Constraints for table `wellwisher_name`
--
ALTER TABLE `wellwisher_name`
  ADD CONSTRAINT `wellwisher_name_tel_foreign` FOREIGN KEY (`tel`) REFERENCES `wellwishers` (`tel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
