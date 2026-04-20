-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2026 at 10:35 PM
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
-- Database: `dentaeduai`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `entity_name` varchar(50) DEFAULT NULL,
  `entity_id` bigint(20) UNSIGNED DEFAULT NULL,
  `changes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`changes`)),
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `consent_checklist_records`
--

CREATE TABLE `consent_checklist_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `treatment_id` bigint(20) UNSIGNED NOT NULL,
  `item_text` varchar(255) NOT NULL,
  `is_agreed` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consent_checklist_records`
--

INSERT INTO `consent_checklist_records` (`id`, `treatment_id`, `item_text`, `is_agreed`, `created_at`) VALUES
(175, 14, 'Treatment Time', 1, '2026-02-25 12:16:06'),
(176, 14, 'Side Effects & Risks', 1, '2026-02-25 12:16:06'),
(177, 14, 'Prosthesis Complications', 1, '2026-02-25 12:16:06'),
(178, 14, 'Swelling', 1, '2026-02-25 12:16:06'),
(179, 14, 'Surgical Involvement', 1, '2026-02-25 12:16:06'),
(180, 14, 'Numbness', 1, '2026-02-25 12:16:06'),
(181, 14, 'Additional Procedures', 1, '2026-02-25 12:16:06'),
(182, 14, 'Multiple Appointments', 1, '2026-02-25 12:16:06'),
(183, 14, 'Bone Grafting', 1, '2026-02-25 12:16:06'),
(238, 28, 'Drug reactions and side effects', 1, '2026-02-28 15:59:05'),
(239, 28, 'Bruising and/or swelling', 1, '2026-02-28 15:59:05'),
(240, 28, 'Nerve Involvement', 1, '2026-02-28 15:59:05'),
(241, 28, 'Temporary Paralysis', 1, '2026-02-28 15:59:05'),
(242, 28, 'Numbness Duration', 1, '2026-02-28 15:59:05'),
(243, 28, 'Mandatory Anesthesia', 1, '2026-02-28 15:59:05'),
(244, 28, 'Treatment Time', 1, '2026-02-28 15:59:05'),
(245, 28, 'Side Effects & Risks', 1, '2026-02-28 15:59:05'),
(246, 28, 'Prosthesis Complications', 1, '2026-02-28 15:59:05'),
(247, 28, 'Swelling', 1, '2026-02-28 15:59:05'),
(248, 28, 'Surgical Involvement', 1, '2026-02-28 15:59:05'),
(249, 28, 'Numbness', 1, '2026-02-28 15:59:05'),
(250, 28, 'Additional Procedures', 1, '2026-02-28 15:59:05'),
(251, 28, 'Multiple Appointments', 1, '2026-02-28 15:59:05'),
(252, 28, 'Bone Grafting', 1, '2026-02-28 15:59:05'),
(373, 29, 'Drug reactions and side effects', 1, '2026-03-01 14:07:25'),
(374, 29, 'Bruising and/or swelling', 1, '2026-03-01 14:07:25'),
(375, 29, 'Nerve Involvement', 1, '2026-03-01 14:07:25'),
(376, 29, 'Temporary Paralysis', 1, '2026-03-01 14:07:25'),
(377, 29, 'Numbness Duration', 1, '2026-03-01 14:07:25'),
(378, 29, 'Mandatory Anesthesia', 1, '2026-03-01 14:07:25'),
(379, 29, 'Treatment Time', 1, '2026-03-01 14:07:25'),
(380, 29, 'Side Effects & Risks', 1, '2026-03-01 14:07:25'),
(381, 29, 'Prosthesis Complications', 1, '2026-03-01 14:07:25'),
(382, 29, 'Swelling', 1, '2026-03-01 14:07:25'),
(383, 29, 'Surgical Involvement', 1, '2026-03-01 14:07:25'),
(384, 29, 'Numbness', 1, '2026-03-01 14:07:25'),
(385, 29, 'Additional Procedures', 1, '2026-03-01 14:07:25'),
(386, 29, 'Multiple Appointments', 1, '2026-03-01 14:07:25'),
(387, 29, 'Bone Grafting', 1, '2026-03-01 14:07:25'),
(388, 30, 'Treatment Time', 1, '2026-03-05 14:16:31'),
(389, 30, 'Side Effects & Risks', 1, '2026-03-05 14:16:31'),
(390, 30, 'Prosthesis Complications', 1, '2026-03-05 14:16:31'),
(391, 30, 'Swelling', 1, '2026-03-05 14:16:31'),
(392, 30, 'Surgical Involvement', 1, '2026-03-05 14:16:31'),
(393, 30, 'Numbness', 1, '2026-03-05 14:16:31'),
(394, 30, 'Additional Procedures', 1, '2026-03-05 14:16:31'),
(395, 30, 'Multiple Appointments', 1, '2026-03-05 14:16:31'),
(396, 30, 'Bone Grafting', 1, '2026-03-05 14:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `consent_records`
--

CREATE TABLE `consent_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `treatment_id` bigint(20) UNSIGNED NOT NULL,
  `quiz_score` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `is_checklist_confirmed` tinyint(1) DEFAULT 0,
  `signature_path` varchar(255) DEFAULT NULL,
  `signed_at` datetime DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consent_records`
--

INSERT INTO `consent_records` (`id`, `treatment_id`, `quiz_score`, `total_questions`, `is_checklist_confirmed`, `signature_path`, `signed_at`, `ip_address`, `user_agent`, `created_at`) VALUES
(14, 14, 8, 8, 0, NULL, NULL, NULL, NULL, '2026-02-23 14:29:18'),
(38, 28, 8, 8, 0, NULL, NULL, NULL, NULL, '2026-02-28 09:26:16'),
(42, 29, 8, 8, 0, NULL, NULL, NULL, NULL, '2026-03-01 06:34:15'),
(43, 30, 8, 8, 0, NULL, NULL, NULL, NULL, '2026-03-05 14:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_profiles`
--

CREATE TABLE `doctor_profiles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `council_id` varchar(50) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `experience_years` int(11) DEFAULT 0,
  `qualifications` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `signature_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_profiles`
--

INSERT INTO `doctor_profiles` (`user_id`, `full_name`, `mobile_number`, `gender`, `dob`, `council_id`, `specialization`, `experience_years`, `qualifications`, `created_at`, `updated_at`, `signature_url`) VALUES
(12, 'mohan reddy', '2883838388', 'Male', '2005-12-22', '27jejissui2', 'Implantologist', 0, 'BDS, MDS, DDS', '2026-02-21 12:21:07', '2026-02-22 10:58:39', 'uploads/signatures/doc_sig_3c53fb6703a2115d5227e548dffca556.jpg'),
(15, 'Sandeep', '9122738484', 'Male', '2004-12-31', 'sai123', 'Prosthodontist', 0, 'BDS, MDS', '2026-02-22 11:07:59', '2026-02-22 11:21:12', 'uploads/signatures/doc_sig_9b64550f82dafe810d97e1a4391e7324.jpg'),
(17, 'doc', '8483838839', 'Male', '2000-12-12', 'hxjd8i3jd', 'Prosthodontist', 0, 'BDS, MDS, DDS', '2026-02-22 14:44:00', '2026-02-22 14:44:35', 'uploads/signatures/doc_sig_3c9c7e1d3b8bf467bb7f30f366add001.jpg'),
(31, 'Dr.sandeep', '4694282286', 'Male', '2000-12-12', 'mh123', 'Implantologist', 0, 'BDS, MDS', '2026-02-26 18:31:52', '2026-02-26 18:32:32', 'uploads/signatures/doc_sig_e847efaaeeaa9f1140cde850a06db4a5.jpg'),
(33, 'Mohan Reddy M', '1373836869', 'Male', '2005-12-22', 'mh-12345', 'Implantologist', 0, 'BDS, MDS', '2026-02-28 16:05:35', '2026-02-28 16:39:55', 'uploads/signatures/doc_sig_331d195dd77e3d3825b2f92351769092.jpg'),
(34, 'K narendra ', '5689568695', 'Male', '2004-12-12', 'gh 23', 'Implantologist', 0, 'BDS', '2026-03-05 17:47:03', '2026-03-05 17:48:08', 'uploads/signatures/doc_sig_312ecb24fe964aa7498566e6e6417d10.jpg'),
(39, 'sandeep', '1233534534', 'Male', '2005-01-12', '121341234frw', 'Prosthodontist', 0, 'check BDS', '2026-03-15 07:29:04', '2026-03-15 07:29:04', NULL),
(49, 'sharma', '5676787231', 'Male', '2005-02-12', 'TNE56', 'Implantologist', 0, 'check DDS', '2026-03-15 07:57:01', '2026-03-15 07:57:01', NULL),
(55, 'Muni', '6303220338', 'Male', '2005-02-12', 'TNE56889', 'Implantologist', 0, '', '2026-03-18 06:35:22', '2026-03-18 06:35:22', NULL),
(56, 'sdfghjkl', '3456789890', 'Male', '2006-04-12', '45 vtyj', 'Implantologist', 0, '', '2026-03-18 06:48:17', '2026-03-18 06:48:17', NULL),
(60, 'sesha', '8976452314', 'Female', '2004-02-12', 'werry23', 'Implantologist', 0, 'BDS', '2026-03-24 09:47:05', '2026-03-24 09:48:04', 'uploads/signatures/doc_sig_b15086c0a31c63e1fc4ceb4963b103a8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `educational_videos`
--

CREATE TABLE `educational_videos` (
  `id` int(11) NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `video_url` varchar(500) NOT NULL,
  `thumbnail_url` varchar(500) DEFAULT NULL,
  `duration_seconds` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `educational_videos`
--

INSERT INTO `educational_videos` (`id`, `operation_type_id`, `title`, `video_url`, `thumbnail_url`, `duration_seconds`, `display_order`, `created_at`) VALUES
(1, 1, 'Single Tooth Implant', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 1, '2026-02-22 04:38:39'),
(2, 2, 'Multiple Tooth Implant', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 2, '2026-02-22 04:38:39'),
(3, 3, 'Full Arch Implant', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 3, '2026-02-22 04:38:39'),
(4, 4, 'Implant-Supported Bridge', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 4, '2026-02-22 04:38:39'),
(5, 5, 'Implant-Supported Denture', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 5, '2026-02-22 04:38:39'),
(6, 6, 'Bone Grafting (Support)', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 6, '2026-02-22 04:38:39'),
(7, 7, 'Crown', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 7, '2026-02-22 04:38:39'),
(8, 8, 'Bridge', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 8, '2026-02-22 04:38:39'),
(9, 9, 'Complete Denture', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 9, '2026-02-22 04:38:39'),
(10, 10, 'Partial Denture', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 10, '2026-02-22 04:38:39'),
(11, 11, 'Veneer', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 11, '2026-02-22 04:38:39'),
(12, 12, 'Full Mouth Rehab', 'uploads/educational/video.mp4', 'uploads/educational/thumbnail.jpg', 180, 12, '2026-02-22 04:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `general_education`
--

CREATE TABLE `general_education` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_education`
--

