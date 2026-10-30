-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2026 at 07:30 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobmatch`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int NOT NULL,
  `members_id` int NOT NULL,
  `location` varchar(255) NOT NULL,
  `job_type` varchar(100) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `requirements` text NOT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `poster_dir` varchar(255) DEFAULT NULL,
  `deadlines` date NOT NULL,
  `status` int NOT NULL DEFAULT '3',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `members_id`, `location`, `job_type`, `title`, `description`, `category`, `salary`, `requirements`, `poster`, `poster_dir`, `deadlines`, `status`, `created`, `modified`) VALUES
(8, 17, 'UiTM Puncak Alam, Selangor', 'Full Time', 'HR Executive', 'Manage recruitment, employee relations and staff welfare to build a productive and positive workplace.', 'Human Resource', 4500.00, 'Bachelor\'s degree in Human Resource or related field. Good communication and interpersonal skills.', 'hre.png', 'uploads/posters/', '2026-08-01', 1, '2026-07-04 13:48:20', '2026-07-04 15:25:25'),
(9, 17, 'UiTM Rembau', 'Full Time', 'Finance Officer', 'Oversee daily accounting, budgeting and financial reporting to keep the organisation financially healthy.', 'Finance', 4800.00, 'Degree in Accounting or Finance. \r\nProficient in accounting software and Excel.', '1783189040_fo.png', 'uploads/posters/', '2026-08-07', 1, '2026-07-04 13:49:47', '2026-07-04 18:17:20'),
(10, 17, 'UiTM Shah Alam', 'Full Time', 'Marketing Executive', 'Plan and run marketing campaigns across digital and print channels to grow brand awareness.', 'Marketing', 4200.00, 'Degree in Marketing or Mass Communication. \r\nCreative and familiar with social media tools.', '1783189077_me.png', 'uploads/posters/', '2026-08-08', 1, '2026-07-04 13:51:24', '2026-07-04 18:17:57'),
(11, 17, 'Uitm Merbok', 'Full Time', 'IT Support Officer', 'Provide technical support and maintain systems, networks and hardware for smooth daily operations.', 'Information Technology', 4200.00, 'Diploma or Degree in IT/Computer Science. \r\nKnowledge of networks and troubleshooting.\r\n\r\n', '1783189104_itsa.png', 'uploads/posters/', '2026-08-08', 1, '2026-07-04 14:19:05', '2026-07-04 18:18:24'),
(12, 17, 'Uitm Segamat', 'Full Time', 'Admin Assistant', ' Support daily office operations, documentation and scheduling to keep the team organised.', 'Administration', 2800.00, 'SPM or Diploma. \r\nOrganised, detail-oriented, and proficient in Microsoft Office.', '1783238705_a.a.png', 'uploads/posters/', '2026-08-14', 1, '2026-07-04 14:20:20', '2026-07-05 08:05:05'),
(13, 17, 'Uitm Samarahan', 'Full Time', 'Graphic Designer', 'Create engaging visual content and branding materials for both digital and print media.', 'Creative & Design ', 3800.00, 'Degree/Diploma in Design. \r\nSkilled in Adobe Photoshop, Illustrator, and InDesign.', '1783238830_gd.png', 'uploads/posters/', '2027-01-08', 1, '2026-07-04 14:39:00', '2026-07-05 08:07:10'),
(14, 17, 'UiTM Puncak Alam', 'Full Time', 'Customer Service Officer ', 'Assist customers with inquiries and provide friendly, timely support to ensure satisfaction.', 'Customer Service', 2900.00, 'SPM or Diploma. \r\nPatient, good communication, and a customer-first attitude.', '1783238855_cso.png', 'uploads/posters/', '2026-12-05', 1, '2026-07-04 14:40:16', '2026-07-05 08:07:35'),
(15, 17, 'UiTM Rembau', 'Full Time', 'Software Developer', 'Design, build and maintain web applications and systems that meet business needs.', 'Software Engineering ', 6000.00, 'Degree in Computer Science. \r\nExperience with PHP, JavaScript, and databases.', '1783238888_sd.png', 'uploads/posters/', '2026-11-28', 1, '2026-07-04 14:41:12', '2026-07-05 08:08:08'),
(16, 17, 'Cafe NR, UiTM Segamat', 'Part Time', ' Barista', 'Prepare beverages and serve customers with a smile in a fast-paced cafe setting.', 'Food & Beverage', 1800.00, 'No experience needed. Friendly, energetic, and willing to learn.', '1783238909_barista.png', 'uploads/posters/', '2027-03-10', 1, '2026-07-04 14:42:34', '2026-07-05 08:08:29'),
(17, 17, 'UiTM Jasin,Melaka', 'Part Time', 'Data Entry Clerk', 'Enter and update records accurately to support smooth office operations.', 'Administration', 1800.00, 'Basic computer skills. Fast and accurate typing.', '1783238927_dec.png', 'uploads/posters/', '2027-03-12', 1, '2026-07-04 15:11:25', '2026-07-05 08:08:47'),
(18, 17, 'UiTM Bandaraya Melaka', 'Part Time', 'Event Promoter', 'Promote products and engage the crowd at events, roadshows and campaigns.', 'Events & Promotion', 1800.00, 'Outgoing personality. Comfortable speaking to the public.', '1783240157_parttime_4.png', 'uploads/posters/', '2027-11-17', 1, '2026-07-04 15:12:28', '2026-07-05 08:29:17'),
(19, 17, 'UiTM Raub', 'Part Time', 'Part-Time Tutor', 'Guide students and prepare simple materials to help them learn and improve.', 'Education', 2000.00, 'Strong in the subject taught. \r\nPatient and good at explaining.', '1783239012_ptt.png', 'uploads/posters/', '2026-10-17', 1, '2026-07-04 15:14:21', '2026-07-05 08:10:12'),
(20, 17, 'UiTM Kuala Pilah', 'Part Time', 'Social Media Assistant', 'Create simple posts and manage content to grow the brand online.', 'Marketing', 1600.00, 'Familiar with Instagram, TikTok, and Facebook. \r\nCreative mindset.', '1783239029_sme.png', 'uploads/posters/', '2026-10-10', 1, '2026-07-04 15:15:25', '2026-07-05 08:10:29'),
(21, 17, 'Cafe Jasmine, UiTM Puncak Perdana', 'Part Time', 'Barista', 'Prepare beverages and serve customers with a smile in a fast-paced cafe setting.', 'Food & Beverage', 1200.00, 'No experience needed. Friendly, energetic, and willing to learn.', '1783239047_barista.png', 'uploads/posters/', '2027-06-12', 1, '2026-07-04 15:20:19', '2026-07-05 08:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int NOT NULL,
  `members_id` int NOT NULL,
  `advertisement_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '3',
  `offer_letter` text,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `members_id`, `advertisement_id`, `status`, `offer_letter`, `created`, `modified`) VALUES