INSERT INTO `general_education` (`id`, `title`, `description`, `duration`, `thumbnail_url`, `video_url`, `category`, `created_at`) VALUES
(1, 'Dental Implant Procedure | Medical Animation', 'Gentle step-by-step 3D animation showing how a dental implant is placed. Explains why implants are better than bridges. Very calm and easy to understand.', '5:41', 'uploads/educational/thumbnail.jpg', 'uploads/educational/Dental3d.mp4', 'Implant Surgery', '2026-02-28 11:26:26'),
(3, 'Cleaning Your Dental Implant', 'Simple step-by-step guide on how to clean around your implant using super-floss. Essential daily hygiene for long-lasting implants.', '2:06', 'uploads/educational/thumbnail.jpg', 'uploads/educational/Cleaning_your_Dental_Implant.mp4', 'Hygiene', '2026-02-28 11:26:26'),
(4, 'Dos and Don\'ts After Dental Implant Surgery', '10 easy rules for the first days after surgery — includes gentle brushing, rinsing, ice cream tip, and when to start normal hygiene.', '2:49', 'uploads/educational/dosdont.jpg', 'uploads/educational/dos_dont.mp4', 'Hygiene', '2026-02-28 11:26:26'),
(5, 'Understanding Root Canals', 'Deep dive into the root canal procedure, why it is necessary, and what to expect during recovery.', '5:41', 'uploads/educational/rootcanal.jpg', 'uploads/educational/root_canal.mp4', 'Endodontics', '2026-02-28 11:26:26'),
(6, 'Proper Brushing Technique', 'Expert tips from hygienist Sarah on how to brush correctly to maintain optimal oral health.', '3:20', 'uploads/educational/brush.png', 'uploads/educational/demonstrating-proper-brushing-technique-with-dental-model-and-toothbrush-animation-tutorial-video.mp4', 'Hygiene', '2026-02-28 11:26:26'),
(8, 'What to Expect During a Dental Crown', 'Step-by-step visual guide showing how a dental crown is prepared, placed, and why it\'s used to restore damaged teeth.', '3:20', 'uploads/educational/ge1.jpg', 'uploads/educational/demonstrating-proper-brushing-technique-with-dental-model-and-toothbrush-animation-tutorial-video.mp4', 'Implant Surgery', '2026-02-28 11:26:26'),
(9, 'Your Daily Oral Hygiene Routine ', 'Easy morning and night routine: brush, floss, and extra tips to keep your mouth fresh and healthy every day.', '3:20', 'uploads/educational/brush.png', 'uploads/educational/demonstrating-proper-brushing-technique-with-dental-model-and-toothbrush-animation-tutorial-video.mp4', 'Hygiene', '2026-02-28 11:26:26'),
(10, 'Best Order for Brushing, Flossing & Mouthwash', 'The ideal sequence for your home care routine to get the most benefit from each step.', '3:20', 'uploads/educational/ge2.png', 'uploads/educational/ge2.mp4', 'Hygiene', '2026-02-28 11:26:26'),
(11, 'Single Tooth Implant', 'Replaces one missing tooth with a titanium implant, abutment, and crown. Preserves adjacent teeth and bone.', '5:41', 'uploads/educational/thumbnail.jpg', 'uploads/educational/single_tooth_implant.mp4', 'Implant Surgery', '2026-02-28 11:26:26'),
(12, 'Multiple Tooth Implant', 'Uses 2–4 implants to support a bridge replacing several adjacent missing teeth.', '5:41', 'uploads/educational/thumbnail.jpg', 'uploads/educational/multiple_tooth_implant.mp4', 'Implant Surgery', '2026-02-28 11:26:26'),
(13, 'Full Arch Implant', 'Replaces all teeth in one jaw (e.g., All-on-4 or All-on-6) with a fixed bridge supported by 4–6 implants.', '5:41', 'uploads/educational/thumbnail.jpg', 'uploads/educational/full_arch_implant.mp4', 'Implant Surgery', '2026-02-28 11:26:26'),
(14, 'Implant-Supported Bridge', 'Fixed bridge anchored by implants (typically 2–3) to replace multiple missing teeth in a row.', '5:41', 'uploads/educational/thumbnail.jpg', 'uploads/educational/implant_supported_bridge.mp4', 'Implant Surgery', '2026-02-28 11:26:26'),
(15, 'Implant-Supported Denture', 'Overdenture that clips or locks onto 2–6 implants for improved stability over conventional dentures.', '2:49', 'uploads/educational/dosdont.jpg', 'uploads/educational/implant_supported_denture.mp4', 'Endodontics', '2026-02-28 11:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `key_topics`
--

CREATE TABLE `key_topics` (
  `id` int(11) NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `topic` text NOT NULL,
  `display_order` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `key_topics`
--

INSERT INTO `key_topics` (`id`, `operation_type_id`, `topic`, `display_order`, `created_at`) VALUES
(1, 1, 'Titanium screw acts as new root', 1, '2026-02-22 04:56:31'),
(2, 1, '3–6 months healing (osseointegration)', 2, '2026-02-22 04:56:31'),
(3, 1, '95–98% long-term success', 3, '2026-02-22 04:56:31'),
(4, 1, 'Local anesthesia only', 4, '2026-02-22 04:56:31'),
(5, 2, '2–4 implants support bridge', 1, '2026-02-22 04:56:31'),
(6, 2, 'No damage to healthy teeth', 2, '2026-02-22 04:56:31'),
(7, 2, 'Same healing time as single', 3, '2026-02-22 04:56:31'),
(8, 3, 'All-on-4 or All-on-6 technique', 1, '2026-02-22 04:56:31'),
(9, 3, 'Teeth in a Day possible', 2, '2026-02-22 04:56:31'),
(10, 3, 'Fixed permanent solution', 3, '2026-02-22 04:56:31'),
(11, 4, 'Implants replace missing teeth roots', 1, '2026-02-22 04:56:31'),
(12, 4, 'Stronger than tooth-supported bridge', 2, '2026-02-22 04:56:31'),
(13, 5, 'Snap-in stability', 1, '2026-02-22 04:56:31'),
(14, 5, 'Removable for cleaning', 2, '2026-02-22 04:56:31'),
(15, 5, '80–90% chewing power', 3, '2026-02-22 04:56:31'),
(16, 6, 'Builds bone for implant', 1, '2026-02-22 04:56:31'),
(17, 6, 'Can use patient’s own bone', 2, '2026-02-22 04:56:31'),
(18, 6, '3–6 months before implant', 3, '2026-02-22 04:56:31'),
(19, 7, 'Full coverage cap', 1, '2026-02-22 04:56:31'),
(20, 7, 'Protects weak tooth', 2, '2026-02-22 04:56:31'),
(21, 7, 'Zirconia or porcelain', 3, '2026-02-22 04:56:31'),
(22, 8, 'Replaces 1–3 teeth', 1, '2026-02-22 04:56:31'),
(23, 8, 'Anchored on adjacent teeth', 2, '2026-02-22 04:56:31'),
(24, 8, 'Faster than implants', 3, '2026-02-22 04:56:31'),
(25, 9, 'Full set for one jaw', 1, '2026-02-22 04:56:31'),
(26, 9, '5–7 visits required', 2, '2026-02-22 04:56:31'),
(27, 9, '20–30% chewing efficiency', 3, '2026-02-22 04:56:31'),
(28, 10, 'Clasps on remaining teeth', 1, '2026-02-22 04:56:31'),
(29, 10, 'Removable & affordable', 2, '2026-02-22 04:56:31'),
(30, 11, 'Ultra-thin porcelain shell', 1, '2026-02-22 04:56:31'),
(31, 11, 'Minimal enamel removal', 2, '2026-02-22 04:56:31'),
(32, 11, 'Front teeth only', 3, '2026-02-22 04:56:31'),
(33, 12, 'Complete smile & bite makeover', 1, '2026-02-22 04:56:31'),
(34, 12, 'May combine crowns + implants', 2, '2026-02-22 04:56:31'),
(35, 12, '6–12 months treatment', 3, '2026-02-22 04:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `created_at`) VALUES
(1, 12, 8, 'hu', '2026-02-21 14:00:43'),
(2, 8, 12, 'hi', '2026-02-22 08:36:08'),
(3, 8, 12, 'hu', '2026-02-22 10:12:16'),
(4, 16, 17, 'hi doctor', '2026-02-22 14:45:55'),
(5, 28, 29, 'hlo doctor', '2026-02-26 17:25:15'),
(6, 30, 31, 'hlo', '2026-02-26 18:37:39'),
(7, 34, 25, 'hi anshul', '2026-03-05 17:48:27'),
(8, 60, 30, 'Hlo Mr. sandeep', '2026-03-24 09:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `operation_types`
--

CREATE TABLE `operation_types` (
  `id` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `success_rate` decimal(5,2) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `video_url` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operation_types`
--

INSERT INTO `operation_types` (`id`, `specialization_id`, `name`, `slug`, `description`, `success_rate`, `icon`, `video_url`, `created_at`) VALUES
(1, 1, 'Single Tooth Implant', 'single_tooth_implant', 'Replaces one missing tooth with a titanium implant, abutment, and crown. Preserves adjacent teeth and bone.', 96.50, 'single_tooth_implant.png', 'uploads/educational/single_tooth_implant.mp4', '2026-02-21 16:00:37'),
(2, 1, 'Multiple Tooth Implant', 'multiple_tooth_implant', 'Uses 2–4 implants to support a bridge replacing several adjacent missing teeth.', 95.80, 'multiple_tooth_implant.png', 'uploads/educational/multiple_tooth_implant.mp4', '2026-02-21 16:00:37'),
(3, 1, 'Full Arch Implant', 'full_arch_implant', 'Replaces all teeth in one jaw (e.g., All-on-4 or All-on-6) with a fixed bridge supported by 4–6 implants.', 97.20, 'full_arch_implant.png', 'uploads/educational/full_arch_implant.mp4', '2026-02-21 16:00:37'),
(4, 1, 'Implant-Supported Bridge', 'implant_supported_bridge', 'Fixed bridge anchored by implants (typically 2–3) to replace multiple missing teeth in a row.', 96.00, 'implant_bridge.png', 'uploads/educational/implant_supported_bridge.mp4', '2026-02-21 16:00:37'),
(5, 1, 'Implant-Supported Denture', 'implant_supported_denture', 'Overdenture that clips or locks onto 2–6 implants for improved stability over conventional dentures.', 94.50, 'implant_denture.png', 'uploads/educational/implant_supported_denture.mp4', '2026-02-21 16:00:37'),
(6, 1, 'Bone Grafting (Support)', 'bone_grafting_support', 'Augments jawbone volume (autograft, allograft, or synthetic) to enable implant placement when bone is insufficient.', 92.00, 'bone_grafting.png', 'uploads/educational/bone_grafting_support.mp4', '2026-02-21 16:00:37'),
(7, 2, 'Crown', 'dental_crown', 'Full-coverage restoration that caps a damaged or weakened tooth to restore shape, strength, and appearance.', 95.00, 'crown.png', 'uploads/educational/dental_crown.mp4', '2026-02-21 16:00:37'),
(8, 2, 'Bridge', 'dental_bridge', 'Fixed prosthesis that replaces one or more missing teeth by anchoring to adjacent natural teeth or implants.', 93.50, 'bridge.png', 'uploads/educational/dental_bridge.mp4', '2026-02-21 16:00:37'),
(9, 2, 'Complete Denture', 'complete_denture', 'Removable full-arch prosthesis replacing all teeth in the upper or lower jaw.', 90.00, 'complete_denture.png', 'uploads/educational/complete_denture.mp4', '2026-02-21 16:00:37'),
(10, 2, 'Partial Denture', 'partial_denture', 'Removable appliance replacing some missing teeth while preserving remaining natural teeth.', 91.00, 'partial_denture.png', 'uploads/educational/partial_denture.mp4', '2026-02-21 16:00:37'),
(11, 2, 'Veneer', 'dental_veneer', 'Thin porcelain or composite shell bonded to the front of teeth to improve aesthetics (color, shape, alignment).', 96.00, 'veneer.png', 'uploads/educational/dental_veneer.mp4', '2026-02-21 16:00:37'),
(12, 2, 'Full Mouth Rehab.', 'full_mouth_rehabilitation', 'Comprehensive restoration of all teeth using crowns, bridges, implants, veneers to restore function and aesthetics.', 94.00, 'full_mouth_rehab.png', 'uploads/educational/full_mouth_rehabilitation.mp4', '2026-02-21 16:00:37'),
(25, 1, 'MOUTH REHABILITATION', 'mouth_rehabilitation', 'NA', 95.00, NULL, 'uploads/educational/1773561961_DentalCrownProcedure.mp4', '2026-03-15 08:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `action` varchar(50) NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `email`, `otp`, `action`, `expires_at`, `created_at`) VALUES
(24, 'bhanupilli99@gmail.com', '1312', 'Password Reset', '2026-03-05 23:50:07', '2026-03-05 18:10:07'),
(35, 'bhanu=9999@gmail.com', '0283', 'Registration Verification', '2026-03-18 12:15:27', '2026-03-18 06:35:27');

-- --------------------------------------------------------

--
-- Table structure for table `patient_medical_conditions`
--

CREATE TABLE `patient_medical_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `condition_name` varchar(100) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_medical_conditions`
--

INSERT INTO `patient_medical_conditions` (`id`, `patient_id`, `condition_name`, `details`) VALUES
(1, 8, 'Diabetes', NULL),
(2, 8, 'Heart Disease', NULL),
(3, 40, 'check Diabetes', NULL),
(4, 40, 'check Heart Disease', NULL),
(5, 48, 'check Diabetes', NULL),
(6, 48, 'check Heart Disease', NULL),
(7, 50, 'check Diabetes', NULL),
(8, 52, 'check Diabetes', NULL),
(9, 52, 'check Hypertension', NULL),
(10, 58, 'check Hypertension', NULL),
(11, 59, 'Heart Disease', NULL),
(12, 59, 'Hypertension', NULL),
(13, 61, 'Heart Disease', NULL),
(14, 61, 'Hypertension', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_profiles`
--

CREATE TABLE `patient_profiles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `residential_address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `allergies` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_profiles`
--

INSERT INTO `patient_profiles` (`user_id`, `full_name`, `mobile_number`, `dob`, `gender`, `residential_address`, `city`, `state`, `pincode`, `allergies`, `created_at`, `updated_at`) VALUES
(8, 'm mohan Reddy', '1234567890', '2005-12-22', 'Male', 'house', 'chennai', 'ehjs', '727737', 'dot ', '2026-02-20 18:22:18', '2026-02-20 18:22:18'),
(16, 'patient Sandeep', '1237668988', '2000-12-12', 'Male', 'house', 'ciry', 'state', '628388', 'alerugises ', '2026-02-22 11:18:55', '2026-02-22 11:18:55'),
(18, 'jvivgihi', '3883383838', '2002-12-22', 'Male', 'b', 'v', 'g', '123456', '', '2026-02-25 07:50:09', '2026-02-25 07:50:09'),
(25, 'Anshul', '7816014770', '2004-12-07', 'Male', 'Vijayawada', 'bhavanipuram', 'Ap', '521105', '', '2026-02-26 16:22:54', '2026-02-26 16:22:54'),
(30, 'Sandeep patient', '4683836868', '2000-12-22', 'Male', '1', 'ch', 'tn', '166565', '', '2026-02-26 18:30:08', '2026-02-26 18:30:08'),
(32, 'MOHAN REDDY M', '1234567890', '2005-12-22', 'Male', 'home', 'ch', 'TN', '134698', 'no allergies ', '2026-02-28 16:04:14', '2026-02-28 16:04:14'),
(35, 'sahasra', '4567891235', '2000-12-04', 'Female', 'sai nagar', 'chsmmbaj', 'tamilnadu', '568974', '', '2026-03-05 17:52:30', '2026-03-05 17:52:30'),
(38, 'kumar raja', '7864528964', '2004-02-12', 'Male', 'raheja', 'chennai', 'tamilnadu', '602105', '', '2026-03-07 07:49:37', '2026-03-07 07:49:37'),
(40, 'sandeep', '1233242342', '2005-12-22', 'Female', 'house', 'ch', 'tn', '123466', 'cabbage', '2026-03-15 07:32:59', '2026-03-15 07:32:59'),
(48, 'PILLI BHANU SANDEEP KUMAR', '7816014770', '2005-12-22', 'Female', 'House', 'ch', 'TN', '123466', 'peanuts', '2026-03-15 07:49:56', '2026-03-15 07:49:56'),
(50, 'sharma sri', '2345678908', '2009-09-11', 'Female', 'fghjkl', 'fg', 'vnm', '678900', 'ghj', '2026-03-15 08:08:23', '2026-03-15 08:08:23'),
(51, 'Dinesh', '9145542356', '2005-05-12', 'Male', 'kokapet', 'chennai', 'tamil nadu', '602105', '', '2026-03-18 04:25:52', '2026-03-18 04:25:52'),
(52, 'Sandeep', '1235548919', '2000-12-12', 'Female', 'g', '4ch', 'rt', '324234', 'cabbage', '2026-03-18 05:17:51', '2026-03-18 05:17:51'),
(58, 'Dinesh varma', '6787898909', '2007-09-12', 'Male', 'junction', 'fg', 'AP', '602105', '', '2026-03-18 06:53:49', '2026-03-18 06:53:49'),
(59, 'P Sandeep Patient', '1951981984', '2000-12-12', 'Female', 'h', 'ch', 'tn', '234234', 'cabbage', '2026-03-18 07:47:05', '2026-03-18 07:47:05'),
(61, 'Raju', '1258647891', '2005-07-04', 'Male', 'chennai', 'chennai', 'tamilnadu', '601458', '', '2026-03-24 10:26:31', '2026-03-24 10:26:31');

-- --------------------------------------------------------

--
-- Table structure for table `procedure_alternatives`
--

CREATE TABLE `procedure_alternatives` (
  `id` int(11) NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `pros` text DEFAULT NULL,
  `cons` text DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `procedure_alternatives`
--

INSERT INTO `procedure_alternatives` (`id`, `operation_type_id`, `name`, `description`, `pros`, `cons`, `display_order`, `created_at`) VALUES
(1, 1, 'Dental Crown', NULL, 'Faster, cheaper, no surgery', 'Requires shaving healthy tooth, shorter life', 0, '2026-02-23 17:03:54'),
(2, 1, 'Tooth-Supported Bridge', NULL, 'No implant surgery', 'Affects two healthy teeth', 0, '2026-02-23 17:03:54'),
(3, 1, 'Partial Denture', NULL, 'Removable, no surgery', 'Less stable, may feel bulky', 0, '2026-02-23 17:03:54'),
(4, 2, 'Traditional Bridge', NULL, 'Fixed restoration, faster than implants', 'Requires altering adjacent teeth', 0, '2026-02-23 17:03:54'),
(5, 2, 'Partial Denture', NULL, 'Cost-effective, non-invasive', 'Removable, functional limitations', 0, '2026-02-23 17:03:54'),
(6, 3, 'Complete Denture', NULL, 'No surgery required, economical', 'Can slip while eating, bone loss over time', 0, '2026-02-23 17:03:54'),
(7, 3, 'Implant-Supported Denture', NULL, 'More stable than traditional dentures, removable for cleaning', 'Requires surgery, takes months to heal', 0, '2026-02-23 17:03:54'),
(8, 4, 'Traditional Bridge', NULL, 'No surgery needed, quicker result', 'Fails if supporting teeth decay', 0, '2026-02-23 17:03:54'),
(9, 4, 'Partial Denture', NULL, 'Cheaper, no surgery', 'Removable, metal clasps may be visible', 0, '2026-02-23 17:03:54'),
(10, 4, 'Multiple Single Crowns', NULL, 'Independent restorations, easier to floss', 'Requires more implants, higher cost', 0, '2026-02-23 17:03:54'),
(11, 5, 'Complete Denture', NULL, 'Economical, no surgical phase', 'Poor retention, affects chewing', 0, '2026-02-23 17:03:54'),
(12, 5, 'Traditional Partial Denture', NULL, 'Cheaper, easier to make', 'Relies on remaining teeth, bone resorption', 0, '2026-02-23 17:03:54'),
(13, 6, 'No grafting (if possible)', NULL, 'Saves time and money, less surgery', 'Higher risk of implant failure if bone is insufficient', 0, '2026-02-23 17:03:54'),
(14, 6, 'Different grafting material', NULL, 'Avoids taking bone from another site', 'May take longer to integrate', 0, '2026-02-23 17:03:54'),
(15, 6, 'Shorter implant without graft', NULL, 'Less invasive, faster recovery', 'May not bear heavy bite forces', 0, '2026-02-23 17:03:54'),
(16, 7, 'Veneer', NULL, 'More conservative, preserves tooth structure', 'Only fixes front surface, prone to chipping', 0, '2026-02-23 17:03:54'),
(17, 7, 'Composite Filling', NULL, 'One visit, cheapest option', 'Stains easily, lacks strength of the crown', 0, '2026-02-23 17:03:54'),
(18, 7, 'Extraction + Implant', NULL, 'Permanent fix, highly durable', 'Invasive, expensive, long process', 0, '2026-02-23 17:03:54'),
(19, 8, 'Implant-Supported Bridge', NULL, 'Does not damage adjacent teeth, prevents bone loss', 'Requires surgery, more expensive', 0, '2026-02-23 17:03:54'),
(20, 8, 'Partial Denture', NULL, 'No grinding of teeth, affordable', 'Removable, less comfortable', 0, '2026-02-23 17:03:54'),
(21, 8, 'Multiple Crowns', NULL, 'Individual teeth, easy to clean', 'Needs an implant for each missing tooth', 0, '2026-02-23 17:03:54'),
(22, 9, 'Implant-Supported Denture', NULL, 'Excellent stability, improves chewing force', 'High cost, requires surgery', 0, '2026-02-23 17:03:54'),
(23, 9, 'Full Arch Implant', NULL, 'Fixed permanently, feels like natural teeth', 'Most expensive, complex procedure', 0, '2026-02-23 17:03:54'),
(24, 10, 'Implant-Supported Partial', NULL, 'Very stable, no metal clasps', 'Requires surgery, healing time', 0, '2026-02-23 17:03:54'),
(25, 10, 'Fixed Bridge', NULL, 'Non-removable, feels natural', 'Requires filing down healthy abutment teeth', 0, '2026-02-23 17:03:54'),
(26, 11, 'Crown', NULL, 'Covers entire tooth, stronger', 'Requires removal of more tooth structure', 0, '2026-02-23 17:03:54'),
(27, 11, 'Composite Bonding', NULL, 'Single visit, cheaper, easy to repair', 'Stains over time, less durable', 0, '2026-02-23 17:03:54'),
(28, 11, 'No treatment (if minor)', NULL, 'Zero cost, no enamel removal', 'Does not fix cosmetic imperfections', 0, '2026-02-23 17:03:54'),
(29, 12, 'Full Arch Implants', NULL, 'Permanent, mimics natural teeth', 'Most invasive, expensive', 0, '2026-02-23 17:03:54'),
(30, 12, 'Complete Dentures', NULL, 'Least invasive, budget-friendly', 'Bone loss, removable', 0, '2026-02-23 17:03:54'),
(31, 12, 'Combination (Crowns + Bridges)', NULL, 'Saves remaining healthy teeth', 'Complex treatment plan, varying durability', 0, '2026-02-23 17:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `procedure_benefits`
--

CREATE TABLE `procedure_benefits` (
  `id` int(11) NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `display_order` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `procedure_benefits`
--

INSERT INTO `procedure_benefits` (`id`, `operation_type_id`, `title`, `description`, `display_order`) VALUES
(1, 1, 'Preserves Adjacent Teeth', 'No need to cut healthy neighboring teeth unlike bridge', 1),
(2, 1, 'Stops Bone Loss', 'Implant acts as natural root and prevents jawbone resorption', 2),
(3, 1, 'Natural Look & Feel', 'Looks, feels and functions exactly like your own tooth', 3),
(4, 1, 'Long Lasting', '95–98% success rate at 10+ years with proper care', 4),
(5, 1, 'High Confidence', 'Eat, speak and smile without worry', 5),
(6, 2, 'No Damage to Healthy Teeth', 'Implants replace missing teeth independently', 1),
(7, 2, 'Better Chewing Power', 'Stable and strong like natural teeth', 2),
(8, 2, 'Bone Preservation', 'Prevents further bone loss in the area', 3),
(9, 2, 'Aesthetic Restoration', 'Seamless smile with fixed crowns/bridge', 4),
(10, 3, 'Teeth in a Day', 'Fixed temporary teeth same day in most cases', 1),
(11, 3, 'Fixed Solution', 'No removable denture – feels permanent', 2),
(12, 3, 'Excellent Stability', '96–98% success rate', 3),
(13, 3, 'Restores Full Function', 'Eat anything you want', 4),
(14, 4, 'No Grinding Healthy Teeth', 'Supported only by implants', 1),
(15, 4, 'Strong & Durable', 'Better than traditional bridge', 2),
(16, 4, 'Bone Preservation', 'Maintains jawbone volume', 3),
(17, 5, 'No More Loose Denture', 'Snaps securely on implants', 1),
(18, 5, '80–90% Chewing Efficiency', 'Much better than conventional denture', 2),
(19, 5, 'Improved Speech & Confidence', 'Stable during talking and eating', 3),
(20, 6, 'Enables Implant Placement', 'Creates sufficient bone where it was lacking', 1),
(21, 6, 'Long-term Success', 'Up to 100% success when done correctly', 2),
(22, 6, 'Natural Bone Regeneration', 'Uses your own or advanced materials', 3),
(23, 7, 'Saves Damaged Tooth', 'Protects weak tooth from further damage', 1),
(24, 7, 'Restores Strength & Beauty', 'Looks and functions naturally', 2),
(25, 7, '10–15+ Years Durability', 'With good oral hygiene', 3),
(26, 8, 'Quick Solution', 'Faster and cheaper than implants', 1),
(27, 8, 'Restores Missing Teeth', 'Fixed and natural looking', 2),
(28, 9, 'Restores Smile Quickly', 'Full set of teeth in few visits', 1),
(29, 9, 'Affordable Option', 'When implants not possible', 2),
(30, 10, 'Preserves Remaining Teeth', 'Clasps on natural teeth', 1),
(31, 10, 'Removable & Easy to Clean', 'Convenient for patient', 2),
(32, 11, 'Dramatic Smile Makeover', 'Minimal tooth reduction', 1),
(33, 11, 'Stain Resistant', 'Beautiful long-lasting results', 2),
(34, 12, 'Complete Oral Restoration', 'Fixes function + aesthetics', 1),
(35, 12, 'Long-term Solution', 'Custom comprehensive plan', 2);

-- --------------------------------------------------------

--
-- Table structure for table `procedure_checklists`
--

CREATE TABLE `procedure_checklists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `display_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `procedure_checklists`
--

INSERT INTO `procedure_checklists` (`id`, `operation_type_id`, `title`, `description`, `tag`, `display_order`) VALUES
(93, 25, 'Procedure Understanding', 'I have been explained the details of this procedure and I understand them.', 'GENERAL', 1),
(94, 25, 'Risk Acknowledgement', 'I understand the risks, side effects, and possible complications of this treatment.', 'GENERAL', 2),
(95, 25, 'Alternative Options', 'I have been informed about alternative treatments available to me.', 'GENERAL', 3),
(96, 25, 'Questions Answered', 'All my questions and concerns regarding this treatment have been answered to my satisfaction.', 'GENERAL', 4),
(97, 25, 'Voluntary Consent', 'I am giving my consent voluntarily and I know I can withdraw it at any time.', 'GENERAL', 5);

-- --------------------------------------------------------

--
-- Table structure for table `procedure_risks`
--

CREATE TABLE `procedure_risks` (
  `id` int(11) NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `risk_percentage` decimal(5,2) DEFAULT NULL,
  `display_order` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `procedure_risks`
--

INSERT INTO `procedure_risks` (`id`, `operation_type_id`, `title`, `description`, `risk_percentage`, `display_order`) VALUES
(1, 1, 'Peri-implantitis (Infection)', 'Inflammation around implant', 5.00, 1),
(2, 1, 'Early Implant Failure', 'Before loading', 2.50, 2),
(3, 1, 'Nerve Damage / Sinus Issue', 'With proper planning', 0.80, 3),
(4, 2, 'Infection', 'Same as single', 5.50, 1),
(5, 2, 'Implant Failure', 'Slightly higher load', 3.50, 2),
(6, 3, 'Implant Failure', 'All-on-4/All-on-6', 2.80, 1),
(7, 3, 'Provisional Fracture', 'Temporary teeth', 8.00, 2),
(8, 4, 'Peri-implantitis', '', 5.00, 1),
(9, 4, 'Mechanical Complication', 'Screw loosening', 4.00, 2),
(10, 5, 'Attachment Wear', 'Need replacement', 15.00, 1),
(11, 5, 'Peri-implantitis', '', 6.00, 2),
(12, 6, 'Graft Failure', '', 5.00, 1),
(13, 6, 'Infection/Swelling', '', 4.50, 2),
(14, 7, 'Need for Root Canal', 'After preparation', 7.00, 1),
(15, 7, 'Crown Fracture', '', 4.00, 2),
(16, 8, 'Decay under Bridge', 'Over 10 years', 15.00, 1),
(17, 8, 'Bone Loss under Pontic', '', 20.00, 2),
(18, 9, 'Loose over time', 'Due to bone resorption', 60.00, 1),
(19, 9, 'Sore spots', 'Initial period', 40.00, 2),
(20, 10, 'Clasp loosening', '', 25.00, 1),
(21, 10, 'Bone loss under base', '', 30.00, 2),
(22, 11, 'Chipping', '', 4.00, 1),
(23, 11, 'Sensitivity', '', 8.00, 2),
(24, 12, 'Longer Treatment Time', '', 100.00, 1),
(25, 12, 'Higher Overall Cost', '', 100.00, 2),
(33, 25, 'VIK', 'GBJNK', 5.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `procedure_steps`
--

CREATE TABLE `procedure_steps` (
  `id` int(11) NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `step_number` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `duration_note` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `procedure_steps`
--

INSERT INTO `procedure_steps` (`id`, `operation_type_id`, `step_number`, `title`, `description`, `duration_note`, `created_at`) VALUES
(1, 1, 1, 'Consultation & Diagnostics', 'Thorough exam, medical history, X-rays, and CBCT scan to assess bone and plan implant position.', '45–90 min', '2026-02-21 16:02:50'),
(2, 1, 2, 'Tooth Extraction (if needed)', 'Gentle removal of damaged tooth/root to preserve bone.', '15–45 min', '2026-02-21 16:02:50'),
(3, 1, 3, 'Bone Grafting / Preparation (if required)', 'Augment bone volume if insufficient for implant stability.', '30–60 min', '2026-02-21 16:02:50'),
(4, 1, 4, 'Implant Placement Surgery', 'Titanium post surgically inserted into jawbone under local anesthesia.', '45–90 min', '2026-02-21 16:02:50'),
(5, 1, 5, 'Osseointegration & Healing', 'Implant fuses with bone; healing abutment or cover screw in place.', '3–6 months', '2026-02-21 16:02:50'),
(6, 1, 6, 'Abutment Placement', 'Expose implant and attach connector (abutment).', '20–40 min', '2026-02-21 16:02:50'),
(7, 1, 7, 'Impressions & Crown Fabrication', 'Digital/traditional impressions; lab fabricates custom crown.', '1–3 weeks', '2026-02-21 16:02:50'),
(8, 1, 8, 'Final Crown Delivery', 'Permanent crown cemented/screwed; occlusion and fit verified.', '30–60 min', '2026-02-21 16:02:50'),
(9, 1, 9, 'Follow-up Care', 'Regular hygiene checks and peri-implant monitoring.', 'Ongoing', '2026-02-21 16:02:50'),
(10, 2, 1, 'Consultation & 3D Planning', 'CBCT imaging and planning for 2–4 implant positions.', '60–120 min', '2026-02-21 16:02:50'),
(11, 2, 2, 'Extractions (if necessary)', 'Removal of failing teeth in the area.', '30–60 min', '2026-02-21 16:02:50'),
(12, 2, 3, 'Implant Placement', 'Surgical insertion of multiple implants to support bridge.', '90–180 min', '2026-02-21 16:02:50'),
(13, 2, 4, 'Healing Phase', 'Osseointegration with possible temporary restoration.', '3–6 months', '2026-02-21 16:02:50'),
(14, 2, 5, 'Abutment Connection', 'Attach multi-unit abutments.', '30–60 min', '2026-02-21 16:02:50'),
(15, 2, 6, 'Final Bridge Delivery', 'Custom multi-unit bridge seated and adjusted.', '60–90 min', '2026-02-21 16:02:50'),
(16, 3, 1, 'Comprehensive Planning & Imaging', 'CBCT, digital smile design, and guided surgery planning.', '60–120 min', '2026-02-21 16:02:50'),
(17, 3, 2, 'Extractions & Bone Preparation', 'Remove remaining teeth; contour bone if needed.', 'Part of surgery', '2026-02-21 16:02:50'),
(18, 3, 3, 'Implant Placement', 'Strategic placement of 4–6 angled implants for immediate load.', '2–4 hours', '2026-02-21 16:02:50'),
(19, 3, 4, 'Immediate Provisional Prosthesis', 'Attach fixed temporary bridge same day (Teeth-in-a-Day).', 'Same day', '2026-02-21 16:02:50'),
(20, 3, 5, 'Healing & Osseointegration', 'Bone integration while wearing provisional.', '3–6 months', '2026-02-21 16:02:50'),
(21, 3, 6, 'Final Prosthesis Delivery', 'Permanent fixed bridge/hybrid delivered and fine-tuned.', '2–3 visits', '2026-02-21 16:02:50'),
(22, 4, 1, 'Evaluation & Imaging', 'Assess bone and plan 2–3 implant positions.', '45–90 min', '2026-02-21 16:02:50'),
(23, 4, 2, 'Implant Placement Surgery', 'Insert implants to anchor the bridge.', '90–150 min', '2026-02-21 16:02:50'),
(24, 4, 3, 'Healing Period', 'Osseointegration with healing components.', '3–6 months', '2026-02-21 16:02:50'),
(25, 4, 4, 'Abutment & Impressions', 'Place multi-unit abutments; take impressions.', '45–60 min', '2026-02-21 16:02:50'),
(26, 4, 5, 'Final Bridge Delivery', 'Cement/seat permanent bridge; verify fit.', '60–90 min', '2026-02-21 16:02:50'),
(27, 5, 1, 'Consultation & Diagnostics', 'CBCT to plan 2–6 implant positions.', '60 min', '2026-02-21 16:02:50'),
(28, 5, 2, 'Implant Placement', 'Surgical placement of implants (Locator/bar system).', '1–3 hours', '2026-02-21 16:02:50'),
(29, 5, 3, 'Healing Phase', 'Osseointegration; use modified existing denture temporarily.', '3–6 months', '2026-02-21 16:02:50'),
(30, 5, 4, 'Abutment Placement & Impressions', 'Attach Locator/bar abutments; final impressions.', '45–90 min', '2026-02-21 16:02:50'),
(31, 5, 5, 'Jaw Records & Try-in', 'Bite registration, tooth setup, wax try-in.', '60–90 min', '2026-02-21 16:02:50'),
(32, 5, 6, 'Final Overdenture Delivery', 'Process attachments; deliver and adjust denture.', '60–90 min', '2026-02-21 16:02:50'),
(33, 6, 1, 'Assessment & CBCT', 'Evaluate defect and select graft type (autograft/allograft/etc.).', '45–60 min', '2026-02-21 16:02:50'),
(34, 6, 2, 'Surgical Preparation', 'Flap elevation and site cleaning.', 'Part of surgery', '2026-02-21 16:02:50'),
(35, 6, 3, 'Graft Placement', 'Apply graft material ± membrane for containment.', '45–120 min', '2026-02-21 16:02:50'),
(36, 6, 4, 'Closure & Initial Healing', 'Suture site; allow maturation.', '4–9 months', '2026-02-21 16:02:50'),
(37, 6, 5, 'Follow-up & Re-evaluation', 'Imaging to confirm integration before implants.', 'Ongoing', '2026-02-21 16:02:50'),
(38, 7, 1, 'Examination & Diagnosis', 'Assess tooth; X-rays to check vitality and structure.', '30–60 min', '2026-02-21 16:02:50'),
(39, 7, 2, 'Tooth Preparation', 'Anesthetic; reduce enamel/structure for crown space.', '45–90 min', '2026-02-21 16:02:50'),
(40, 7, 3, 'Impressions & Shade Selection', 'Digital scan or putty impression; match color.', '15–30 min', '2026-02-21 16:02:50'),
(41, 7, 4, 'Temporary Crown Placement', 'Protect tooth while permanent crown is fabricated.', 'Same day', '2026-02-21 16:02:50'),
(42, 7, 5, 'Permanent Crown Delivery', 'Remove temp; seat, adjust, and cement/bond crown.', '30–60 min', '2026-02-21 16:02:50'),
(43, 8, 1, 'Consultation & Planning', 'Evaluate abutment teeth and pontic space.', '45 min', '2026-02-21 16:02:50'),
(44, 8, 2, 'Abutment Preparation', 'Reduce/shape supporting teeth for crowns.', '60–120 min', '2026-02-21 16:02:50'),
(45, 8, 3, 'Impressions & Shade', 'Capture prepared teeth; select color.', '30 min', '2026-02-21 16:02:50'),
(46, 8, 4, 'Temporary Bridge Placement', 'Protect area with provisional bridge.', 'Same day', '2026-02-21 16:02:50'),
(47, 8, 5, 'Final Bridge Delivery', 'Cement permanent bridge; check occlusion.', '45–75 min', '2026-02-21 16:02:50'),
(48, 9, 1, 'Initial Impressions & Exam', 'Alginate impressions; oral health evaluation.', '45 min', '2026-02-21 16:02:50'),
(49, 9, 2, 'Custom Tray & Final Impressions', 'Border molding for accurate fit.', '60 min', '2026-02-21 16:02:50'),
(50, 9, 3, 'Jaw Relation & Wax Try-in', 'Vertical dimension, centric relation, tooth setup.', '60–90 min', '2026-02-21 16:02:50'),
(51, 9, 4, 'Aesthetic & Functional Try-in', 'Verify appearance, speech, and bite in wax.', '45 min', '2026-02-21 16:02:50'),
(52, 9, 5, 'Processing & Delivery', 'Lab processes acrylic; deliver and adjust.', '60 min', '2026-02-21 16:02:50'),
(53, 10, 1, 'Examination & Design', 'Assess remaining teeth; plan clasps/rests.', '45 min', '2026-02-21 16:02:50'),
(54, 10, 2, 'Impressions & Surveying', 'Detailed impressions; surveyor for RPD framework.', '60 min', '2026-02-21 16:02:50'),
(55, 10, 3, 'Framework Try-in', 'Check metal framework fit.', '30–45 min', '2026-02-21 16:02:50'),
(56, 10, 4, 'Tooth Setup & Wax Try-in', 'Arrange teeth; verify occlusion.', '45 min', '2026-02-21 16:02:50'),
(57, 10, 5, 'Delivery & Adjustments', 'Process acrylic; seat partial and fine-tune.', '60 min', '2026-02-21 16:02:50'),
(58, 11, 1, 'Consultation & Smile Design', 'Discuss goals; mock-up/digital preview.', '45–60 min', '2026-02-21 16:02:50'),
(59, 11, 2, 'Tooth Preparation', 'Minimal enamel reduction (0.3–0.7 mm) on facial surface.', '60–90 min', '2026-02-21 16:02:50'),
(60, 11, 3, 'Impressions & Shade Selection', 'Digital scan/impression; choose veneer color.', '30 min', '2026-02-21 16:02:50'),
(61, 11, 4, 'Temporary Veneers (optional)', 'Place provisionals for protection/aesthetics.', 'Same day', '2026-02-21 16:02:50'),
(62, 11, 5, 'Veneer Bonding', 'Etch, bond, cement veneers; polish and adjust.', '60–120 min', '2026-02-21 16:02:50'),
(63, 12, 1, 'Comprehensive Diagnosis', 'Full exam, photos, CBCT, models, records.', '90–180 min', '2026-02-21 16:02:50'),
(64, 12, 2, 'Treatment Planning & Mock-up', 'Wax-up/digital design for proposed restorations.', 'Multiple visits', '2026-02-21 16:02:50'),
(65, 12, 3, 'Preparatory Work', 'Extractions, endo, perio therapy as needed.', 'Varies', '2026-02-21 16:02:50'),
(66, 12, 4, 'Tooth Preparation & Provisionals', 'Prep teeth; place temporary crowns/bridges.', 'Several appointments', '2026-02-21 16:02:50'),
(67, 12, 5, 'Final Restorations Delivery', 'Seat permanent crowns/bridges/veneers; adjust bite.', 'Multiple visits', '2026-02-21 16:02:50'),
(68, 12, 6, 'Maintenance Phase', 'Occlusal adjustments, hygiene, nightguard.', 'Ongoing', '2026-02-21 16:02:50'),
(83, 25, 1, 'HJI', 'JNEMEO,', NULL, '2026-03-15 08:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_attempts`
--

CREATE TABLE `quiz_attempts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `treatment_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` text NOT NULL,
  `selected_option` text NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_attempts`
--

INSERT INTO `quiz_attempts` (`id`, `treatment_id`, `question_text`, `selected_option`, `is_correct`, `created_at`) VALUES
(234, 14, 'How many implants are usually placed?', 'B) 2–4', 1, '2026-02-24 08:44:51'),
(235, 14, 'How does the denture stay in place?', 'B) Snaps onto implants', 1, '2026-02-24 08:44:51'),
(236, 14, 'Chewing efficiency compared to normal denture?', 'B) 80–90% of natural teeth', 1, '2026-02-24 08:44:51'),
(237, 14, 'Can patient remove the denture?', 'B) Yes, for cleaning', 1, '2026-02-24 08:44:51'),
(238, 14, 'Attachments need replacement every', 'A) 1–2 years', 1, '2026-02-24 08:44:51'),
(239, 14, 'Main benefit?', 'A) No more loose denture while eating/speaking', 1, '2026-02-24 08:44:51'),
(240, 14, 'Healing time before snapping denture?', 'A) 3–6 months', 1, '2026-02-24 08:44:51'),
(241, 14, 'Success rate same as?', 'A) Regular implants (95–98%)', 1, '2026-02-24 08:44:51'),
(314, 28, 'How many implants support a bridge of 3–5 teeth?', 'B) 2 or 3', 1, '2026-02-28 15:58:47'),
(315, 28, 'Advantage over traditional bridge?', 'A) No grinding of healthy side teeth', 1, '2026-02-28 15:58:47'),
(316, 28, 'Healing time before final bridge?', 'A) 3–6 months', 1, '2026-02-28 15:58:47'),
(317, 28, 'Success rate is', 'A) Same as single implant (95–98%)', 1, '2026-02-28 15:58:47'),
(318, 28, 'The bridge is', 'B) Fixed (screwed or cemented)', 1, '2026-02-28 15:58:47'),
(319, 28, 'Main risk?', 'A) Same as single implant (infection 5–7%)', 1, '2026-02-28 15:58:47'),
(320, 28, 'Why is bone preserved?', 'A) Implants act like natural roots', 1, '2026-02-28 15:58:47'),
(321, 28, 'Best for?', 'A) 3–5 missing teeth in a row', 1, '2026-02-28 15:58:47'),
(322, 29, 'How many implants support a bridge of 3–5 teeth?', 'B) 2 or 3', 1, '2026-03-01 06:34:15'),
(323, 29, 'Advantage over traditional bridge?', 'A) No grinding of healthy side teeth', 1, '2026-03-01 06:34:15'),
(324, 29, 'Healing time before final bridge?', 'A) 3–6 months', 1, '2026-03-01 06:34:15'),
(325, 29, 'Success rate is', 'A) Same as single implant (95–98%)', 1, '2026-03-01 06:34:15'),
(326, 29, 'The bridge is', 'B) Fixed (screwed or cemented)', 1, '2026-03-01 06:34:15'),
(327, 29, 'Main risk?', 'A) Same as single implant (infection 5–7%)', 1, '2026-03-01 06:34:15'),
(328, 29, 'Why is bone preserved?', 'A) Implants act like natural roots', 1, '2026-03-01 06:34:15'),
(329, 29, 'Best for?', 'A) 3–5 missing teeth in a row', 1, '2026-03-01 06:34:15'),
(346, 30, 'How many implants are usually placed?', 'B) 2–4', 1, '2026-03-05 14:16:24'),
(347, 30, 'How does the denture stay in place?', 'B) Snaps onto implants', 1, '2026-03-05 14:16:24'),
(348, 30, 'Chewing efficiency compared to normal denture?', 'B) 80–90% of natural teeth', 1, '2026-03-05 14:16:24'),
(349, 30, 'Can patient remove the denture?', 'B) Yes, for cleaning', 1, '2026-03-05 14:16:24'),
(350, 30, 'Attachments need replacement every', 'A) 1–2 years', 1, '2026-03-05 14:16:24'),
(351, 30, 'Main benefit?', 'A) No more loose denture while eating/speaking', 1, '2026-03-05 14:16:24'),
(352, 30, 'Healing time before snapping denture?', 'A) 3–6 months', 1, '2026-03-05 14:16:24'),
(353, 30, 'Success rate same as?', 'A) Regular implants (95–98%)', 1, '2026-03-05 14:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` int(11) NOT NULL,
  `operation_type_id` int(11) NOT NULL,
  `language` varchar(10) DEFAULT 'en',
  `question_text` text NOT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`options`)),
  `correct_option_index` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `operation_type_id`, `language`, `question_text`, `options`, `correct_option_index`, `created_at`) VALUES
(1, 1, 'en', 'What is a single tooth implant made of?', '[\"A) Plastic\",\"B) Titanium screw\",\"C) Gold\",\"D) Ceramic only\"]', 1, '2026-02-27 14:32:01'),
(2, 1, 'en', 'How long does the implant usually take to fuse with the jawbone?', '[\"A) 1 week\",\"B) 3–6 months\",\"C) 1 year\",\"D) 2 weeks\"]', 1, '2026-02-27 14:32:01'),
(3, 1, 'en', 'What is the biggest benefit of a single tooth implant?', '[\"A) It is the cheapest option\",\"B) It stops bone loss and looks natural\",\"C) It is removable\",\"D) No need for any surgery\"]', 1, '2026-02-27 14:32:01'),
(4, 1, 'en', 'After implant placement, when is the final crown fixed?', '[\"A) Same day\",\"B) After 3–6 months of healing\",\"C) After 1 month\",\"D) Never\"]', 1, '2026-02-27 14:32:01'),
(5, 1, 'en', 'What is the success rate of single tooth implants after 10 years?', '[\"A) 50–60%\",\"B) 95–98%\",\"C) 80%\",\"D) 100%\"]', 1, '2026-02-27 14:32:01'),
(6, 1, 'en', 'Who should NOT get an implant without extra care?', '[\"A) Healthy young person\",\"B) Smoker or person with uncontrolled diabetes\",\"C) Person with good teeth\",\"D) Child under 18\"]', 1, '2026-02-27 14:32:01'),
(7, 1, 'en', 'During implant surgery, do you feel pain?', '[\"A) Yes, very painful\",\"B) No – local anesthesia is given\",\"C) Only slight pain\",\"D) Only if you move\"]', 1, '2026-02-27 14:32:01'),
(8, 1, 'en', 'What happens if you don’t replace a missing tooth with an implant?', '[\"A) Nothing\",\"B) Neighbouring teeth shift and bone melts away\",\"C) Only gums hurt\",\"D) You can eat better\"]', 1, '2026-02-27 14:32:01'),
(9, 2, 'en', 'How many implants are usually placed for 2–4 missing teeth?', '[\"A) 1\",\"B) 2–4\",\"C) 8\",\"D) 10\"]', 1, '2026-02-27 14:32:01'),
(10, 2, 'en', 'What is the main advantage over a traditional bridge?', '[\"A) No healthy teeth are cut\",\"B) It is cheaper\",\"C) It is removable\",\"D) Faster healing\"]', 0, '2026-02-27 14:32:01'),
(11, 2, 'en', 'Healing time is same as single tooth implant?', '[\"A) Yes, 3–6 months\",\"B) Only 1 month\",\"C) 1 year\",\"D) No healing needed\"]', 0, '2026-02-27 14:32:01'),
(12, 2, 'en', 'Success rate is usually', '[\"A) Lower than single implant\",\"B) Same or slightly higher\",\"C) 50%\",\"D) 70%\"]', 1, '2026-02-27 14:32:01'),
(13, 2, 'en', 'Can multiple implants support individual crowns?', '[\"A) No\",\"B) Yes\",\"C) Only bridges\",\"D) Only dentures\"]', 1, '2026-02-27 14:32:01'),
(14, 2, 'en', 'Main risk is same as single implant:', '[\"A) Infection ~5–7%\",\"B) No risk\",\"C) Always fails\",\"D) Only cosmetic problem\"]', 0, '2026-02-27 14:32:01'),
(15, 2, 'en', 'After healing, the final teeth are', '[\"A) Removable\",\"B) Fixed crowns or small bridge\",\"C) Temporary only\",\"D) Metal only\"]', 1, '2026-02-27 14:32:01'),
(16, 2, 'en', 'Why is it better than one big bridge on natural teeth?', '[\"A) Preserves bone and healthy teeth\",\"B) Costs less\",\"C) Faster\",\"D) No visits needed\"]', 0, '2026-02-27 14:32:01'),
(17, 3, 'en', 'How many implants are used for the entire upper or lower jaw?', '[\"A) 1–2\",\"B) 4 or 6\",\"C) 12\",\"D) 20\"]', 1, '2026-02-27 14:32:01'),
(18, 3, 'en', 'What is “Teeth in a Day”?', '[\"A) Temporary teeth fixed on same day of surgery\",\"B) Final teeth in one day\",\"C) Only cleaning\",\"D) No surgery\"]', 0, '2026-02-27 14:32:01'),
(19, 3, 'en', 'Success rate of All-on-4 after 5–10 years?', '[\"A) 70%\",\"B) 96–98%\",\"C) 50%\",\"D) 85%\"]', 1, '2026-02-27 14:32:01'),
(20, 3, 'en', 'Main benefit compared to complete denture?', '[\"A) Fixed teeth, no removal\",\"B) Cheaper\",\"C) No surgery\",\"D) Temporary\"]', 0, '2026-02-27 14:32:01'),
(21, 3, 'en', 'After surgery you get', '[\"A) No teeth for 6 months\",\"B) Temporary fixed teeth same day\",\"C) Only soft diet forever\",\"D) Removable denture\"]', 1, '2026-02-27 14:32:01'),
(22, 3, 'en', 'All-on-6 is safer than All-on-4 because', '[\"A) More implants share the load\",\"B) Less cost\",\"C) Faster surgery\",\"D) No healing\"]', 0, '2026-02-27 14:32:01'),
(23, 3, 'en', 'Can you eat normally after final bridge?', '[\"A) No\",\"B) Yes, almost like natural teeth\",\"C) Only liquids\",\"D) Only soft food\"]', 1, '2026-02-27 14:32:01'),
(24, 3, 'en', 'Who usually chooses full arch implants?', '[\"A) People with all teeth missing or badly damaged\",\"B) People with only one tooth missing\",\"C) Children\",\"D) People who want removable dentures\"]', 0, '2026-02-27 14:32:01'),
(25, 4, 'en', 'How many implants support a bridge of 3–5 teeth?', '[\"A) 1\",\"B) 2 or 3\",\"C) 6\",\"D) 10\"]', 1, '2026-02-27 14:32:01'),
(26, 4, 'en', 'Advantage over traditional bridge?', '[\"A) No grinding of healthy side teeth\",\"B) Cheaper\",\"C) Removable\",\"D) Faster\"]', 0, '2026-02-27 14:32:01'),
(27, 4, 'en', 'Healing time before final bridge?', '[\"A) 3–6 months\",\"B) Same day\",\"C) 1 week\",\"D) 2 years\"]', 0, '2026-02-27 14:32:01'),
(28, 4, 'en', 'Success rate is', '[\"A) Same as single implant (95–98%)\",\"B) Lower\",\"C) 60%\",\"D) 100%\"]', 0, '2026-02-27 14:32:01'),
(29, 4, 'en', 'The bridge is', '[\"A) Removable by patient\",\"B) Fixed (screwed or cemented)\",\"C) Plastic\",\"D) Temporary only\"]', 1, '2026-02-27 14:32:01'),
(30, 4, 'en', 'Main risk?', '[\"A) Same as single implant (infection 5–7%)\",\"B) No risk\",\"C) Always loose\",\"D) Colour change\"]', 0, '2026-02-27 14:32:01'),
(31, 4, 'en', 'Why is bone preserved?', '[\"A) Implants act like natural roots\",\"B) Bridge is heavy\",\"C) No surgery\",\"D) Only gums used\"]', 0, '2026-02-27 14:32:01'),
(32, 4, 'en', 'Best for?', '[\"A) 3–5 missing teeth in a row\",\"B) All teeth missing\",\"C) Single tooth\",\"D) Front teeth only\"]', 0, '2026-02-27 14:32:01'),
(33, 5, 'en', 'How many implants are usually placed?', '[\"A) 1\",\"B) 2–4\",\"C) 10\",\"D) 0\"]', 1, '2026-02-27 14:32:01'),
(34, 5, 'en', 'How does the denture stay in place?', '[\"A) Glue\",\"B) Snaps onto implants\",\"C) Suction only\",\"D) Wires\"]', 1, '2026-02-27 14:32:01'),
(35, 5, 'en', 'Chewing efficiency compared to normal denture?', '[\"A) 20–30%\",\"B) 80–90% of natural teeth\",\"C) Same as natural\",\"D) 10%\"]', 1, '2026-02-27 14:32:01'),
(36, 5, 'en', 'Can patient remove the denture?', '[\"A) No\",\"B) Yes, for cleaning\",\"C) Only dentist can\",\"D) Never\"]', 1, '2026-02-27 14:32:01'),
(37, 5, 'en', 'Attachments need replacement every', '[\"A) 1–2 years\",\"B) 10 years\",\"C) Never\",\"D) 6 months\"]', 0, '2026-02-27 14:32:01'),
(38, 5, 'en', 'Main benefit?', '[\"A) No more loose denture while eating\\/speaking\",\"B) Cheaper than normal denture\",\"C) No surgery\",\"D) Lasts forever without care\"]', 0, '2026-02-27 14:32:01'),
(39, 5, 'en', 'Healing time before snapping denture?', '[\"A) 3–6 months\",\"B) Same day\",\"C) 1 week\",\"D) 1 year\"]', 0, '2026-02-27 14:32:01'),
(40, 5, 'en', 'Success rate same as?', '[\"A) Regular implants (95–98%)\",\"B) Much lower\",\"C) 50%\",\"D) 70%\"]', 0, '2026-02-27 14:32:01'),
(41, 6, 'en', 'Why is bone grafting done?', '[\"A) When there is not enough bone for implant\",\"B) To make teeth whiter\",\"C) For cleaning\",\"D) Only for children\"]', 0, '2026-02-27 14:32:01'),
(42, 6, 'en', 'Healing time before placing implant?', '[\"A) 3–6 months\",\"B) 1 week\",\"C) Same day\",\"D) No healing\"]', 0, '2026-02-27 14:32:01'),
(43, 6, 'en', 'Success rate of bone graft?', '[\"A) Up to 100% when done correctly\",\"B) 50%\",\"C) 30%\",\"D) 70%\"]', 0, '2026-02-27 14:32:01'),
(44, 6, 'en', 'Common sources of bone?', '[\"A) Patient’s own, donor or synthetic\",\"B) Only plastic\",\"C) Only gold\",\"D) Teeth\"]', 0, '2026-02-27 14:32:01'),
(45, 6, 'en', 'Main risk?', '[\"A) Swelling or infection (<5–8%)\",\"B) No risk\",\"C) Always fails\",\"D) Pain forever\"]', 0, '2026-02-27 14:32:01'),
(46, 6, 'en', 'After grafting, what covers the bone?', '[\"A) Special membrane\",\"B) Nothing\",\"C) Crown\",\"D) Denture\"]', 0, '2026-02-27 14:32:01'),
(47, 6, 'en', 'Is bone grafting painful?', '[\"A) Done under local anesthesia, mild discomfort\",\"B) Very painful\",\"C) No anesthesia needed\",\"D) Only for upper jaw\"]', 0, '2026-02-27 14:32:01'),
(48, 6, 'en', 'Can implant be placed without grafting if bone is enough?', '[\"A) Yes\",\"B) No, always needed\",\"C) Only for children\",\"D) Only in India\"]', 0, '2026-02-27 14:32:01'),
(49, 7, 'en', 'What is a crown?', '[\"A) Cap that covers the whole tooth\",\"B) Filling inside tooth\",\"C) Removable plate\",\"D) Thin shell only on front\"]', 0, '2026-02-27 14:32:01'),
(50, 7, 'en', 'How much tooth is removed?', '[\"A) All of it\",\"B) Outer layer (shaped)\",\"C) Nothing\",\"D) Only half\"]', 1, '2026-02-27 14:32:01'),
(51, 7, 'en', 'How long does a crown usually last?', '[\"A) 1–2 years\",\"B) 10–15+ years\",\"C) Forever\",\"D) 6 months\"]', 1, '2026-02-27 14:32:01'),
(52, 7, 'en', 'Risk of needing root canal after crown?', '[\"A) 5–10%\",\"B) 50%\",\"C) 0%\",\"D) 100%\"]', 0, '2026-02-27 14:32:01'),
(53, 7, 'en', 'Material used for strong crowns?', '[\"A) Zirconia or porcelain\",\"B) Plastic only\",\"C) Gold only\",\"D) Wood\"]', 0, '2026-02-27 14:32:01'),
(54, 7, 'en', 'Temporary crown is given', '[\"A) While permanent is being made\",\"B) Forever\",\"C) Never\",\"D) Only for front teeth\"]', 0, '2026-02-27 14:32:01'),
(55, 7, 'en', 'Can you eat normally after permanent crown?', '[\"A) Yes, after anesthesia wears off\",\"B) Only liquids for 1 month\",\"C) No hard food ever\",\"D) Only soft food\"]', 0, '2026-02-27 14:32:01'),
(56, 7, 'en', 'Biggest benefit?', '[\"A) Saves damaged tooth and makes it strong\",\"B) Changes colour only\",\"C) Makes tooth smaller\",\"D) Removable\"]', 0, '2026-02-27 14:32:01'),
(57, 8, 'en', 'How many missing teeth can a bridge replace?', '[\"A) 1–3\",\"B) 10\",\"C) All teeth\",\"D) Only 1\"]', 0, '2026-02-27 14:32:01'),
(58, 8, 'en', 'Healthy teeth on sides are', '[\"A) Cut and covered with crowns\",\"B) Not touched\",\"C) Removed\",\"D) Only cleaned\"]', 0, '2026-02-27 14:32:01'),
(59, 8, 'en', 'Main disadvantage?', '[\"A) Bone loss under missing tooth area\",\"B) Cheaper\",\"C) No visits\",\"D) Removable\"]', 0, '2026-02-27 14:32:01'),
(60, 8, 'en', 'How long does bridge usually last?', '[\"A) 10–15 years\",\"B) 1 year\",\"C) Forever\",\"D) 6 months\"]', 0, '2026-02-27 14:32:01'),
(61, 8, 'en', 'Risk of decay under bridge?', '[\"A) 10–20% over 10 years\",\"B) 0%\",\"C) 100%\",\"D) 5%\"]', 0, '2026-02-27 14:32:01'),
(62, 8, 'en', 'Bridge is', '[\"A) Fixed, cannot be removed by patient\",\"B) Removable\",\"C) Snap-in\",\"D) Temporary only\"]', 0, '2026-02-27 14:32:01'),
(63, 8, 'en', 'Compared to implant bridge?', '[\"A) Faster and cheaper but damages healthy teeth\",\"B) Better for bone\",\"C) No difference\",\"D) Longer healing\"]', 0, '2026-02-27 14:32:01'),
(64, 8, 'en', 'After bridge cementation, you can eat', '[\"A) After 1–2 hours\",\"B) Next day only\",\"C) After 1 week\",\"D) Never hard food\"]', 0, '2026-02-27 14:32:01'),
(65, 9, 'en', 'Complete denture is used when?', '[\"A) All teeth in one jaw are missing\",\"B) Only one tooth missing\",\"C) Front teeth only\",\"D) Implants placed\"]', 0, '2026-02-27 14:32:01'),
(66, 9, 'en', 'How many visits are usually needed?', '[\"A) 5–7\",\"B) 1\",\"C) 2\",\"D) 10\"]', 0, '2026-02-27 14:32:01'),
(67, 9, 'en', 'Chewing power compared to natural teeth?', '[\"A) 20–30%\",\"B) 90%\",\"C) 100%\",\"D) 50%\"]', 0, '2026-02-27 14:32:01'),
(68, 9, 'en', 'Main problem over time?', '[\"A) Bone shrinks → denture becomes loose\",\"B) Colour fades\",\"C) Too tight\",\"D) No problem\"]', 0, '2026-02-27 14:32:01'),
(69, 9, 'en', 'Denture should be removed', '[\"A) At night for cleaning and gum rest\",\"B) Never\",\"C) Only when eating\",\"D) Only in morning\"]', 0, '2026-02-27 14:32:01'),
(70, 9, 'en', 'Sore spots are', '[\"A) Common in first few weeks, adjusted by dentist\",\"B) Permanent\",\"C) Never happen\",\"D) Only in upper jaw\"]', 0, '2026-02-27 14:32:01'),
(71, 9, 'en', 'Material of teeth in denture?', '[\"A) Acrylic (plastic)\",\"B) Metal\",\"C) Real teeth\",\"D) Gold\"]', 0, '2026-02-27 14:32:01'),
(72, 9, 'en', 'Benefit?', '[\"A) Restores smile and basic chewing quickly\",\"B) Stronger than implants\",\"C) No adjustments ever\",\"D) Lasts lifetime without change\"]', 0, '2026-02-27 14:32:01'),
(73, 10, 'en', 'Partial denture is used when?', '[\"A) Some natural teeth still remain\",\"B) All teeth missing\",\"C) Only front teeth missing\",\"D) Implants done\"]', 0, '2026-02-27 14:32:01'),
(74, 10, 'en', 'It stays in place by', '[\"A) Clasps on remaining teeth\",\"B) Implants\",\"C) Glue\",\"D) Suction\"]', 0, '2026-02-27 14:32:01'),
(75, 10, 'en', 'Framework is usually made of', '[\"A) Metal or flexible plastic\",\"B) Only plastic\",\"C) Gold\",\"D) Ceramic\"]', 0, '2026-02-27 14:32:01'),
(76, 10, 'en', 'Main disadvantage?', '[\"A) May feel bulky, clasps visible sometimes\",\"B) Very expensive\",\"C) Fixed forever\",\"D) No cleaning needed\"]', 0, '2026-02-27 14:32:01'),
(77, 10, 'en', 'Bone loss under partial denture?', '[\"A) Yes, over time\",\"B) No\",\"C) Only upper\",\"D) Faster than complete\"]', 0, '2026-02-27 14:32:01'),
(78, 10, 'en', 'How often should it be removed?', '[\"A) Daily for cleaning\",\"B) Never\",\"C) Only at night\",\"D) Weekly\"]', 0, '2026-02-27 14:32:01'),
(79, 10, 'en', 'Compared to implant-supported?', '[\"A) Cheaper but less stable\",\"B) More stable\",\"C) Same cost\",\"D) No difference\"]', 0, '2026-02-27 14:32:01'),
(80, 10, 'en', 'Adjustments are done', '[\"A) In first few weeks if sore\",\"B) Never\",\"C) After 1 year only\",\"D) Every month\"]', 0, '2026-02-27 14:32:01'),
(81, 11, 'en', 'Veneer is', '[\"A) Thin porcelain shell on front of tooth\",\"B) Full cap\",\"C) Filling\",\"D) Removable\"]', 0, '2026-02-27 14:32:01'),
(82, 11, 'en', 'How much enamel is removed?', '[\"A) Very little (0.3–0.5 mm)\",\"B) Half the tooth\",\"C) All enamel\",\"D) None\"]', 0, '2026-02-27 14:32:01'),
(83, 11, 'en', 'Best for', '[\"A) Front teeth – colour, shape, gaps\",\"B) Back teeth chewing\",\"C) Missing teeth\",\"D) Root canal teeth\"]', 0, '2026-02-27 14:32:01'),
(84, 11, 'en', 'Veneers are', '[\"A) Permanently bonded\",\"B) Removable daily\",\"C) Temporary\",\"D) Snap-on\"]', 0, '2026-02-27 14:32:01'),
(85, 11, 'en', 'Risk of chipping?', '[\"A) Less than 5%\",\"B) 50%\",\"C) 100%\",\"D) 20%\"]', 0, '2026-02-27 14:32:01'),
(86, 11, 'en', 'How long do veneers last?', '[\"A) 10–15+ years with care\",\"B) 1 year\",\"C) Forever without care\",\"D) 2 years\"]', 0, '2026-02-27 14:32:01'),
(87, 11, 'en', 'Can you eat hard food?', '[\"A) Yes, but avoid very hard things like ice\",\"B) No\",\"C) Only liquids\",\"D) After 6 months only\"]', 0, '2026-02-27 14:32:01'),
(88, 11, 'en', 'Main benefit?', '[\"A) Beautiful smile with minimal tooth reduction\",\"B) Cheapest option\",\"C) Stronger than crown\",\"D) Removable\"]', 0, '2026-02-27 14:32:01'),
(89, 12, 'en', 'Full mouth rehabilitation means', '[\"A) Complete makeover of all teeth using crowns, veneers, implants etc.\",\"B) Cleaning only\",\"C) One crown\",\"D) Denture only\"]', 0, '2026-02-27 14:32:01'),
(90, 12, 'en', 'How long does treatment usually take?', '[\"A) 6–12 months\",\"B) 1 week\",\"C) 1 day\",\"D) 1 month\"]', 0, '2026-02-27 14:32:01'),
(91, 12, 'en', 'First step?', '[\"A) Full diagnosis (photos, scans, models)\",\"B) Final crowns\",\"C) Extraction\",\"D) No planning\"]', 0, '2026-02-27 14:32:01'),
(92, 12, 'en', 'Temporary restorations are used', '[\"A) Yes, while final work is done\",\"B) No\",\"C) Only at end\",\"D) Never\"]', 0, '2026-02-27 14:32:01'),
(93, 12, 'en', 'Main goal?', '[\"A) Restore bite, function and beautiful smile\",\"B) Only whiten teeth\",\"C) Only change shape\",\"D) Remove all teeth\"]', 0, '2026-02-27 14:32:01'),
(94, 12, 'en', 'Can implants be part of full mouth rehab?', '[\"A) Yes\",\"B) No\",\"C) Only crowns\",\"D) Only veneers\"]', 0, '2026-02-27 14:32:01'),
(95, 12, 'en', 'Risk compared to single crown?', '[\"A) Longer treatment, higher total cost\",\"B) No risk\",\"C) Same as one crown\",\"D) Shorter\"]', 0, '2026-02-27 14:32:01'),
(96, 12, 'en', 'Who needs it?', '[\"A) People with severe wear, bite problems or many damaged teeth\",\"B) Healthy teeth\",\"C) One missing tooth\",\"D) Children\"]', 0, '2026-02-27 14:32:01'),
(97, 1, 'hi', 'सिंगल टूथ इम्प्लांट किस चीज से बना होता है?', '[\"A) प्लास्टिक\",\"B) टाइटेनियम स्क्रू\",\"C) सोना\",\"D) केवल सिरेमिक\"]', 1, '2026-02-27 14:32:01'),
(98, 1, 'hi', 'इम्प्लांट आमतौर पर जबड़े की हड्डी से जुड़ने में कितना समय लेता है?', '[\"A) 1 सप्ताह\",\"B) 3–6 महीने\",\"C) 1 साल\",\"D) 2 सप्ताह\"]', 1, '2026-02-27 14:32:01'),
(99, 1, 'hi', 'सिंगल टूथ इम्प्लांट का सबसे बड़ा फायदा क्या है?', '[\"A) यह सबसे सस्ता विकल्प है\",\"B) यह हड्डी के नुकसान को रोकता है और प्राकृतिक दिखता है\",\"C) यह हटाने योग्य है\",\"D) कोई सर्जरी की जरूरत नहीं\"]', 1, '2026-02-27 14:32:01'),
(100, 1, 'hi', 'इम्प्लांट लगाने के बाद फाइनल क्राउन कब लगाया जाता है?', '[\"A) उसी दिन\",\"B) 3–6 महीने हीलिंग के बाद\",\"C) 1 महीने बाद\",\"D) कभी नहीं\"]', 1, '2026-02-27 14:32:01'),
(101, 1, 'hi', '10 साल बाद सिंगल टूथ इम्प्लांट की सफलता दर क्या है?', '[\"A) 50–60%\",\"B) 95–98%\",\"C) 80%\",\"D) 100%\"]', 1, '2026-02-27 14:32:01'),
(102, 1, 'hi', 'बिना अतिरिक्त देखभाल के इम्प्लांट किसे नहीं लेना चाहिए?', '[\"A) स्वस्थ युवा व्यक्ति\",\"B) धूम्रपान करने वाला या अनियंत्रित डायबिटीज वाला व्यक्ति\",\"C) अच्छे दांतों वाला व्यक्ति\",\"D) 18 वर्ष से कम उम्र का बच्चा\"]', 1, '2026-02-27 14:32:01'),
(103, 1, 'hi', 'इम्प्लांट सर्जरी के दौरान क्या दर्द होता है?', '[\"A) हाँ, बहुत दर्द\",\"B) नहीं – लोकल एनेस्थीसिया दिया जाता है\",\"C) थोड़ा दर्द\",\"D) केवल अगर आप हिलें\"]', 1, '2026-02-27 14:32:01'),
(104, 1, 'hi', 'अगर गुम दांत को इम्प्लांट से न बदलें तो क्या होता है?', '[\"A) कुछ नहीं\",\"B) पड़ोसी दांत हिलते हैं और हड्डी पिघल जाती है\",\"C) केवल मसूड़े दर्द करते हैं\",\"D) आप बेहतर खा सकते हैं\"]', 1, '2026-02-27 14:32:01'),
(105, 2, 'hi', '2–4 गुम दांतों के लिए आमतौर पर कितने इम्प्लांट लगाए जाते हैं?', '[\"A) 1\",\"B) 2–4\",\"C) 8\",\"D) 10\"]', 1, '2026-02-27 14:32:01'),
(106, 2, 'hi', 'ट्रेडिशनल ब्रिज की तुलना में मुख्य फायदा क्या है?', '[\"A) स्वस्थ दांत नहीं काटे जाते\",\"B) यह सस्ता है\",\"C) यह हटाने योग्य है\",\"D) जल्दी हीलिंग\"]', 0, '2026-02-27 14:32:01'),
(107, 2, 'hi', 'हीलिंग समय सिंगल टूथ इम्प्लांट जैसा ही है?', '[\"A) हाँ, 3–6 महीने\",\"B) केवल 1 महीना\",\"C) 1 साल\",\"D) कोई हीलिंग नहीं\"]', 0, '2026-02-27 14:32:01'),
(108, 2, 'hi', 'सफलता दर आमतौर पर', '[\"A) सिंगल इम्प्लांट से कम\",\"B) समान या थोड़ी ज्यादा\",\"C) 50%\",\"D) 70%\"]', 1, '2026-02-27 14:32:01'),
(109, 2, 'hi', 'क्या मल्टीपल इम्प्लांट अलग-अलग क्राउन सपोर्ट कर सकते हैं?', '[\"A) नहीं\",\"B) हाँ\",\"C) केवल ब्रिज\",\"D) केवल डेंचर\"]', 1, '2026-02-27 14:32:01'),
(110, 2, 'hi', 'मुख्य रिस्क सिंगल इम्प्लांट जैसा:', '[\"A) इंफेक्शन ~5–7%\",\"B) कोई रिस्क नहीं\",\"C) हमेशा फेल\",\"D) केवल कॉस्मेटिक समस्या\"]', 0, '2026-02-27 14:32:01'),
(111, 2, 'hi', 'हीलिंग के बाद फाइनल दांत', '[\"A) हटाने योग्य\",\"B) फिक्स्ड क्राउन या छोटा ब्रिज\",\"C) केवल टेम्पररी\",\"D) केवल मेटल\"]', 1, '2026-02-27 14:32:01'),
(112, 2, 'hi', 'प्राकृतिक दांतों पर बड़े ब्रिज से बेहतर क्यों?', '[\"A) हड्डी और स्वस्थ दांत बचाता है\",\"B) कम खर्च\",\"C) तेज\",\"D) कोई विजिट नहीं\"]', 0, '2026-02-27 14:32:01'),
(113, 3, 'hi', 'पूरी ऊपरी या निचली जबड़े के लिए कितने इम्प्लांट लगाए जाते हैं?', '[\"A) 1–2\",\"B) 4 या 6\",\"C) 12\",\"D) 20\"]', 1, '2026-02-27 14:32:01'),
(114, 3, 'hi', '“Teeth in a Day” क्या है?', '[\"A) सर्जरी के उसी दिन टेम्पररी दांत फिक्स\",\"B) एक दिन में फाइनल दांत\",\"C) केवल सफाई\",\"D) कोई सर्जरी नहीं\"]', 0, '2026-02-27 14:32:01'),
(115, 3, 'hi', '5–10 साल बाद ऑल-ऑन-4 की सफलता दर?', '[\"A) 70%\",\"B) 96–98%\",\"C) 50%\",\"D) 85%\"]', 1, '2026-02-27 14:32:01'),
(116, 3, 'hi', 'कम्पलीट डेंचर की तुलना में मुख्य फायदा?', '[\"A) फिक्स्ड दांत, हटाने की जरूरत नहीं\",\"B) सस्ता\",\"C) कोई सर्जरी नहीं\",\"D) टेम्पररी\"]', 0, '2026-02-27 14:32:01'),
(117, 3, 'hi', 'सर्जरी के बाद आपको मिलता है', '[\"A) 6 महीने तक कोई दांत नहीं\",\"B) उसी दिन टेम्पररी फिक्स्ड दांत\",\"C) हमेशा केवल सॉफ्ट डाइट\",\"D) हटाने योग्य डेंचर\"]', 1, '2026-02-27 14:32:01'),
(118, 3, 'hi', 'ऑल-ऑन-6 ऑल-ऑन-4 से सुरक्षित क्यों?', '[\"A) ज्यादा इम्प्लांट लोड शेयर करते हैं\",\"B) कम खर्च\",\"C) तेज सर्जरी\",\"D) कोई हीलिंग नहीं\"]', 0, '2026-02-27 14:32:01'),
(119, 3, 'hi', 'फाइनल ब्रिज के बाद सामान्य खा सकते हैं?', '[\"A) नहीं\",\"B) हाँ, लगभग प्राकृतिक दांतों जैसा\",\"C) केवल लिक्विड\",\"D) केवल सॉफ्ट फूड\"]', 1, '2026-02-27 14:32:01'),
(120, 3, 'hi', 'फुल आर्च इम्प्लांट आमतौर पर कौन चुनता है?', '[\"A) सभी दांत गुम या बहुत खराब वाले लोग\",\"B) केवल एक दांत गुम वाले\",\"C) बच्चे\",\"D) हटाने योग्य डेंचर चाहने वाले\"]', 0, '2026-02-27 14:32:01'),
(121, 4, 'hi', '3–5 दांतों के ब्रिज को कितने इम्प्लांट सपोर्ट करते हैं?', '[\"A) 1\",\"B) 2 या 3\",\"C) 6\",\"D) 10\"]', 1, '2026-02-27 14:32:01'),
(122, 4, 'hi', 'ट्रेडिशनल ब्रिज से फायदा?', '[\"A) स्वस्थ साइड दांत नहीं काटे जाते\",\"B) सस्ता\",\"C) हटाने योग्य\",\"D) तेज\"]', 0, '2026-02-27 14:32:01'),
(123, 4, 'hi', 'फाइनल ब्रिज से पहले हीलिंग समय?', '[\"A) 3–6 महीने\",\"B) उसी दिन\",\"C) 1 सप्ताह\",\"D) 2 साल\"]', 0, '2026-02-27 14:32:01'),
(124, 4, 'hi', 'सफलता दर', '[\"A) सिंगल इम्प्लांट जैसी (95–98%)\",\"B) कम\",\"C) 60%\",\"D) 100%\"]', 0, '2026-02-27 14:32:01'),
(125, 4, 'hi', 'ब्रिज', '[\"A) पेशेंट द्वारा हटाने योग्य\",\"B) फिक्स्ड (स्क्रू या सीमेंट)\",\"C) प्लास्टिक\",\"D) केवल टेम्पररी\"]', 1, '2026-02-27 14:32:01'),
(126, 4, 'hi', 'मुख्य रिस्क?', '[\"A) सिंगल इम्प्लांट जैसा (इंफेक्शन 5–7%)\",\"B) कोई रिस्क नहीं\",\"C) हमेशा ढीला\",\"D) कलर चेंज\"]', 0, '2026-02-27 14:32:01'),
(127, 4, 'hi', 'हड्डी क्यों बचती है?', '[\"A) इम्प्लांट प्राकृतिक जड़ की तरह काम करते हैं\",\"B) ब्रिज भारी होता है\",\"C) कोई सर्जरी नहीं\",\"D) केवल मसूड़े\"]', 0, '2026-02-27 14:32:01'),
(128, 4, 'hi', 'सबसे अच्छा किसके लिए?', '[\"A) एक पंक्ति में 3–5 गुम दांत\",\"B) सभी दांत गुम\",\"C) सिंगल टूथ\",\"D) केवल फ्रंट दांत\"]', 0, '2026-02-27 14:32:01'),
(129, 5, 'hi', 'आमतौर पर कितने इम्प्लांट लगाए जाते हैं?', '[\"A) 1\",\"B) 2–4\",\"C) 10\",\"D) 0\"]', 1, '2026-02-27 14:32:01'),
(130, 5, 'hi', 'डेंचर कैसे टिकता है?', '[\"A) ग्लू\",\"B) इम्प्लांट पर स्नैप करता है\",\"C) केवल सक्शन\",\"D) वायर\"]', 1, '2026-02-27 14:32:01'),
(131, 5, 'hi', 'नॉर्मल डेंचर की तुलना में चबाने की क्षमता?', '[\"A) 20–30%\",\"B) प्राकृतिक दांतों का 80–90%\",\"C) प्राकृतिक जैसी\",\"D) 10%\"]', 1, '2026-02-27 14:32:01'),
(132, 5, 'hi', 'पेशेंट डेंचर हटा सकता है?', '[\"A) नहीं\",\"B) हाँ, सफाई के लिए\",\"C) केवल डॉक्टर\",\"D) कभी नहीं\"]', 1, '2026-02-27 14:32:01'),
(133, 5, 'hi', 'अटैचमेंट हर कितने समय बाद बदलने पड़ते हैं?', '[\"A) 1–2 साल\",\"B) 10 साल\",\"C) कभी नहीं\",\"D) 6 महीने\"]', 0, '2026-02-27 14:32:01'),
(134, 5, 'hi', 'मुख्य फायदा?', '[\"A) खाते\\/बोलते समय डेंचर ढीला नहीं रहता\",\"B) नॉर्मल डेंचर से सस्ता\",\"C) कोई सर्जरी नहीं\",\"D) बिना केयर हमेशा टिकता\"]', 0, '2026-02-27 14:32:01'),
(135, 5, 'hi', 'स्नैप डेंचर से पहले हीलिंग?', '[\"A) 3–6 महीने\",\"B) उसी दिन\",\"C) 1 सप्ताह\",\"D) 1 साल\"]', 0, '2026-02-27 14:32:01'),
(136, 5, 'hi', 'सफलता दर किसके समान?', '[\"A) रेगुलर इम्प्लांट (95–98%)\",\"B) बहुत कम\",\"C) 50%\",\"D) 70%\"]', 0, '2026-02-27 14:32:01'),
(137, 6, 'hi', 'बोन ग्राफ्टिंग क्यों की जाती है?', '[\"A) जब इम्प्लांट के लिए पर्याप्त हड्डी न हो\",\"B) दांत सफेद करने के लिए\",\"C) सफाई के लिए\",\"D) केवल बच्चों के लिए\"]', 0, '2026-02-27 14:32:01'),
(138, 6, 'hi', 'इम्प्लांट लगाने से पहले हीलिंग समय?', '[\"A) 3–6 महीने\",\"B) 1 सप्ताह\",\"C) उसी दिन\",\"D) कोई हीलिंग नहीं\"]', 0, '2026-02-27 14:32:01'),
(139, 6, 'hi', 'बोन ग्राफ्ट की सफलता दर?', '[\"A) सही करने पर 100% तक\",\"B) 50%\",\"C) 30%\",\"D) 70%\"]', 0, '2026-02-27 14:32:01'),
(140, 6, 'hi', 'हड्डी के सामान्य स्रोत?', '[\"A) अपना, डोनर या सिंथेटिक\",\"B) केवल प्लास्टिक\",\"C) केवल सोना\",\"D) दांत\"]', 0, '2026-02-27 14:32:01'),
(141, 6, 'hi', 'मुख्य रिस्क?', '[\"A) सूजन या इंफेक्शन (<5–8%)\",\"B) कोई रिस्क नहीं\",\"C) हमेशा फेल\",\"D) हमेशा दर्द\"]', 0, '2026-02-27 14:32:01'),
(142, 6, 'hi', 'ग्राफ्टिंग के बाद हड्डी पर क्या लगाया जाता है?', '[\"A) स्पेशल मेम्ब्रेन\",\"B) कुछ नहीं\",\"C) क्राउन\",\"D) डेंचर\"]', 0, '2026-02-27 14:32:01'),
(143, 6, 'hi', 'बोन ग्राफ्टिंग दर्दनाक है?', '[\"A) लोकल एनेस्थीसिया, हल्का असुविधा\",\"B) बहुत दर्दनाक\",\"C) एनेस्थीसिया नहीं\",\"D) केवल ऊपरी जबड़े\"]', 0, '2026-02-27 14:32:01'),
(144, 6, 'hi', 'अगर हड्डी पर्याप्त हो तो बिना ग्राफ्टिंग इम्प्लांट लग सकता है?', '[\"A) हाँ\",\"B) नहीं, हमेशा जरूरी\",\"C) केवल बच्चों के लिए\",\"D) केवल भारत में\"]', 0, '2026-02-27 14:32:01'),
(145, 7, 'hi', 'क्राउन क्या है?', '[\"A) पूरा दांत ढकने वाली कैप\",\"B) दांत के अंदर फिलिंग\",\"C) हटाने योग्य प्लेट\",\"D) केवल फ्रंट पर पतली शेल\"]', 0, '2026-02-27 14:32:01'),
(146, 7, 'hi', 'दांत कितना काटा जाता है?', '[\"A) पूरा\",\"B) बाहरी लेयर (शेप)\",\"C) कुछ नहीं\",\"D) केवल आधा\"]', 1, '2026-02-27 14:32:01'),
(147, 7, 'hi', 'क्राउन आमतौर पर कितने समय तक चलता है?', '[\"A) 1–2 साल\",\"B) 10–15+ साल\",\"C) हमेशा\",\"D) 6 महीने\"]', 1, '2026-02-27 14:32:01'),
(148, 7, 'hi', 'क्राउन के बाद रूट कैनाल की जरूरत पड़ने का रिस्क?', '[\"A) 5–10%\",\"B) 50%\",\"C) 0%\",\"D) 100%\"]', 0, '2026-02-27 14:32:01'),
(149, 7, 'hi', 'मजबूत क्राउन के लिए मटेरियल?', '[\"A) जिरकोनिया या पॉर्सिलेन\",\"B) केवल प्लास्टिक\",\"C) केवल सोना\",\"D) लकड़ी\"]', 0, '2026-02-27 14:32:01'),
(150, 7, 'hi', 'टेम्पररी क्राउन कब दिया जाता है?', '[\"A) परमानेंट बनते समय\",\"B) हमेशा\",\"C) कभी नहीं\",\"D) केवल फ्रंट दांत\"]', 0, '2026-02-27 14:32:01'),
(151, 7, 'hi', 'परमानेंट क्राउन के बाद सामान्य खा सकते हैं?', '[\"A) हाँ, एनेस्थीसिया उतरने के बाद\",\"B) 1 महीने तक केवल लिक्विड\",\"C) कभी हार्ड फूड नहीं\",\"D) केवल सॉफ्ट फूड\"]', 0, '2026-02-27 14:32:01'),
(152, 7, 'hi', 'सबसे बड़ा फायदा?', '[\"A) खराब दांत बचाता है और मजबूत बनाता है\",\"B) केवल कलर बदलता है\",\"C) दांत छोटा बनाता है\",\"D) हटाने योग्य\"]', 0, '2026-02-27 14:32:01'),
(153, 8, 'hi', 'ब्रिज कितने गुम दांत बदल सकता है?', '[\"A) 1–3\",\"B) 10\",\"C) सभी दांत\",\"D) केवल 1\"]', 0, '2026-02-27 14:32:01'),
(154, 8, 'hi', 'साइड के स्वस्थ दांत', '[\"A) काटकर क्राउन लगाए जाते हैं\",\"B) छुए नहीं जाते\",\"C) निकाल दिए जाते हैं\",\"D) केवल साफ किए जाते हैं\"]', 0, '2026-02-27 14:32:01'),
(155, 8, 'hi', 'मुख्य नुकसान?', '[\"A) गुम जगह में हड्डी का नुकसान\",\"B) सस्ता\",\"C) कोई विजिट नहीं\",\"D) हटाने योग्य\"]', 0, '2026-02-27 14:32:01'),
(156, 8, 'hi', 'ब्रिज आमतौर पर कितने समय तक चलता है?', '[\"A) 10–15 साल\",\"B) 1 साल\",\"C) हमेशा\",\"D) 6 महीने\"]', 0, '2026-02-27 14:32:01'),
(157, 8, 'hi', 'ब्रिज के नीचे सड़न का रिस्क?', '[\"A) 10 साल में 10–20%\",\"B) 0%\",\"C) 100%\",\"D) 5%\"]', 0, '2026-02-27 14:32:01'),
(158, 8, 'hi', 'ब्रिज', '[\"A) फिक्स्ड, पेशेंट हटा नहीं सकता\",\"B) हटाने योग्य\",\"C) स्नैप-इन\",\"D) केवल टेम्पररी\"]', 0, '2026-02-27 14:32:01'),
(159, 8, 'hi', 'इम्प्लांट ब्रिज से तुलना?', '[\"A) तेज और सस्ता लेकिन स्वस्थ दांत खराब होते हैं\",\"B) हड्डी के लिए बेहतर\",\"C) कोई अंतर नहीं\",\"D) ज्यादा हीलिंग\"]', 0, '2026-02-27 14:32:01'),
(160, 8, 'hi', 'ब्रिज सीमेंट करने के बाद खा सकते हैं', '[\"A) 1–2 घंटे बाद\",\"B) अगले दिन\",\"C) 1 सप्ताह बाद\",\"D) कभी हार्ड फूड नहीं\"]', 0, '2026-02-27 14:32:01'),
(161, 9, 'hi', 'कम्पलीट डेंचर कब इस्तेमाल होता है?', '[\"A) एक जबड़े के सभी दांत गुम हों\",\"B) केवल एक दांत गुम\",\"C) केवल फ्रंट दांत\",\"D) इम्प्लांट लगे हों\"]', 0, '2026-02-27 14:32:02'),
(162, 9, 'hi', 'आमतौर पर कितनी विजिट चाहिए?', '[\"A) 5–7\",\"B) 1\",\"C) 2\",\"D) 10\"]', 0, '2026-02-27 14:32:02'),
(163, 9, 'hi', 'प्राकृतिक दांतों से चबाने की पावर?', '[\"A) 20–30%\",\"B) 90%\",\"C) 100%\",\"D) 50%\"]', 0, '2026-02-27 14:32:02'),
(164, 9, 'hi', 'समय के साथ मुख्य समस्या?', '[\"A) हड्डी सिकुड़ती है → डेंचर ढीला हो जाता है\",\"B) कलर फीका\",\"C) बहुत टाइट\",\"D) कोई समस्या नहीं\"]', 0, '2026-02-27 14:32:02'),
(165, 9, 'hi', 'डेंचर निकालना चाहिए', '[\"A) रात को सफाई और मसूड़े आराम के लिए\",\"B) कभी नहीं\",\"C) केवल खाते समय\",\"D) केवल सुबह\"]', 0, '2026-02-27 14:32:02'),
(166, 9, 'hi', 'सोर स्पॉट', '[\"A) पहले कुछ हफ्तों में आम, डॉक्टर एडजस्ट करते हैं\",\"B) स्थायी\",\"C) कभी नहीं होते\",\"D) केवल ऊपरी जबड़े\"]', 0, '2026-02-27 14:32:02'),
(167, 9, 'hi', 'डेंचर के दांतों का मटेरियल?', '[\"A) एक्रिलिक (प्लास्टिक)\",\"B) मेटल\",\"C) असली दांत\",\"D) सोना\"]', 0, '2026-02-27 14:32:02'),
(168, 9, 'hi', 'फायदा?', '[\"A) जल्दी मुस्कान और बेसिक चबाना वापस\",\"B) इम्प्लांट से मजबूत\",\"C) कभी एडजस्टमेंट नहीं\",\"D) लाइफटाइम बिना बदलाव\"]', 0, '2026-02-27 14:32:02'),
(169, 10, 'hi', 'पार्शियल डेंचर कब इस्तेमाल होता है?', '[\"A) कुछ प्राकृतिक दांत बाकी हों\",\"B) सभी दांत गुम\",\"C) केवल फ्रंट दांत गुम\",\"D) इम्प्लांट हो चुके हों\"]', 0, '2026-02-27 14:32:02'),
(170, 10, 'hi', 'यह टिकता है', '[\"A) बाकी दांतों पर क्लास्प से\",\"B) इम्प्लांट से\",\"C) ग्लू से\",\"D) सक्शन से\"]', 0, '2026-02-27 14:32:02'),
(171, 10, 'hi', 'फ्रेमवर्क आमतौर पर', '[\"A) मेटल या फ्लेक्सिबल प्लास्टिक\",\"B) केवल प्लास्टिक\",\"C) सोना\",\"D) सिरेमिक\"]', 0, '2026-02-27 14:32:02'),
(172, 10, 'hi', 'मुख्य नुकसान?', '[\"A) भारी लग सकता है, क्लास्प दिख सकते हैं\",\"B) बहुत महंगा\",\"C) हमेशा फिक्स्ड\",\"D) सफाई नहीं\"]', 0, '2026-02-27 14:32:02'),
(173, 10, 'hi', 'पार्शियल डेंचर के नीचे हड्डी का नुकसान?', '[\"A) हाँ, समय के साथ\",\"B) नहीं\",\"C) केवल ऊपरी\",\"D) कम्पलीट से तेज\"]', 0, '2026-02-27 14:32:02'),
(174, 10, 'hi', 'कितनी बार निकालना चाहिए?', '[\"A) रोज सफाई के लिए\",\"B) कभी नहीं\",\"C) केवल रात को\",\"D) हफ्ते में एक बार\"]', 0, '2026-02-27 14:32:02'),
(175, 10, 'hi', 'इम्प्लांट-सपोर्टेड से तुलना?', '[\"A) सस्ता लेकिन कम स्थिर\",\"B) ज्यादा स्थिर\",\"C) समान खर्च\",\"D) कोई अंतर नहीं\"]', 0, '2026-02-27 14:32:02'),
(176, 10, 'hi', 'एडजस्टमेंट', '[\"A) पहले कुछ हफ्तों में अगर दर्द हो\",\"B) कभी नहीं\",\"C) केवल 1 साल बाद\",\"D) हर महीने\"]', 0, '2026-02-27 14:32:02'),
(177, 11, 'hi', 'वेनियर क्या है?', '[\"A) दांत के सामने पतली पॉर्सिलेन शेल\",\"B) फुल कैप\",\"C) फिलिंग\",\"D) हटाने योग्य\"]', 0, '2026-02-27 14:32:02'),
(178, 11, 'hi', 'इनैमल कितना हटाया जाता है?', '[\"A) बहुत कम (0.3–0.5 mm)\",\"B) आधा दांत\",\"C) पूरा इनैमल\",\"D) कुछ नहीं\"]', 0, '2026-02-27 14:32:02'),
(179, 11, 'hi', 'सबसे अच्छा किसके लिए?', '[\"A) फ्रंट दांत – कलर, शेप, गैप\",\"B) पीछे चबाने वाले दांत\",\"C) गुम दांत\",\"D) रूट कैनाल दांत\"]', 0, '2026-02-27 14:32:02'),
(180, 11, 'hi', 'वेनियर', '[\"A) परमानेंट बॉन्डेड\",\"B) रोज हटाने योग्य\",\"C) टेम्पररी\",\"D) स्नैप-ऑन\"]', 0, '2026-02-27 14:32:02'),
(181, 11, 'hi', 'चिपिंग का रिस्क?', '[\"A) 5% से कम\",\"B) 50%\",\"C) 100%\",\"D) 20%\"]', 0, '2026-02-27 14:32:02'),
(182, 11, 'hi', 'वेनियर कितने समय तक चलते हैं?', '[\"A) केयर के साथ 10–15+ साल\",\"B) 1 साल\",\"C) बिना केयर हमेशा\",\"D) 2 साल\"]', 0, '2026-02-27 14:32:02'),
(183, 11, 'hi', 'हार्ड फूड खा सकते हैं?', '[\"A) हाँ, लेकिन बर्फ जैसे बहुत हार्ड चीजें अवॉइड\",\"B) नहीं\",\"C) केवल लिक्विड\",\"D) 6 महीने बाद\"]', 0, '2026-02-27 14:32:02'),
(184, 11, 'hi', 'मुख्य फायदा?', '[\"A) कम दांत काटकर सुंदर मुस्कान\",\"B) सबसे सस्ता\",\"C) क्राउन से मजबूत\",\"D) हटाने योग्य\"]', 0, '2026-02-27 14:32:02'),
(185, 12, 'hi', 'फुल माउथ रिहैबिलिटेशन का मतलब', '[\"A) क्राउन, वेनियर, इम्प्लांट आदि से सभी दांतों का पूरा मेकओवर\",\"B) केवल सफाई\",\"C) एक क्राउन\",\"D) केवल डेंचर\"]', 0, '2026-02-27 14:32:02'),
(186, 12, 'hi', 'ट्रीटमेंट आमतौर पर कितना समय लेता है?', '[\"A) 6–12 महीने\",\"B) 1 सप्ताह\",\"C) 1 दिन\",\"D) 1 महीना\"]', 0, '2026-02-27 14:32:02'),
(187, 12, 'hi', 'पहला स्टेप?', '[\"A) पूरा डायग्नोसिस (फोटो, स्कैन, मॉडल)\",\"B) फाइनल क्राउन\",\"C) निकालना\",\"D) कोई प्लानिंग नहीं\"]', 0, '2026-02-27 14:32:02'),
(188, 12, 'hi', 'टेम्पररी रिस्टोरेशन इस्तेमाल होते हैं', '[\"A) हाँ, फाइनल काम के दौरान\",\"B) नहीं\",\"C) केवल अंत में\",\"D) कभी नहीं\"]', 0, '2026-02-27 14:32:02'),
(189, 12, 'hi', 'मुख्य लक्ष्य?', '[\"A) बाइट, फंक्शन और सुंदर मुस्कान वापस\",\"B) केवल दांत सफेद\",\"C) केवल शेप बदलना\",\"D) सभी दांत निकालना\"]', 0, '2026-02-27 14:32:02'),
(190, 12, 'hi', 'फुल माउथ रिहैब में इम्प्लांट शामिल हो सकते हैं?', '[\"A) हाँ\",\"B) नहीं\",\"C) केवल क्राउन\",\"D) केवल वेनियर\"]', 0, '2026-02-27 14:32:02'),
(191, 12, 'hi', 'सिंगल क्राउन से रिस्क?', '[\"A) लंबा ट्रीटमेंट, कुल ज्यादा खर्च\",\"B) कोई रिस्क नहीं\",\"C) एक क्राउन जैसा\",\"D) छोटा\"]', 0, '2026-02-27 14:32:02'),
(192, 12, 'hi', 'किसे जरूरत होती है?', '[\"A) गंभीर वियर, बाइट समस्या या कई खराब दांत वाले\",\"B) स्वस्थ दांत\",\"C) एक गुम दांत\",\"D) बच्चे\"]', 0, '2026-02-27 14:32:02'),
(193, 1, 'te', 'సింగిల్ టూత్ ఇంప్లాంట్ ఏమితో తయారు చేయబడుతుంది?', '[\"A) ప్లాస్టిక్\",\"B) టైటానియం స్క్రూ\",\"C) బంగారం\",\"D) సెరామిక్ మాత్రమే\"]', 1, '2026-02-27 14:32:02'),
(194, 1, 'te', 'ఇంప్లాంట్ సాధారణంగా దవడ ఎముకతో కలిసిపోవడానికి ఎంత సమయం తీసుకుంటుంది?', '[\"A) 1 వారం\",\"B) 3–6 నెలలు\",\"C) 1 సంవత్సరం\",\"D) 2 వారాలు\"]', 1, '2026-02-27 14:32:02'),
(195, 1, 'te', 'సింగిల్ టూత్ ఇంప్లాంట్ యొక్క అతిపెద్ద ప్రయోజనం ఏమిటి?', '[\"A) ఇది చాలా చౌక\",\"B) ఎముక నష్టం ఆపి సహజంగా కనిపిస్తుంది\",\"C) తీసేసుకోవచ్చు\",\"D) సర్జరీ అవసరం లేదు\"]', 1, '2026-02-27 14:32:02'),
(196, 1, 'te', 'ఇంప్లాంట్ పెట్టిన తర్వాత ఫైనల్ క్రౌన్ ఎప్పుడు పెట్టబడుతుంది?', '[\"A) అదే రోజు\",\"B) 3–6 నెలల హీలింగ్ తర్వాత\",\"C) 1 నెల తర్వాత\",\"D) ఎప్పుడూ కాదు\"]', 1, '2026-02-27 14:32:02'),
(197, 1, 'te', '10 సంవత్సరాల తర్వాత సింగిల్ టూత్ ఇంప్లాంట్ సక్సెస్ రేటు ఎంత?', '[\"A) 50–60%\",\"B) 95–98%\",\"C) 80%\",\"D) 100%\"]', 1, '2026-02-27 14:32:02'),
(198, 1, 'te', 'అదనపు జాగ్రత్త లేకుండా ఇంప్లాంట్ ఎవరు తీసుకోకూడదు?', '[\"A) ఆరోగ్యవంతమైన యువకుడు\",\"B) పొగతాగే వారు లేదా అనియంత్రిత డయాబెటిస్ ఉన్నవారు\",\"C) మంచి దంతాలు ఉన్నవారు\",\"D) 18 ఏళ్ల కంటే చిన్న పిల్లలు\"]', 1, '2026-02-27 14:32:02'),
(199, 1, 'te', 'ఇంప్లాంట్ సర్జరీ సమయంలో నొప్పి అనిపిస్తుందా?', '[\"A) అవును, చాలా నొప్పి\",\"B) కాదు – లోకల్ అనస్థీషియా ఇస్తారు\",\"C) కొంచెం నొప్పి\",\"D) మీరు కదిలితే మాత్రమే\"]', 1, '2026-02-27 14:32:02'),
(200, 1, 'te', 'గుమిగా ఉన్న దంతాన్ని ఇంప్లాంట్‌తో మార్చకపోతే ఏమవుతుంది?', '[\"A) ఏమీ కాదు\",\"B) పక్క దంతాలు జరుగుతాయి, ఎముక కరిగిపోతుంది\",\"C) మసూళ్లు మాత్రమే నొప్పి\",\"D) మీరు బాగా తినగలరు\"]', 1, '2026-02-27 14:32:02'),
(201, 2, 'te', '2–4 గుమి దంతాలకు సాధారణంగా ఎన్ని ఇంప్లాంట్‌లు పెట్టబడతాయి?', '[\"A) 1\",\"B) 2–4\",\"C) 8\",\"D) 10\"]', 1, '2026-02-27 14:32:02'),
(202, 2, 'te', 'ట్రెడిషనల్ బ్రిడ్జ్‌తో పోలిస్తే ప్రధాన ప్రయోజనం?', '[\"A) స్వస్థ దంతాలు కత్తిరించబడవు\",\"B) చౌక\",\"C) తీసేసుకోవచ్చు\",\"D) త్వరగా హీలింగ్\"]', 0, '2026-02-27 14:32:02'),
(203, 2, 'te', 'హీలింగ్ సమయం సింగిల్ టూత్ ఇంప్లాంట్ లాగేనా?', '[\"A) అవును, 3–6 నెలలు\",\"B) 1 నెల మాత్రమే\",\"C) 1 సంవత్సరం\",\"D) హీలింగ్ అవసరం లేదు\"]', 0, '2026-02-27 14:32:02'),
(204, 2, 'te', 'సక్సెస్ రేటు సాధారణంగా', '[\"A) సింగిల్ కంటే తక్కువ\",\"B) సమానం లేదా కొంచెం ఎక్కువ\",\"C) 50%\",\"D) 70%\"]', 1, '2026-02-27 14:32:02'),
(205, 2, 'te', 'మల్టిపుల్ ఇంప్లాంట్‌లు వ్యక్తిగత క్రౌన్‌లు సపోర్ట్ చేయగలవా?', '[\"A) కాదు\",\"B) అవును\",\"C) బ్రిడ్జ్ మాత్రమే\",\"D) డెంచర్ మాత్రమే\"]', 1, '2026-02-27 14:32:02'),
(206, 2, 'te', 'ప్రధాన రిస్క్ సింగిల్ ఇంప్లాంట్ లాగే:', '[\"A) ఇన్ఫెక్షన్ ~5–7%\",\"B) రిస్క్ లేదు\",\"C) ఎప్పుడూ ఫెయిల్\",\"D) కాస్మెటిక్ సమస్య మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(207, 2, 'te', 'హీలింగ్ తర్వాత ఫైనల్ దంతాలు', '[\"A) తీసేసుకోవచ్చు\",\"B) ఫిక్స్డ్ క్రౌన్ లేదా చిన్న బ్రిడ్జ్\",\"C) టెంపరరీ మాత్రమే\",\"D) మెటల్ మాత్రమే\"]', 1, '2026-02-27 14:32:02'),
(208, 2, 'te', 'ప్రాకృతిక దంతాలపై పెద్ద బ్రిడ్జ్ కంటే ఎందుకు మంచిది?', '[\"A) ఎముక మరియు స్వస్థ దంతాలు కాపాడుతుంది\",\"B) తక్కువ ఖర్చు\",\"C) త్వరగా\",\"D) విజిట్ అవసరం లేదు\"]', 0, '2026-02-27 14:32:02'),
(209, 3, 'te', 'పూర్తి ఎగువ లేదా క్రింది దవడకు ఎన్ని ఇంప్లాంట్‌లు?', '[\"A) 1–2\",\"B) 4 లేదా 6\",\"C) 12\",\"D) 20\"]', 1, '2026-02-27 14:32:02'),
(210, 3, 'te', '“Teeth in a Day” అంటే ఏమిటి?', '[\"A) సర్జరీ అదే రోజు టెంపరరీ దంతాలు ఫిక్స్\",\"B) ఒక్క రోజులో ఫైనల్ దంతాలు\",\"C) క్లీనింగ్ మాత్రమే\",\"D) సర్జరీ లేదు\"]', 0, '2026-02-27 14:32:02'),
(211, 3, 'te', '5–10 సంవత్సరాల తర్వాత ఆల్-ఆన్-4 సక్సెస్ రేటు?', '[\"A) 70%\",\"B) 96–98%\",\"C) 50%\",\"D) 85%\"]', 1, '2026-02-27 14:32:02'),
(212, 3, 'te', 'కంప్లీట్ డెంచర్‌తో పోలిస్తే ప్రధాన ప్రయోజనం?', '[\"A) ఫిక్స్డ్ దంతాలు, తీసేసుకోవాల్సిన అవసరం లేదు\",\"B) చౌక\",\"C) సర్జరీ లేదు\",\"D) టెంపరరీ\"]', 0, '2026-02-27 14:32:02'),
(213, 3, 'te', 'సర్జరీ తర్వాత మీకు వస్తుంది', '[\"A) 6 నెలలు దంతాలు లేవు\",\"B) అదే రోజు టెంపరరీ ఫిక్స్డ్ దంతాలు\",\"C) ఎప్పుడూ సాఫ్ట్ డైట్ మాత్రమే\",\"D) తీసేసుకునే డెంచర్\"]', 1, '2026-02-27 14:32:02'),
(214, 3, 'te', 'ఆల్-ఆన్-6 ఆల్-ఆన్-4 కంటే సేఫ్ ఎందుకు?', '[\"A) ఎక్కువ ఇంప్లాంట్‌లు లోడ్ షేర్ చేస్తాయి\",\"B) తక్కువ ఖర్చు\",\"C) త్వరగా సర్జరీ\",\"D) హీలింగ్ లేదు\"]', 0, '2026-02-27 14:32:02'),
(215, 3, 'te', 'ఫైనల్ బ్రిడ్జ్ తర్వాత సాధారణంగా తినవచ్చా?', '[\"A) కాదు\",\"B) అవును, దాదాపు సహజ దంతాల్లా\",\"C) లిక్విడ్ మాత్రమే\",\"D) సాఫ్ట్ ఫుడ్ మాత్రమే\"]', 1, '2026-02-27 14:32:02'),
(216, 3, 'te', 'ఫుల్ ఆర్చ్ ఇంప్లాంట్ సాధారణంగా ఎవరు ఎంచుకుంటారు?', '[\"A) అన్ని దంతాలు గుమి లేదా చాలా దెబ్బతిన్నవారు\",\"B) ఒక్క దంతం గుమి ఉన్నవారు\",\"C) పిల్లలు\",\"D) తీసేసుకునే డెంచర్ కావాలనుకునేవారు\"]', 0, '2026-02-27 14:32:02'),
(217, 4, 'te', '3–5 దంతాల బ్రిడ్జ్‌ను ఎన్ని ఇంప్లాంట్‌లు సపోర్ట్ చేస్తాయి?', '[\"A) 1\",\"B) 2 లేదా 3\",\"C) 6\",\"D) 10\"]', 1, '2026-02-27 14:32:02'),
(218, 4, 'te', 'ట్రెడిషనల్ బ్రిడ్జ్ కంటే ప్రయోజనం?', '[\"A) స్వస్థ సైడ్ దంతాలు కత్తిరించబడవు\",\"B) చౌక\",\"C) తీసేసుకోవచ్చు\",\"D) త్వరగా\"]', 0, '2026-02-27 14:32:02'),
(219, 4, 'te', 'ఫైనల్ బ్రిడ్జ్ ముందు హీలింగ్ సమయం?', '[\"A) 3–6 నెలలు\",\"B) అదే రోజు\",\"C) 1 వారం\",\"D) 2 సంవత్సరాలు\"]', 0, '2026-02-27 14:32:02'),
(220, 4, 'te', 'సక్సెస్ రేటు', '[\"A) సింగిల్ ఇంప్లాంట్ లాగే (95–98%)\",\"B) తక్కువ\",\"C) 60%\",\"D) 100%\"]', 0, '2026-02-27 14:32:02'),
(221, 4, 'te', 'బ్రిడ్జ్', '[\"A) పేషెంట్ తీసేసుకోవచ్చు\",\"B) ఫిక్స్డ్ (స్క్రూ లేదా సిమెంట్)\",\"C) ప్లాస్టిక్\",\"D) టెంపరరీ మాత్రమే\"]', 1, '2026-02-27 14:32:02'),
(222, 4, 'te', 'ప్రధాన రిస్క్?', '[\"A) సింగిల్ ఇంప్లాంట్ లాగే (ఇన్ఫెక్షన్ 5–7%)\",\"B) రిస్క్ లేదు\",\"C) ఎప్పుడూ లూజ్\",\"D) కలర్ మార్పు\"]', 0, '2026-02-27 14:32:02'),
(223, 4, 'te', 'ఎముక ఎందుకు కాపాడబడుతుంది?', '[\"A) ఇంప్లాంట్ సహజ రూట్ లాగా పని చేస్తాయి\",\"B) బ్రిడ్జ్ బరువుగా ఉంటుంది\",\"C) సర్జరీ లేదు\",\"D) మసూళ్లు మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(224, 4, 'te', 'అత్యుత్తమం ఎవరికి?', '[\"A) ఒక వరుసలో 3–5 గుమి దంతాలు\",\"B) అన్ని దంతాలు గుమి\",\"C) సింగిల్ టూత్\",\"D) ఫ్రంట్ దంతాలు మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(225, 5, 'te', 'సాధారణంగా ఎన్ని ఇంప్లాంట్‌లు పెట్టబడతాయి?', '[\"A) 1\",\"B) 2–4\",\"C) 10\",\"D) 0\"]', 1, '2026-02-27 14:32:02'),
(226, 5, 'te', 'డెంచర్ ఎలా ఉండిపోతుంది?', '[\"A) గ్లూ\",\"B) ఇంప్లాంట్‌పై స్నాప్ అవుతుంది\",\"C) సక్షన్ మాత్రమే\",\"D) వైర్\"]', 1, '2026-02-27 14:32:02'),
(227, 5, 'te', 'నార్మల్ డెంచర్‌తో పోలిస్తే చవడం సామర్థ్యం?', '[\"A) 20–30%\",\"B) సహజ దంతాల 80–90%\",\"C) సహజం లాగే\",\"D) 10%\"]', 1, '2026-02-27 14:32:02'),
(228, 5, 'te', 'పేషెంట్ డెంచర్ తీసేసుకోవచ్చా?', '[\"A) కాదు\",\"B) అవును, క్లీనింగ్ కోసం\",\"C) డాక్టర్ మాత్రమే\",\"D) ఎప్పుడూ కాదు\"]', 1, '2026-02-27 14:32:02'),
(229, 5, 'te', 'అటాచ్‌మెంట్ ప్రతి ఎన్ని సంవత్సరాలకు మార్చాలి?', '[\"A) 1–2 సంవత్సరాలు\",\"B) 10 సంవత్సరాలు\",\"C) ఎప్పుడూ కాదు\",\"D) 6 నెలలు\"]', 0, '2026-02-27 14:32:02'),
(230, 5, 'te', 'ప్రధాన ప్రయోజనం?', '[\"A) తినేటప్పుడు\\/మాట్లాడేటప్పుడు డెంచర్ లూజ్ కాదు\",\"B) నార్మల్ డెంచర్ కంటే చౌక\",\"C) సర్జరీ లేదు\",\"D) కేర్ లేకుండా ఎప్పటికీ ఉంటుంది\"]', 0, '2026-02-27 14:32:02'),
(231, 5, 'te', 'స్నాప్ డెంచర్ ముందు హీలింగ్?', '[\"A) 3–6 నెలలు\",\"B) అదే రోజు\",\"C) 1 వారం\",\"D) 1 సంవత్సరం\"]', 0, '2026-02-27 14:32:02'),
(232, 5, 'te', 'సక్సెస్ రేటు దేని లాగా?', '[\"A) రెగ్యులర్ ఇంప్లాంట్ (95–98%)\",\"B) చాలా తక్కువ\",\"C) 50%\",\"D) 70%\"]', 0, '2026-02-27 14:32:02'),
(233, 6, 'te', 'బోన్ గ్రాఫ్టింగ్ ఎందుకు చేస్తారు?', '[\"A) ఇంప్లాంట్‌కు సరిపడా ఎముక లేనప్పుడు\",\"B) దంతాలు తెల్లగా చేయడానికి\",\"C) క్లీనింగ్ కోసం\",\"D) పిల్లలకు మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(234, 6, 'te', 'ఇంప్లాంట్ పెట్టడానికి ముందు హీలింగ్ సమయం?', '[\"A) 3–6 నెలలు\",\"B) 1 వారం\",\"C) అదే రోజు\",\"D) హీలింగ్ లేదు\"]', 0, '2026-02-27 14:32:02'),
(235, 6, 'te', 'బోన్ గ్రాఫ్ట్ సక్సెస్ రేటు?', '[\"A) సరిగ్గా చేస్తే 100% వరకు\",\"B) 50%\",\"C) 30%\",\"D) 70%\"]', 0, '2026-02-27 14:32:02'),
(236, 6, 'te', 'ఎముక సాధారణ సోర్స్‌లు?', '[\"A) సొంతం, డోనర్ లేదా సింథటిక్\",\"B) ప్లాస్టిక్ మాత్రమే\",\"C) బంగారం మాత్రమే\",\"D) దంతాలు\"]', 0, '2026-02-27 14:32:02'),
(237, 6, 'te', 'ప్రధాన రిస్క్?', '[\"A) వాపు లేదా ఇన్ఫెక్షన్ (<5–8%)\",\"B) రిస్క్ లేదు\",\"C) ఎప్పుడూ ఫెయిల్\",\"D) ఎప్పటికీ నొప్పి\"]', 0, '2026-02-27 14:32:02'),
(238, 6, 'te', 'గ్రాఫ్టింగ్ తర్వాత ఎముకపై ఏమి కవర్ చేస్తారు?', '[\"A) స్పెషల్ మెంబ్రేన్\",\"B) ఏమీ కాదు\",\"C) క్రౌన్\",\"D) డెంచర్\"]', 0, '2026-02-27 14:32:02'),
(239, 6, 'te', 'బోన్ గ్రాఫ్టింగ్ నొప్పిగా ఉంటుందా?', '[\"A) లోకల్ అనస్థీషియా, తేలికపాటి అసౌకర్యం\",\"B) చాలా నొప్పి\",\"C) అనస్థీషియా అవసరం లేదు\",\"D) ఎగువ దవడ మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(240, 6, 'te', 'ఎముక సరిపడితే గ్రాఫ్టింగ్ లేకుండా ఇంప్లాంట్ పెట్టవచ్చా?', '[\"A) అవును\",\"B) కాదు, ఎప్పుడూ అవసరం\",\"C) పిల్లలకు మాత్రమే\",\"D) భారతదేశంలో మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(241, 7, 'te', 'క్రౌన్ అంటే ఏమిటి?', '[\"A) పూర్తి దంతాన్ని కవర్ చేసే క్యాప్\",\"B) దంతం లోపల ఫిల్లింగ్\",\"C) తీసేసుకునే ప్లేట్\",\"D) ఫ్రంట్‌పై పలచని షెల్ మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(242, 7, 'te', 'దంతం ఎంత కత్తిరించబడుతుంది?', '[\"A) అంతా\",\"B) బయటి లేయర్ (షేప్)\",\"C) ఏమీ కాదు\",\"D) సగం మాత్రమే\"]', 1, '2026-02-27 14:32:02'),
(243, 7, 'te', 'క్రౌన్ సాధారణంగా ఎంత కాలం ఉంటుంది?', '[\"A) 1–2 సంవత్సరాలు\",\"B) 10–15+ సంవత్సరాలు\",\"C) ఎప్పటికీ\",\"D) 6 నెలలు\"]', 1, '2026-02-27 14:32:02'),
(244, 7, 'te', 'క్రౌన్ తర్వాత రూట్ కెనాల్ అవసరం రావడం రిస్క్?', '[\"A) 5–10%\",\"B) 50%\",\"C) 0%\",\"D) 100%\"]', 0, '2026-02-27 14:32:02'),
(245, 7, 'te', 'బలమైన క్రౌన్‌లకు మెటీరియల్?', '[\"A) జిర్కోనియా లేదా పోర్సిలైన్\",\"B) ప్లాస్టిక్ మాత్రమే\",\"C) బంగారం మాత్రమే\",\"D) కట్టె\"]', 0, '2026-02-27 14:32:02'),
(246, 7, 'te', 'టెంపరరీ క్రౌన్ ఎప్పుడు ఇస్తారు?', '[\"A) పర్మనెంట్ తయారవుతుండగా\",\"B) ఎప్పుడూ\",\"C) ఎప్పుడూ కాదు\",\"D) ఫ్రంట్ దంతాలకు మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(247, 7, 'te', 'పర్మనెంట్ క్రౌన్ తర్వాత సాధారణంగా తినవచ్చా?', '[\"A) అవును, అనస్థీషియా తగ్గిన తర్వాత\",\"B) 1 నెల పాటు లిక్విడ్ మాత్రమే\",\"C) ఎప్పుడూ హార్డ్ ఫుడ్ కాదు\",\"D) సాఫ్ట్ ఫుడ్ మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(248, 7, 'te', 'అతిపెద్ద ప్రయోజనం?', '[\"A) దెబ్బతిన్న దంతం కాపాడి బలపరుస్తుంది\",\"B) కలర్ మార్పు మాత్రమే\",\"C) దంతం చిన్నది చేస్తుంది\",\"D) తీసేసుకోవచ్చు\"]', 0, '2026-02-27 14:32:02'),
(249, 8, 'te', 'బ్రిడ్జ్ ఎన్ని గుమి దంతాలను భర్తీ చేయగలదు?', '[\"A) 1–3\",\"B) 10\",\"C) అన్ని దంతాలు\",\"D) ఒక్కటి మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(250, 8, 'te', 'సైడ్ స్వస్థ దంతాలు', '[\"A) కత్తిరించి క్రౌన్ పెట్టబడతాయి\",\"B) తాకబడవు\",\"C) తీసేయబడతాయి\",\"D) క్లీన్ చేయబడతాయి మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(251, 8, 'te', 'ప్రధాన నష్టం?', '[\"A) గుమి స్థలంలో ఎముక నష్టం\",\"B) చౌక\",\"C) విజిట్ లేవు\",\"D) తీసేసుకోవచ్చు\"]', 0, '2026-02-27 14:32:02'),
(252, 8, 'te', 'బ్రిడ్జ్ సాధారణంగా ఎంత కాలం ఉంటుంది?', '[\"A) 10–15 సంవత్సరాలు\",\"B) 1 సంవత్సరం\",\"C) ఎప్పటికీ\",\"D) 6 నెలలు\"]', 0, '2026-02-27 14:32:02'),
(253, 8, 'te', 'బ్రిడ్జ్ కింద సడన్ రిస్క్?', '[\"A) 10 సంవత్సరాలలో 10–20%\",\"B) 0%\",\"C) 100%\",\"D) 5%\"]', 0, '2026-02-27 14:32:02'),
(254, 8, 'te', 'బ్రిడ్జ్', '[\"A) ఫిక్స్డ్, పేషెంట్ తీసేసుకోలేడు\",\"B) తీసేసుకోవచ్చు\",\"C) స్నాప్-ఇన్\",\"D) టెంపరరీ మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(255, 8, 'te', 'ఇంప్లాంట్ బ్రిడ్జ్‌తో పోలిక?', '[\"A) త్వరగా మరియు చౌక కానీ స్వస్థ దంతాలు దెబ్బతినతాయి\",\"B) ఎముకకు మంచిది\",\"C) తేడా లేదు\",\"D) ఎక్కువ హీలింగ్\"]', 0, '2026-02-27 14:32:02'),
(256, 8, 'te', 'బ్రిడ్జ్ సిమెంట్ చేసిన తర్వాత తినవచ్చు', '[\"A) 1–2 గంటల తర్వాత\",\"B) మరుసటి రోజు మాత్రమే\",\"C) 1 వారం తర్వాత\",\"D) ఎప్పుడూ హార్డ్ ఫుడ్ కాదు\"]', 0, '2026-02-27 14:32:02'),
(257, 9, 'te', 'కంప్లీట్ డెంచర్ ఎప్పుడు ఉపయోగిస్తారు?', '[\"A) ఒక దవడలోని అన్ని దంతాలు గుమి అయినప్పుడు\",\"B) ఒక్క దంతం గుమి\",\"C) ఫ్రంట్ దంతాలు మాత్రమే\",\"D) ఇంప్లాంట్ పెట్టినప్పుడు\"]', 0, '2026-02-27 14:32:02'),
(258, 9, 'te', 'సాధారణంగా ఎన్ని విజిట్‌లు అవసరం?', '[\"A) 5–7\",\"B) 1\",\"C) 2\",\"D) 10\"]', 0, '2026-02-27 14:32:02'),
(259, 9, 'te', 'సహజ దంతాలతో పోలిస్తే చవడం శక్తి?', '[\"A) 20–30%\",\"B) 90%\",\"C) 100%\",\"D) 50%\"]', 0, '2026-02-27 14:32:02'),
(260, 9, 'te', 'కాలక్రమేణా ప్రధాన సమస్య?', '[\"A) ఎముక సంకుచితం → డెంచర్ లూజ్ అవుతుంది\",\"B) కలర్ ఫేడ్\",\"C) చాలా టైట్\",\"D) సమస్య లేదు\"]', 0, '2026-02-27 14:32:02'),
(261, 9, 'te', 'డెంచర్ తీసేయాలి', '[\"A) రాత్రి క్లీనింగ్ మరియు మసూళ్లకు విశ్రాంతి కోసం\",\"B) ఎప్పుడూ కాదు\",\"C) తినేటప్పుడు మాత్రమే\",\"D) ఉదయం మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(262, 9, 'te', 'సోర్ స్పాట్స్', '[\"A) మొదటి కొన్ని వారాల్లో సాధారణం, డాక్టర్ అడ్జస్ట్ చేస్తారు\",\"B) శాశ్వతం\",\"C) ఎప్పుడూ రావు\",\"D) ఎగువ దవడ మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(263, 9, 'te', 'డెంచర్ దంతాల మెటీరియల్?', '[\"A) ఆక్రిలిక్ (ప్లాస్టిక్)\",\"B) మెటల్\",\"C) అసలు దంతాలు\",\"D) బంగారం\"]', 0, '2026-02-27 14:32:02'),
(264, 9, 'te', 'ప్రయోజనం?', '[\"A) త్వరగా ముసుగు మరియు బేసిక్ చవడం తిరిగి వస్తాయి\",\"B) ఇంప్లాంట్ కంటే బలమైన\",\"C) ఎప్పుడూ అడ్జస్ట్‌మెంట్ లేదు\",\"D) లైఫ్‌టైమ్ మార్పు లేకుండా\"]', 0, '2026-02-27 14:32:02'),
(265, 10, 'te', 'పార్షియల్ డెంచర్ ఎప్పుడు ఉపయోగిస్తారు?', '[\"A) కొన్ని సహజ దంతాలు ఇంకా ఉన్నప్పుడు\",\"B) అన్ని దంతాలు గుమి\",\"C) ఫ్రంట్ దంతాలు మాత్రమే గుమి\",\"D) ఇంప్లాంట్ పూర్తి అయినప్పుడు\"]', 0, '2026-02-27 14:32:02'),
(266, 10, 'te', 'ఇది ఉండిపోతుంది', '[\"A) మిగిలిన దంతాలపై క్లాస్ప్‌లతో\",\"B) ఇంప్లాంట్‌తో\",\"C) గ్లూతో\",\"D) సక్షన్‌తో\"]', 0, '2026-02-27 14:32:02'),
(267, 10, 'te', 'ఫ్రేమ్‌వర్క్ సాధారణంగా', '[\"A) మెటల్ లేదా ఫ్లెక్సిబుల్ ప్లాస్టిక్\",\"B) ప్లాస్టిక్ మాత్రమే\",\"C) బంగారం\",\"D) సెరామిక్\"]', 0, '2026-02-27 14:32:02'),
(268, 10, 'te', 'ప్రధాన నష్టం?', '[\"A) బరువుగా అనిపించవచ్చు, క్లాస్ప్ కనిపించవచ్చు\",\"B) చాలా ఖరీదు\",\"C) ఎప్పటికీ ఫిక్స్డ్\",\"D) క్లీనింగ్ అవసరం లేదు\"]', 0, '2026-02-27 14:32:02'),
(269, 10, 'te', 'పార్షియల్ డెంచర్ కింద ఎముక నష్టం?', '[\"A) అవును, కాలక్రమేణా\",\"B) కాదు\",\"C) ఎగువ మాత్రమే\",\"D) కంప్లీట్ కంటే వేగంగా\"]', 0, '2026-02-27 14:32:02'),
(270, 10, 'te', 'ఎన్నిసార్లు తీసేయాలి?', '[\"A) రోజూ క్లీనింగ్ కోసం\",\"B) ఎప్పుడూ కాదు\",\"C) రాత్రి మాత్రమే\",\"D) వారానికి ఒకసారి\"]', 0, '2026-02-27 14:32:02'),
(271, 10, 'te', 'ఇంప్లాంట్-సపోర్టెడ్‌తో పోలిక?', '[\"A) చౌక కానీ తక్కువ స్థిరత్వం\",\"B) ఎక్కువ స్థిరత్వం\",\"C) సమాన ఖర్చు\",\"D) తేడా లేదు\"]', 0, '2026-02-27 14:32:02'),
(272, 10, 'te', 'అడ్జస్ట్‌మెంట్‌లు', '[\"A) మొదటి కొన్ని వారాల్లో నొప్పి ఉంటే\",\"B) ఎప్పుడూ కాదు\",\"C) 1 సంవత్సరం తర్వాత మాత్రమే\",\"D) ప్రతి నెల\"]', 0, '2026-02-27 14:32:02'),
(273, 11, 'te', 'వెనియర్ అంటే ఏమిటి?', '[\"A) దంతం ముందు పలచని పోర్సిలైన్ షెల్\",\"B) ఫుల్ క్యాప్\",\"C) ఫిల్లింగ్\",\"D) తీసేసుకోవచ్చు\"]', 0, '2026-02-27 14:32:02'),
(274, 11, 'te', 'ఎనామెల్ ఎంత తీసేస్తారు?', '[\"A) చాలా తక్కువ (0.3–0.5 mm)\",\"B) దంతం సగం\",\"C) అన్ని ఎనామెల్\",\"D) ఏమీ కాదు\"]', 0, '2026-02-27 14:32:02'),
(275, 11, 'te', 'అత్యుత్తమం ఎవరికి?', '[\"A) ఫ్రంట్ దంతాలు – కలర్, షేప్, గ్యాప్\",\"B) వెనుక చవడం దంతాలు\",\"C) గుమి దంతాలు\",\"D) రూట్ కెనాల్ దంతాలు\"]', 0, '2026-02-27 14:32:02'),
(276, 11, 'te', 'వెనియర్‌లు', '[\"A) శాశ్వతంగా బాండ్ చేయబడతాయి\",\"B) రోజూ తీసేసుకోవచ్చు\",\"C) టెంపరరీ\",\"D) స్నాప్-ఆన్\"]', 0, '2026-02-27 14:32:02'),
(277, 11, 'te', 'చిప్పింగ్ రిస్క్?', '[\"A) 5% కంటే తక్కువ\",\"B) 50%\",\"C) 100%\",\"D) 20%\"]', 0, '2026-02-27 14:32:02'),
(278, 11, 'te', 'వెనియర్‌లు ఎంత కాలం ఉంటాయి?', '[\"A) కేర్‌తో 10–15+ సంవత్సరాలు\",\"B) 1 సంవత్సరం\",\"C) కేర్ లేకుండా ఎప్పటికీ\",\"D) 2 సంవత్సరాలు\"]', 0, '2026-02-27 14:32:02'),
(279, 11, 'te', 'హార్డ్ ఫుడ్ తినవచ్చా?', '[\"A) అవును, కానీ ఐస్ వంటి చాలా హార్డ్ వస్తువులు అవాయిడ్\",\"B) కాదు\",\"C) లిక్విడ్ మాత్రమే\",\"D) 6 నెలల తర్వాత మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(280, 11, 'te', 'ప్రధాన ప్రయోజనం?', '[\"A) కనీస దంతం తగ్గింపుతో అందమైన స్మైల్\",\"B) అత్యంత చౌక\",\"C) క్రౌన్ కంటే బలమైన\",\"D) తీసేసుకోవచ్చు\"]', 0, '2026-02-27 14:32:02'),
(281, 12, 'te', 'ఫుల్ మౌత్ రీహాబిలిటేషన్ అంటే', '[\"A) క్రౌన్, వెనియర్, ఇంప్లాంట్ మొదలైనవాటితో అన్ని దంతాల పూర్తి మేకోవర్\",\"B) క్లీనింగ్ మాత్రమే\",\"C) ఒక్క క్రౌన్\",\"D) డెంచర్ మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(282, 12, 'te', 'ట్రీట్‌మెంట్ సాధారణంగా ఎంత సమయం తీసుకుంటుంది?', '[\"A) 6–12 నెలలు\",\"B) 1 వారం\",\"C) 1 రోజు\",\"D) 1 నెల\"]', 0, '2026-02-27 14:32:02'),
(283, 12, 'te', 'మొదటి స్టెప్?', '[\"A) పూర్తి డయాగ్నోసిస్ (ఫోటోలు, స్కాన్‌లు, మోడల్స్)\",\"B) ఫైనల్ క్రౌన్‌లు\",\"C) తీసివేత\",\"D) ప్లానింగ్ లేదు\"]', 0, '2026-02-27 14:32:02'),
(284, 12, 'te', 'టెంపరరీ రీస్టోరేషన్ ఉపయోగిస్తారు', '[\"A) అవును, ఫైనల్ పని జరుగుతుండగా\",\"B) కాదు\",\"C) చివర్లో మాత్రమే\",\"D) ఎప్పుడూ కాదు\"]', 0, '2026-02-27 14:32:02'),
(285, 12, 'te', 'ప్రధాన లక్ష్యం?', '[\"A) బైట్, ఫంక్షన్ మరియు అందమైన స్మైల్ తిరిగి సాధించడం\",\"B) దంతాలు తెల్లగా మాత్రమే\",\"C) షేప్ మార్చడం మాత్రమే\",\"D) అన్ని దంతాలు తీసేయడం\"]', 0, '2026-02-27 14:32:02'),
(286, 12, 'te', 'ఫుల్ మౌత్ రీహాబ్‌లో ఇంప్లాంట్ భాగం కావచ్చా?', '[\"A) అవును\",\"B) కాదు\",\"C) క్రౌన్ మాత్రమే\",\"D) వెనియర్ మాత్రమే\"]', 0, '2026-02-27 14:32:02'),
(287, 12, 'te', 'సింగిల్ క్రౌన్‌తో పోలిస్తే రిస్క్?', '[\"A) ఎక్కువ సమయం, మొత్తం ఖర్చు ఎక్కువ\",\"B) రిస్క్ లేదు\",\"C) ఒక క్రౌన్ లాగే\",\"D) చిన్నది\"]', 0, '2026-02-27 14:32:02'),
(288, 12, 'te', 'ఎవరికి అవసరం?', '[\"A) తీవ్రమైన వేర్, బైట్ సమస్యలు లేదా అనేక దెబ్బతిన్న దంతాలు ఉన్నవారికి\",\"B) స్వస్థ దంతాలు\",\"C) ఒక్క గుమి దంతం\",\"D) పిల్లలు\"]', 0, '2026-02-27 14:32:02'),
(369, 25, 'en', 'WHAT IS IMPLANT', '[\"GDWF\", \"BFFW\", \"HWNFIW\", \"FBNF2K\"]', 0, '2026-03-15 08:06:01'),
(370, 25, 'en', 'FGHJKL', '[\"CVBNM\", \"VBNM\", \"CM\", \"CVBN\"]', 0, '2026-03-15 08:06:01'),
(371, 25, 'en', 'ERTJKL', '[\"CVBNM\", \"TY\", \"BNM\", \"FHJ\"]', 0, '2026-03-15 08:06:01'),
(372, 25, 'en', 'CVBNM', '[\"FGHJ\", \"FGHJ\", \"VBNM\", \"GHJ\"]', 0, '2026-03-15 08:06:01'),
(373, 25, 'en', 'DFGHJK', '[\"VBNM\", \"DFGHJ\", \"RTYU\", \"FGHJ\"]', 0, '2026-03-15 08:06:01'),
(374, 25, 'en', 'DFGHJKL', '[\"CVBNMJKL\", \"CVBNM\", \"FGHJ\", \"RTYU\"]', 0, '2026-03-15 08:06:01'),
(375, 25, 'en', 'FGHJK', '[\"SDFGH\", \"BNM\", \"CVB\", \"GH\"]', 0, '2026-03-15 08:06:01'),
(376, 25, 'en', 'nwcjwncin', '[\"CVBNM\", \"hdwdfuw\", \"Xzg\", \"gwcwj\"]', 0, '2026-03-15 08:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Implantology', 'Focuses on surgical placement and restoration of dental implants to replace missing teeth, including bone support procedures.', '2026-02-21 16:00:37'),
(2, 'Prosthodontics', 'Specialty dedicated to diagnosis, treatment planning, and restoration of oral function and aesthetics using crowns, bridges, dentures, veneers, and full-mouth rehabilitation.', '2026-02-21 16:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `operation_type_id` int(11) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `status` enum('scheduled','in_progress','educated','completed','cancelled') NOT NULL DEFAULT 'scheduled',
  `clinical_notes` text DEFAULT NULL,
  `patient_signature` longtext DEFAULT NULL,
  `consent_pdf_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `anesthesia_required` tinyint(1) DEFAULT 0,
  `anesthesia_pdf_url` varchar(255) DEFAULT NULL,
  `implant_pdf_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id`, `doctor_id`, `patient_id`, `operation_type_id`, `category`, `status`, `clinical_notes`, `patient_signature`, `consent_pdf_url`, `created_at`, `updated_at`, `anesthesia_required`, `anesthesia_pdf_url`, `implant_pdf_url`) VALUES
(14, 12, 8, 5, 'Implant-Supported Denture', 'completed', 'it\'s required', 'uploads/signatures/pat_sig_13680bbf56cbb8bba10213daa489501d.png', 'uploads/consent_forms/implant_consent_14_1772021790.pdf', '2026-02-22 10:36:26', '2026-02-25 12:16:30', 0, NULL, NULL),
(15, 15, 16, 7, 'Crown', '', '', NULL, NULL, '2026-02-22 11:21:12', '2026-02-22 11:21:12', 0, NULL, NULL),
(16, 12, 16, 4, 'Implant-Supported Bridge', 'in_progress', '', NULL, NULL, '2026-02-22 11:33:22', '2026-02-23 15:01:53', 0, NULL, NULL),
(28, 31, 30, 4, 'Implant-Supported Bridge', 'completed', 'u need this operation ', NULL, 'uploads/consent_forms/implant_consent_28_1772294352.pdf', '2026-02-28 08:41:17', '2026-03-01 13:21:51', 1, 'uploads/consent_forms/anesthesia_consent_28_1772294352.pdf', NULL),
(29, 33, 32, 4, 'Implant-Supported Bridge', 'in_progress', 'local anesthesia ', NULL, NULL, '2026-02-28 16:39:55', '2026-03-01 15:08:25', 1, NULL, NULL),
(30, 33, 32, 5, 'Implant-Supported Denture', 'completed', '', 'uploads/signatures/pat_sig_5ec206b9c0fe85d1e8f79ae573961322.png', 'uploads/consent_forms/implant_consent_30_1772720196.pdf', '2026-03-01 15:44:26', '2026-03-05 14:16:36', 0, NULL, NULL),
(31, 34, 25, 6, 'Bone Grafting (Support)', 'in_progress', 'chn', NULL, NULL, '2026-03-05 17:48:08', '2026-03-05 17:48:08', 1, NULL, NULL),
(32, 39, 40, 10, 'Partial Denture', 'in_progress', 'prosgt', NULL, NULL, '2026-03-15 07:34:40', '2026-03-15 07:34:40', 1, NULL, NULL),
(33, 49, 30, 4, 'Implant-Supported Bridge', 'in_progress', 'NA', NULL, NULL, '2026-03-15 07:57:56', '2026-03-15 07:57:56', 1, NULL, NULL),
(34, 56, 35, 3, 'Full Arch Implant', 'in_progress', '', NULL, NULL, '2026-03-18 06:51:08', '2026-03-18 06:51:08', 1, NULL, NULL),
(35, 55, 58, 3, 'Full Arch Implant', 'in_progress', '', NULL, NULL, '2026-03-18 06:57:03', '2026-03-18 06:57:03', 1, NULL, NULL),
(36, 60, 30, 1, 'Single Tooth Implant', 'in_progress', 'ntg', NULL, NULL, '2026-03-24 09:48:04', '2026-03-24 09:48:04', 1, NULL, NULL),
(37, 60, 32, 6, 'Bone Grafting (Support)', 'in_progress', '', NULL, NULL, '2026-03-24 10:23:04', '2026-03-24 10:23:04', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','doctor','patient') NOT NULL DEFAULT 'patient',
  `profile_image` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password_hash`, `role`, `profile_image`, `fcm_token`, `last_login`, `created_at`, `updated_at`) VALUES
(8, 'madhiremohanreddy@gmail.com', '$2y$10$UiQTVqBGpqxGpnLJhmoBeu2S94KuXtzZIvNKTFEXQX2nFwzlJpOhO', 'patient', 'uploads/profile_images/8fc08c49a016c3f47df23c7de1c16751.jpg', NULL, '2026-02-25 16:44:56', '2026-02-20 18:22:18', '2026-02-25 11:14:56'),
(12, 'mohanreddy3539@gmail.com', '$2y$10$dk/H.fUjYXiKeLY3DJYHy.CZf2lGPR2VCNO2gv9IxNxzZLEgKWzl6', 'doctor', 'uploads/profile_images/e99ee2be669a06e7f427d7c80e355d78.jpg', NULL, '2026-02-25 13:34:13', '2026-02-21 12:21:07', '2026-02-25 11:08:49'),
(15, 'sandeep@gmail.com', '$2y$10$BcHEd8B6MaYrXD/hRRbWqukC3zGedJksT04A1g1oPfk.t6QR6atWu', 'doctor', NULL, NULL, '2026-02-22 16:46:51', '2026-02-22 11:07:59', '2026-02-22 11:16:51'),
(16, 'patient@a.asj', '$2y$10$aGDynKv9BbjoG6f/io0W/OUzj8lBvwdxiphVe2Xnl1hlcXku8WPNe', 'patient', NULL, NULL, '2026-02-22 20:15:44', '2026-02-22 11:18:55', '2026-02-22 14:45:44'),
(17, 'doctor@test.cok', '$2y$10$uvW/d8qrFYVl1J6dr.Gn2.yslHqUWU0KZ9NKHE924Ac2.N2ezsdEq', 'doctor', NULL, NULL, '2026-02-22 20:14:12', '2026-02-22 14:44:00', '2026-02-22 14:44:12'),
(18, 'ycyc@ucc.ycu', '$2y$10$hd30UeihiLLKoBs.UQa1NOqESFqkrBPw4SviMrBR3kUCJOq7ZoJea', 'patient', NULL, NULL, NULL, '2026-02-25 07:50:09', '2026-02-25 07:50:09'),
(25, 'bhanupilli99@gmail.com', '$2y$10$LZ9Hr2O74kvU3SrswpvFWuE6CcjU0.PrtQ5JHg8us8hsPh1xcMW76', 'patient', NULL, NULL, '2026-02-26 21:53:11', '2026-02-26 16:22:54', '2026-02-26 16:23:11'),
(30, 'k.nobitha666+patient@gmail.com', '$2y$10$iISzWbxeKYL/Uf96uTtMEOV5OsVs.r6dkosGvGNR1o3SYLDJsxX1G', 'patient', 'uploads/profile_images/e5b7e1ae87d805a40f97f4b5cc4c27f1.jpg', NULL, '2026-02-28 21:21:22', '2026-02-26 18:30:08', '2026-02-28 15:53:15'),
(31, 'doctor@test.com', '$2y$10$7P2ocAfICOBKkPOkHRkHMem/MgAZw64n2TY0Q.FPMTCPnZpvJHuge', 'doctor', NULL, NULL, '2026-02-28 21:20:18', '2026-02-26 18:31:52', '2026-02-28 15:50:18'),
(32, 'mohan@gmail.com', '$2b$12$rK1b5.JyNnhMtzPhWplvauIlanmrHr0XmT/NWa1GaWUb5Tu1qu1nS', 'patient', 'uploads/profile_images/5639670ff1fff04b649d5c4c7ff744c9.jpg', NULL, '2026-03-02 15:00:17', '2026-02-28 16:04:14', '2026-03-02 09:30:17'),
(33, 'doctor@test.coo', '$2b$12$d49H03dFKeNkcC3D7gnZPuHHmVa9kylzHVsEgTz6UuLL3jr5Fxqa6', 'doctor', 'uploads/profile_images/4f76a48636aa378ef423df44c3e475c6.jpg', NULL, '2026-03-01 22:14:23', '2026-02-28 16:05:35', '2026-03-01 16:44:23'),
(34, 'narendra123@gmail.com', '$2b$12$WHhIUbWhkZrXyWcAiX8o5./IV/HScidhU8F6/4rV6dHkXqmokHabu', 'doctor', NULL, NULL, '2026-03-05 23:18:54', '2026-03-05 17:47:03', '2026-03-05 17:48:54'),
(35, 'sahasra@gmail.com', '$2b$12$QOsK8GCfzDFD2z5kZDLVNuEvsXev08CLDM6vhYk/9fSJjhYs2Ql/m', 'patient', NULL, NULL, '2026-03-05 23:26:19', '2026-03-05 17:52:30', '2026-03-05 17:56:19'),
(38, 'sandeep.kumar1239081@gmail.com', '$2b$12$nOmgyRTTByPNwV8puZid.uBHAHr23i/mW8Hv2RYQDnsD9rnirq0Ze', 'patient', NULL, NULL, '2026-03-07 14:16:50', '2026-03-07 07:49:37', '2026-03-07 08:46:50'),
(39, 'patietnt1@a.a', '$2b$12$puP5xW8FXByrhdo38fcDqer7M1tVO5A7hRY5r51BblX0rT2Xm3yuK', 'doctor', 'uploads/profile_images/fd49a608e4cf3897aa1005e8e9eee4fe.png', NULL, '2026-03-15 13:00:58', '2026-03-15 07:29:04', '2026-03-15 07:31:18'),
(40, 'patient@gmail.com', '$2b$12$GvuD/xJ0bKU9Dwx2a4P3t.HVwS4u0bf3A9N8aCTMtrbyfDMQQNI6m', 'patient', 'uploads/profile_images/189eaba91afc985cdc3cdb98ff787a51.png', NULL, '2026-03-15 13:03:34', '2026-03-15 07:32:59', '2026-03-15 07:34:00'),
(48, 'bhanupilli99+patientno1@gmail.com', '$2b$12$47HpqcoMng6/S1OFMqiUverP1hchgM/26RZjiaVwDI8agl1/M5TTO', 'patient', 'uploads/profile_images/19e967005103d606fc4a74e5a7105f54.png', NULL, '2026-03-15 13:20:51', '2026-03-15 07:49:56', '2026-03-15 07:53:52'),
(49, 'sandeepkumarsravya89@gmail.com', '$2b$12$UU8hPALnvlPXTFo7PY2tF./foEQhX1KX5oWq9CfjdfqSMv89N0e6y', 'doctor', NULL, NULL, '2026-03-15 13:27:32', '2026-03-15 07:57:01', '2026-03-15 07:57:32'),
(50, 'sharmasree67@gmail.com', '$2b$12$GltB.cXXUrk/7pqvX072suvLCQ4WlgEM/zBpbbAN9pwvcWxzL9ary', 'patient', NULL, NULL, '2026-03-15 13:39:05', '2026-03-15 08:08:23', '2026-03-15 08:09:05'),
(51, 'dineshthorlapati@gmail.com', '$2b$12$P5VTZC6UW7EMc5ybfSH43e6COoqRvkFWPJqOoJ4bU1jr1Bm39rAJW', 'patient', NULL, NULL, '2026-03-18 09:56:09', '2026-03-18 04:25:52', '2026-03-18 04:26:09'),
(52, 'sandeep+pateint@gmail.com', '$2b$12$KDSYHDcL6eaVh.xOYaJBF.zwnmFkBsTWN1.j0.9PosUZgcV15iZM.', 'patient', NULL, NULL, '2026-03-18 10:48:27', '2026-03-18 05:17:51', '2026-03-18 05:18:27'),
(55, 'bhanu=9999@gmail.com', '$2b$12$x2xm/7fUWNnTf0KpwdO4X.KOPz4W1xw8aoypMfOrvkdFynoBth3ji', 'doctor', NULL, NULL, '2026-03-18 12:25:33', '2026-03-18 06:35:22', '2026-03-18 06:55:33'),
(56, 'sandinesh34@gmail.com', '$2b$12$Ptv2KfthWEhNYj9f/IZywuDCDgbaABz20iRyZBTwH1xKXCSTCtwk6', 'doctor', NULL, NULL, '2026-03-18 12:20:13', '2026-03-18 06:48:17', '2026-03-18 06:50:13'),
(58, 'dineshthorlaghjjj8968pati@gmail.com', '$2b$12$GAoSoKmkBRoU5CM7CIz/veNGCN0JrT2bhCIQUXMfkNeKp0Z.oZosa', 'patient', NULL, NULL, '2026-03-18 12:28:44', '2026-03-18 06:53:49', '2026-03-18 06:58:44'),
(59, 'java@gmail.com', '$2b$12$c.dd9jhb4V70rkD/G4pOouoYuusCafDjbkiwL1bh.G/32WwDdVCjy', 'patient', NULL, NULL, NULL, '2026-03-18 07:47:05', '2026-03-18 07:47:05'),
(60, 'dfykgh56@gmail.com', '$2b$12$3wl1KHNVmbNjn8zaVS4dQekY/m3TvkdvI1B7isD1e7ccMZiUGITYy', 'doctor', NULL, NULL, '2026-03-24 16:18:07', '2026-03-24 09:47:05', '2026-03-24 10:48:07'),
(61, 'qwerty12@gmail.com', '$2b$12$Exut97JfHC8i.oKBN86VcOoeMpA6c0IOwreZ0c4oYBw6P6pEa9k42', 'patient', NULL, NULL, '2026-03-24 16:16:22', '2026-03-24 10:26:31', '2026-03-24 10:46:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_audit_user` (`user_id`),
  ADD KEY `idx_audit_action` (`action`);

--
-- Indexes for table `consent_checklist_records`
--
ALTER TABLE `consent_checklist_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `treatment_id` (`treatment_id`);

--
-- Indexes for table `consent_records`
--
ALTER TABLE `consent_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `treatment_id` (`treatment_id`);

--
-- Indexes for table `doctor_profiles`
--
ALTER TABLE `doctor_profiles`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `council_id` (`council_id`);

--
-- Indexes for table `educational_videos`
--
ALTER TABLE `educational_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_type_id` (`operation_type_id`);

--
-- Indexes for table `general_education`
--
ALTER TABLE `general_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `key_topics`
--
ALTER TABLE `key_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_type_id` (`operation_type_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_types`
--
ALTER TABLE `operation_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `specialization_id` (`specialization_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_medical_conditions`
--
ALTER TABLE `patient_medical_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_condition_patient` (`patient_id`);

--
-- Indexes for table `patient_profiles`
--
ALTER TABLE `patient_profiles`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_patient_mobile` (`mobile_number`);

--
-- Indexes for table `procedure_alternatives`
--
ALTER TABLE `procedure_alternatives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_type_id` (`operation_type_id`);

--
-- Indexes for table `procedure_benefits`
--
ALTER TABLE `procedure_benefits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_type_id` (`operation_type_id`);

--
-- Indexes for table `procedure_checklists`
--
ALTER TABLE `procedure_checklists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_type_id` (`operation_type_id`);

--
-- Indexes for table `procedure_risks`
--
ALTER TABLE `procedure_risks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_type_id` (`operation_type_id`);

--
-- Indexes for table `procedure_steps`
--
ALTER TABLE `procedure_steps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_step` (`operation_type_id`,`step_number`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_type_id` (`operation_type_id`);

--
-- Indexes for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `treatment_id` (`treatment_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_type_id` (`operation_type_id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_treatment_doctor` (`doctor_id`),
  ADD KEY `idx_treatment_patient` (`patient_id`),
  ADD KEY `fk_treatment_operation` (`operation_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_user_email` (`email`),
  ADD KEY `idx_user_role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consent_checklist_records`
--
ALTER TABLE `consent_checklist_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `consent_records`
--
ALTER TABLE `consent_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `educational_videos`
--
ALTER TABLE `educational_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `general_education`
--
ALTER TABLE `general_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `key_topics`
--
ALTER TABLE `key_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `operation_types`
--
ALTER TABLE `operation_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `patient_medical_conditions`
--
ALTER TABLE `patient_medical_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `procedure_alternatives`
--
ALTER TABLE `procedure_alternatives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `procedure_benefits`
--
ALTER TABLE `procedure_benefits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `procedure_checklists`
--
ALTER TABLE `procedure_checklists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `procedure_risks`
--
ALTER TABLE `procedure_risks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `procedure_steps`
--
ALTER TABLE `procedure_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consent_checklist_records`
--
ALTER TABLE `consent_checklist_records`
  ADD CONSTRAINT `consent_checklist_records_ibfk_1` FOREIGN KEY (`treatment_id`) REFERENCES `treatments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consent_records`
--
ALTER TABLE `consent_records`
  ADD CONSTRAINT `fk_consent_treatment` FOREIGN KEY (`treatment_id`) REFERENCES `treatments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_profiles`
--
ALTER TABLE `doctor_profiles`
  ADD CONSTRAINT `fk_doctor_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `educational_videos`
--
ALTER TABLE `educational_videos`
  ADD CONSTRAINT `educational_videos_ibfk_1` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`);

--
-- Constraints for table `key_topics`
--
ALTER TABLE `key_topics`
  ADD CONSTRAINT `key_topics_ibfk_1` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`);

--
-- Constraints for table `operation_types`
--
ALTER TABLE `operation_types`
  ADD CONSTRAINT `operation_types_ibfk_1` FOREIGN KEY (`specialization_id`) REFERENCES `specializations` (`id`);

--
-- Constraints for table `patient_medical_conditions`
--
ALTER TABLE `patient_medical_conditions`
  ADD CONSTRAINT `fk_medical_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient_profiles` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_profiles`
--
ALTER TABLE `patient_profiles`
  ADD CONSTRAINT `fk_patient_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `procedure_alternatives`
--
ALTER TABLE `procedure_alternatives`
  ADD CONSTRAINT `procedure_alternatives_ibfk_1` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `procedure_benefits`
--
ALTER TABLE `procedure_benefits`
  ADD CONSTRAINT `procedure_benefits_ibfk_1` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`);

--
-- Constraints for table `procedure_checklists`
--
ALTER TABLE `procedure_checklists`
  ADD CONSTRAINT `procedure_checklists_ibfk_1` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `procedure_risks`
--
ALTER TABLE `procedure_risks`
  ADD CONSTRAINT `procedure_risks_ibfk_1` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`);

--
-- Constraints for table `procedure_steps`
--
ALTER TABLE `procedure_steps`
  ADD CONSTRAINT `procedure_steps_ibfk_1` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`);

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_attempts`
--
ALTER TABLE `quiz_attempts`
  ADD CONSTRAINT `quiz_attempts_ibfk_1` FOREIGN KEY (`treatment_id`) REFERENCES `treatments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `quiz_questions_ibfk_1` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `treatments`
--
ALTER TABLE `treatments`
  ADD CONSTRAINT `fk_treatment_doctor` FOREIGN KEY (`doctor_id`) REFERENCES `doctor_profiles` (`user_id`),
  ADD CONSTRAINT `fk_treatment_operation` FOREIGN KEY (`operation_type_id`) REFERENCES `operation_types` (`id`),
  ADD CONSTRAINT `fk_treatment_patient` FOREIGN KEY (`patient_id`) REFERENCES `patient_profiles` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