(2, 18, 10, 1, 'Date: 5 July 2026\r\n\r\nDear saleha,\r\n\r\nRE: OFFER OF EMPLOYMENT — MARKETING EXECUTIVE\r\n\r\nWe are delighted to formally offer you the position of Marketing Executive at JobMatch. Following a thorough review of your application, qualifications, and the strengths you demonstrated throughout the selection process, the management is confident that you will make a meaningful and lasting contribution to our organisation.\r\n\r\nThis letter confirms our intention to employ you under the following understanding:\r\n\r\n1.  Position       : Marketing Executive\r\n2.  Reporting      : You will report directly to the Head of Department.\r\n3.  Commencement   : Your employment will commence on a date to be mutually agreed upon.\r\n4.  Working Hours  : Standard working hours apply, in accordance with company policy.\r\n5.  Remuneration   : Full details of your salary and benefits will be provided in your\r\n                     formal employment contract.\r\n\r\nWe believe that your skills and experience align strongly with the goals of our team, and we are enthusiastic about the value you will bring to JobMatch. Please treat the contents of this letter as private and confidential.\r\n\r\nTo accept this offer, kindly acknowledge your acceptance in writing at your earliest convenience. Should you have any questions or require further clarification, please do not hesitate to contact our Human Resource Department.\r\n\r\nWe look forward to welcoming you to the JobMatch family and to a long, professional, and mutually rewarding working relationship.\r\n\r\nYours sincerely,\r\n\r\n\r\n_______________________\r\nHuman Resource Department\r\nJobMatch\r\nConnect · Match · Succeed', '2026-07-05 16:17:07', '2026-07-05 17:11:18'),
(3, 18, 16, 1, NULL, '2026-07-08 12:14:30', '2026-07-08 13:13:07'),
(4, 18, 8, 0, NULL, '2026-07-08 12:17:21', '2026-07-08 12:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int UNSIGNED NOT NULL,
  `transaction` char(36) NOT NULL,
  `type` varchar(7) NOT NULL,
  `primary_key` int UNSIGNED DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `parent_source` varchar(255) DEFAULT NULL,
  `original` mediumtext,
  `changed` mediumtext,
  `meta` mediumtext,
  `status` int NOT NULL DEFAULT '1',
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `transaction`, `type`, `primary_key`, `source`, `parent_source`, `original`, `changed`, `meta`, `status`, `slug`, `created`) VALUES
(8, 'a4711ac4-ba92-4609-9bcb-405d086d7cd8', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-04 19:11:19'),
(9, 'c92a5380-66f6-4bdc-9dfb-f1f035307559', 'create', 25, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"sss\"}', 1, 'Admin', '2026-07-04 19:14:47'),
(10, 'e88c46f8-42b7-4340-9c04-c39e5d5eacc1', 'delete', 25, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"sss\"}', 1, 'Admin', '2026-07-04 19:15:08'),
(11, 'f41f0f4a-e615-450b-8e0e-8e80d92a139a', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-05 02:29:06'),
(12, '61d5a938-2d14-4113-a286-7a8af99f7437', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Admin\"}', 1, 'Admin', '2026-07-05 07:02:40'),
(13, '3057968a-9022-430c-aa55-96832341a7ee', 'update', 17, 'members', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Aisyah Maisarah\"}', 1, 'Admin', '2026-07-05 07:02:41'),
(14, '7e549508-785e-4ced-b2be-d696b40ca75a', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-05 07:43:27'),
(15, '5766cd5a-30b4-49ce-9472-19771f15769d', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"saleha\"}', 1, 'saleha', '2026-07-05 07:43:29'),
(16, 'ead4db5c-147d-474f-8730-6b8ab6300ce3', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-05 07:49:49'),
(17, '5768e184-ddcf-4a05-a3e6-8514360d9cf9', 'update', 12, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Admin Assistant\"}', 1, 'Admin', '2026-07-05 08:05:05'),
(18, '73fdad9b-dd20-4da7-93be-876eef22312a', 'update', 13, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Graphic Designer\"}', 1, 'Admin', '2026-07-05 08:07:10'),
(19, 'a76f1666-3bf0-42a1-b92d-2e7ba981c187', 'update', 14, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Customer Service Officer \"}', 1, 'Admin', '2026-07-05 08:07:35'),
(20, 'c6436829-ef54-4648-8968-0eab68625dab', 'update', 15, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Software Developer\"}', 1, 'Admin', '2026-07-05 08:08:08'),
(21, '985ba181-a7ea-457e-9604-303a8c38501b', 'update', 16, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\" Barista\"}', 1, 'Admin', '2026-07-05 08:08:29'),
(22, '3c74befa-e2d6-48f3-992b-5c5f5606ec5d', 'update', 17, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Data Entry Clerk\"}', 1, 'Admin', '2026-07-05 08:08:47'),
(23, '10b200e4-76d0-467b-b491-b6b8795466cd', 'update', 19, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Part-Time Tutor\"}', 1, 'Admin', '2026-07-05 08:10:12'),
(24, '8cb23dff-a674-450d-8836-6ef8d90d18fa', 'update', 20, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Social Media Assistant\"}', 1, 'Admin', '2026-07-05 08:10:29'),
(25, '960f9b7f-e1e7-4540-88f6-d79f090852c3', 'update', 21, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Barista\"}', 1, 'Admin', '2026-07-05 08:10:47'),
(26, '1f51a6fe-7ce6-40e3-9662-4a95272e476c', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Admin\"}', 1, 'Admin', '2026-07-05 08:28:39'),
(27, '8a47fec5-7382-4d10-a7df-e9b4a8ae218b', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Admin\"}', 1, 'Admin', '2026-07-05 08:28:42'),
(28, '0248797b-52bb-44db-b9fa-34003478809e', 'update', 18, 'advertisements', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Event Promoter\"}', 1, 'Admin', '2026-07-05 08:29:18'),
(29, 'd58da19a-742a-4455-bdbf-54b3d910d386', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Admin\"}', 1, 'Admin', '2026-07-05 11:17:11'),
(30, '1fc3cbfd-1914-4698-838f-95f27afdc926', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-05 11:21:38'),
(31, 'de403695-03c5-4e12-8eb9-8853cbe5d642', 'update', 18, 'members', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"saleha\"}', 1, 'saleha', '2026-07-05 11:22:36'),
(32, 'dcd1865f-6e53-49bf-80d0-eebea60b756f', 'update', 18, 'members', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"saleha\"}', 1, 'saleha', '2026-07-05 16:17:07'),
(33, '79b64b4d-3637-43ec-a446-d3dea1422458', 'create', 2, 'applications', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"2\"}', 1, 'saleha', '2026-07-05 16:17:07'),
(34, '93cfe84b-b79d-4cc7-a12b-7d144aed0ad0', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-05 16:17:38'),
(35, '8e6575db-20db-4c40-a0ca-e7ffe1f7188e', 'update', 2, 'applications', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"2\"}', 1, 'Admin', '2026-07-05 16:17:57'),
(36, 'c6d67a2c-66b9-4cf9-a166-38154d72b3ff', 'update', 2, 'applications', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"2\"}', 1, 'Admin', '2026-07-05 16:30:50'),
(37, 'ae7a7205-cb79-4c6f-997b-ab5f712fc67a', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-05 16:31:05'),
(38, 'b165db58-7a2d-4ba8-9193-a72addd0487e', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-05 17:10:28'),
(39, '0150f159-4c2f-4e54-868f-7990036a80b0', 'update', 2, 'applications', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"2\"}', 1, 'Admin', '2026-07-05 17:11:18'),
(40, '1d34d6d9-c3b7-4f07-91d1-bdabf90946fc', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-05 17:11:46'),
(41, '7e272cce-690e-4eb4-b01f-1941b2b50ca3', 'update', 18, 'members', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"saleha\"}', 1, 'saleha', '2026-07-05 17:18:33'),
(42, 'b3c6ec0c-ac4b-48e3-b368-5b8f9f2c4373', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"saleha\"}', 1, 'saleha', '2026-07-05 17:18:48'),
(43, '474b859a-08a8-4225-87a2-82c7262ea771', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-05 17:19:01'),
(44, '420736c5-fa51-4bc5-b046-8aa8d51ee3f2', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-05 17:32:05'),
(45, '70603537-9b98-4e6d-9235-c4d7cae99a87', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-05 17:38:53'),
(46, 'a16cebff-1409-458e-8e8a-633debf7ae97', 'update', 17, 'members', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"Aisyah Maisarah\"}', 1, 'Admin', '2026-07-05 17:39:02'),
(47, '22660ad6-4ab3-49e2-867b-3172ae026921', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-05 17:39:32'),
(48, 'aef1c4d4-f508-4099-828c-c628ab37010f', 'update', 18, 'members', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"saleha\"}', 1, 'saleha', '2026-07-05 17:39:45'),
(49, '0d2a48dc-1b5b-403e-be55-7dda3388d30b', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-05 17:39:59'),
(50, '671ee921-d731-42c8-af42-b0d526c9f95c', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-06 13:08:06'),
(51, '3c009791-81b1-4634-b8b0-3de1b94b2812', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-06 13:15:37'),
(52, '00d3fdfc-9322-4a28-bafe-11fb73f6d8a3', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-08 12:13:03'),
(53, '590b78bf-e5f0-482a-afd4-6ac3951c8aab', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-08 12:13:42'),
(54, 'e100d331-fde2-476a-bd13-cab547710222', 'update', 18, 'members', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"saleha\"}', 1, 'saleha', '2026-07-08 12:14:30'),
(55, '222664b8-a081-47d7-adc2-f2393401e299', 'create', 3, 'applications', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"3\"}', 1, 'saleha', '2026-07-08 12:14:30'),
(56, 'ac8c33f9-92c6-4db2-b3e9-c0b2fa3dffc3', 'update', 18, 'members', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"saleha\"}', 1, 'saleha', '2026-07-08 12:17:21'),
(57, '0a25eac3-115f-486e-b308-32be545dee88', 'create', 4, 'applications', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"4\"}', 1, 'saleha', '2026-07-08 12:17:21'),
(58, '3d310906-e390-42ef-9bf4-90650d02b754', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-08 12:25:41'),
(59, '13f4ac76-95f2-4a3f-889b-75f9590af095', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-08 12:35:21'),
(60, 'f089f8e8-a0f4-4556-b6a6-a287e3240a1d', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-08 12:35:52'),
(61, '73c05358-31d8-4f0b-ab63-ce82315ea408', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-08 13:06:41'),
(62, 'bb8aba5b-242d-431c-a031-0eb5ad6e37f3', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-08 13:07:25'),
(63, 'e9731201-a9b5-4cff-b813-afd2ab33dd58', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"saleha\",\"record\":\"saleha\"}', 1, 'saleha', '2026-07-08 13:07:27'),
(64, '360728f1-012b-4056-bd7f-d0b1a09cfd92', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-08 13:12:51'),
(65, '1b214dcf-ee8b-44d2-9ff3-453564632a6c', 'update', 3, 'applications', '', '{}', '{}', '{\"username\":\"Admin\",\"record\":\"3\"}', 1, 'Admin', '2026-07-08 13:13:07'),
(66, '1ddeebf4-42e7-4300-be30-52a7864afd78', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-09 07:08:58'),
(67, '2267edd7-4ffc-4b1e-a9ca-44ef1bac98f8', 'update', 16, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"Admin\"}', 1, 'System', '2026-07-09 07:10:49'),
(68, '8efe4021-e0bd-424d-91db-84b9dff3b374', 'update', 20, 'users', '', '{}', '{}', '{\"username\":\"System\",\"record\":\"saleha\"}', 1, 'System', '2026-07-09 07:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `preferred_job_position` varchar(255) DEFAULT NULL,
  `certificate_skill` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `resume_dir` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '3',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `user_id`, `name`, `image`, `address`, `location`, `preferred_job_position`, `certificate_skill`, `phone_number`, `resume`, `resume_dir`, `status`, `created`, `modified`) VALUES
(15, 18, 'saleha', '', '', NULL, NULL, NULL, '', '', '', 1, '2026-07-04 08:24:06', '2026-07-04 08:24:06'),
(16, 19, 'aiman', '', '', NULL, NULL, NULL, '', '', '', 1, '2026-07-04 08:35:39', '2026-07-04 08:35:39'),
(17, 16, 'Aisyah Maisarah', '', '', NULL, 'it', 'it', '+6011-26263264', '', '', 1, '2026-07-04 21:09:06', '2026-07-05 17:39:02'),
(18, 20, 'saleha', '', 'xx', 'ii', 'ii', 'iii', 'ss', '1783513041_tiga_bilik_hotel_warna.png', 'uploads/', 1, '2026-07-04 18:53:05', '2026-07-08 12:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Admin', '2026-07-03 23:05:56', '2026-07-03 23:05:56'),
(2, 'User', '2026-07-03 23:05:56', '2026-07-03 23:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `user_group_id` int DEFAULT '3',
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `avatar_dir` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_created_at` datetime NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '	is_active',
  `is_email_verified` int NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `created_by` int DEFAULT NULL COMMENT 'user_id',
  `modified_by` int DEFAULT NULL COMMENT 'user_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_group_id`, `fullname`, `password`, `email`, `avatar`, `avatar_dir`, `token`, `token_created_at`, `status`, `is_email_verified`, `last_login`, `ip_address`, `slug`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(16, 1, 1, 'Admin', 'Admin123!', 'admin@admin.com', 'avatar_1783234960_6756.jpeg', 'img/avatars', NULL, '0000-00-00 00:00:00', '1', 0, '2026-07-09 07:10:49', NULL, 'admin-1', '2026-07-04 11:16:27', '2026-07-09 07:10:49', NULL, NULL),
(18, 1, 1, 'saleha', 'Ai@486298', 'saleha@admin.com', NULL, NULL, NULL, '2026-07-04 08:24:06', '1', 0, '2026-07-04 08:46:08', NULL, 'user-1783153446', '2026-07-04 08:24:06', '2026-07-04 08:46:08', NULL, NULL),
(19, 2, 0, 'aiman', 'Ai@486298', 'aiman@gmail.com', NULL, NULL, NULL, '2026-07-04 08:35:39', '1', 0, '2026-07-04 08:36:29', NULL, 'user-1783154139', '2026-07-04 08:35:39', '2026-07-04 08:36:29', NULL, NULL),
(20, 2, 0, 'saleha', 'Ai@486298', 'saleha@gmail.com', 'avatar_1783271928_1774.png', 'img/avatars', NULL, '2026-07-04 18:53:05', '1', 0, '2026-07-09 07:26:11', NULL, 'user-1783191185', '2026-07-04 18:53:05', '2026-07-09 07:26:11', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`members_id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisement_id` (`advertisement_id`),
  ADD KEY `user_id` (`members_id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction` (`transaction`),
  ADD KEY `type` (`type`),
  ADD KEY `primary_key` (`primary_key`),
  ADD KEY `source` (`source`),
  ADD KEY `parent_source` (`parent_source`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_members_user` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD CONSTRAINT `fk_advertisements_member` FOREIGN KEY (`members_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `fk_applications_advertisement` FOREIGN KEY (`advertisement_id`) REFERENCES `advertisements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_applications_member` FOREIGN KEY (`members_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `fk_members_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
