-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 06:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gitbotble`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ki5aUVdVcXFqjVbhPrx9049S8Fs7xjYm', 1, '2022-01-04 04:39:02', '2022-01-04 04:39:02', '2022-01-04 04:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rodrigo Witting II', 'rodrigo-witting-ii', 'Consectetur voluptate repellendus mollitia nisi.', 'Vero expedita officiis eius ut. Doloremque ipsam quis soluta accusantium consequatur voluptates et. Animi minus odit nulla inventore quia pariatur est. Dolor maiores voluptas reprehenderit asperiores laborum sed voluptate. Sapiente maiores similique cupiditate nam est itaque. Quas quaerat non velit laudantium autem officiis illo. Est consequatur totam voluptas omnis. Perspiciatis ut et voluptatem sapiente corporis eveniet animi possimus. Ab tempora facere molestiae aut in nulla.', 'published', NULL, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(2, 'Prof. Damian Orn IV', 'prof-damian-orn-iv', 'Aperiam nihil vel occaecati eligendi optio.', 'Nihil sunt praesentium eum non neque nemo tempora. Quia dolor qui dicta exercitationem rerum. Ea in officia ex. Et quo officia provident. Placeat quia officia dolor voluptatum esse aperiam autem. Rerum incidunt est sint ducimus tenetur quo. Quia minus recusandae aut fuga. Consequatur temporibus quia id quod asperiores. Minima rem mollitia fugiat. Ut optio omnis saepe veniam. Modi accusamus dolores cum quidem aut. Optio earum sapiente non dolores laudantium et dicta.', 'published', NULL, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(3, 'Ryan Reinger', 'ryan-reinger', 'Earum a dolore repellendus.', 'Assumenda sit laudantium quo dolore non. Aliquam et qui odit. Ut molestias maxime sit. Omnis ipsam ut quia voluptatem. Suscipit eos et aut omnis et. Est ipsa labore neque a. Nostrum maxime atque nesciunt dolore deserunt rerum qui labore. Assumenda perspiciatis et facilis labore. Laborum vitae molestiae quos ea. Delectus et enim voluptatibus sint ducimus voluptate vero. Et animi cupiditate in veniam voluptas praesentium animi.', 'published', NULL, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(4, 'Kamille Lemke', 'kamille-lemke', 'Autem aliquam placeat in esse.', 'Error nihil maiores quis sunt. Tempore nobis sit doloribus doloribus. Voluptatem eum perspiciatis commodi consequatur. Qui blanditiis possimus facilis quam accusamus aut sunt. Expedita voluptas laudantium beatae dolore ab. Delectus cumque explicabo pariatur corrupti accusantium quibusdam tempore. Corrupti voluptate occaecati iusto atque nihil voluptatem.', 'published', NULL, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(5, 'Ms. Arlie Johnston Sr.', 'ms-arlie-johnston-sr', 'Dolor illum modi magnam.', 'Officiis sed saepe nemo distinctio at dignissimos quo. Inventore consequatur cum quisquam aut. Omnis voluptas rem eos dolor voluptatem asperiores. Rerum in vero commodi molestiae. Ab consequatur laboriosam quas voluptas. Nisi et eum expedita ut sit reprehenderit. Vel incidunt accusantium qui. Odit similique est quam autem. Enim velit temporibus quia ut. Laudantium accusamus fugiat sequi tempora necessitatibus. Modi pariatur atque qui eius nulla quo nam aut.', 'published', NULL, '2022-01-04 04:39:09', '2022-01-04 04:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `blocks_translations`
--

CREATE TABLE `blocks_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocks_translations`
--

INSERT INTO `blocks_translations` (`lang_code`, `blocks_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Rodrigo Witting II', 'Consectetur voluptate repellendus mollitia nisi.', 'Vero expedita officiis eius ut. Doloremque ipsam quis soluta accusantium consequatur voluptates et. Animi minus odit nulla inventore quia pariatur est. Dolor maiores voluptas reprehenderit asperiores laborum sed voluptate. Sapiente maiores similique cupiditate nam est itaque. Quas quaerat non velit laudantium autem officiis illo. Est consequatur totam voluptas omnis. Perspiciatis ut et voluptatem sapiente corporis eveniet animi possimus. Ab tempora facere molestiae aut in nulla.'),
('vi', 2, 'Prof. Damian Orn IV', 'Aperiam nihil vel occaecati eligendi optio.', 'Nihil sunt praesentium eum non neque nemo tempora. Quia dolor qui dicta exercitationem rerum. Ea in officia ex. Et quo officia provident. Placeat quia officia dolor voluptatum esse aperiam autem. Rerum incidunt est sint ducimus tenetur quo. Quia minus recusandae aut fuga. Consequatur temporibus quia id quod asperiores. Minima rem mollitia fugiat. Ut optio omnis saepe veniam. Modi accusamus dolores cum quidem aut. Optio earum sapiente non dolores laudantium et dicta.'),
('vi', 3, 'Ryan Reinger', 'Earum a dolore repellendus.', 'Assumenda sit laudantium quo dolore non. Aliquam et qui odit. Ut molestias maxime sit. Omnis ipsam ut quia voluptatem. Suscipit eos et aut omnis et. Est ipsa labore neque a. Nostrum maxime atque nesciunt dolore deserunt rerum qui labore. Assumenda perspiciatis et facilis labore. Laborum vitae molestiae quos ea. Delectus et enim voluptatibus sint ducimus voluptate vero. Et animi cupiditate in veniam voluptas praesentium animi.'),
('vi', 4, 'Kamille Lemke', 'Autem aliquam placeat in esse.', 'Error nihil maiores quis sunt. Tempore nobis sit doloribus doloribus. Voluptatem eum perspiciatis commodi consequatur. Qui blanditiis possimus facilis quam accusamus aut sunt. Expedita voluptas laudantium beatae dolore ab. Delectus cumque explicabo pariatur corrupti accusantium quibusdam tempore. Corrupti voluptate occaecati iusto atque nihil voluptatem.'),
('vi', 5, 'Ms. Arlie Johnston Sr.', 'Dolor illum modi magnam.', 'Officiis sed saepe nemo distinctio at dignissimos quo. Inventore consequatur cum quisquam aut. Omnis voluptas rem eos dolor voluptatem asperiores. Rerum in vero commodi molestiae. Ab consequatur laboriosam quas voluptas. Nisi et eum expedita ut sit reprehenderit. Vel incidunt accusantium qui. Odit similique est quam autem. Enim velit temporibus quia ut. Laudantium accusamus fugiat sequi tempora necessitatibus. Modi pariatur atque qui eius nulla quo nam aut.');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Design', 0, 'Voluptas veniam aut quae. Aut magni et praesentium consequatur quam quam. Sed id aut quo quidem qui ipsam quas. Eligendi et quis deserunt mollitia sit. Vel consequuntur vel enim.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(2, 'Lifestyle', 0, 'Sapiente facere harum nesciunt ut eum. Aut sunt possimus vero et. Soluta exercitationem quos quo rerum tenetur magnam modi.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(3, 'Travel Tips', 2, 'Modi fuga vero explicabo eum. Sit in a quia sit voluptatem consequatur excepturi. Et voluptatem beatae maiores provident maxime totam alias. Ipsum molestiae qui unde accusamus sit iusto id.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(4, 'Healthy', 0, 'Et vero deleniti eum omnis ut. Unde nam placeat iure aliquid sit reiciendis quod.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(5, 'Travel Tips', 4, 'Eaque omnis omnis nisi consequatur eveniet consequatur sit. Assumenda iste autem non magnam. Fugiat facilis quibusdam iste enim qui sed cupiditate.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(6, 'Hotel', 0, 'Odio iste et est molestiae officia natus. Facere quae omnis similique corrupti. Excepturi autem sequi dolor sed debitis neque qui rerum.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 1, 0, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(7, 'Nature', 6, 'Delectus sit quia molestias iste. Mollitia veniam laboriosam numquam ut. Est earum modi nihil aspernatur ea velit ut.', 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-01-04 04:39:06', '2022-01-04 04:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_translations`
--

INSERT INTO `categories_translations` (`lang_code`, `categories_id`, `name`, `description`) VALUES
('vi', 1, 'Phong cách sống', NULL),
('vi', 2, 'Sức khỏe', NULL),
('vi', 3, 'Món ngon', NULL),
('vi', 4, 'Sức khỏe', NULL),
('vi', 5, 'Mẹo du lịch', NULL),
('vi', 6, 'Khách sạn', NULL),
('vi', 7, 'Thiên nhiên', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aaliyah Marvin DVM', 'kmarvin@example.net', '475.900.0664', '798 Ebert Dam\nNew Stacyfurt, ME 49169-9763', 'Rerum est commodi enim et dicta doloremque.', 'Illum ad accusamus possimus accusantium. Velit in nam molestiae est in laboriosam consequatur. Saepe est modi ea earum nemo nam. Voluptatem voluptatem pariatur possimus corrupti. Quos laboriosam similique quo non doloribus. Placeat illum molestiae impedit perspiciatis. Quis ea et quod blanditiis consequatur qui in. Quod sapiente assumenda praesentium velit. Enim quasi sit cupiditate nihil perferendis sequi beatae quaerat. Excepturi ducimus pariatur adipisci rem sed aspernatur quidem.', 'unread', '2022-01-04 04:39:08', '2022-01-04 04:39:08'),
(2, 'Dr. Aryanna Donnelly', 'mblanda@example.org', '(608) 585-6288', '9899 Cory Ferry\nPourosport, IL 66527-2708', 'Ut delectus sed ex aliquid.', 'Praesentium saepe sint quisquam sit facilis eos aut. Et ut ut beatae illum autem mollitia. Molestiae saepe qui explicabo omnis. Fuga corporis fugit qui. Laborum ipsam id omnis reprehenderit non dignissimos sapiente. Officiis deserunt esse debitis repudiandae dignissimos sed vitae eum. Provident aperiam illo quia voluptas ea. Repellat omnis alias magnam ut doloremque a. Illum nam harum laboriosam rerum sunt. Omnis porro sunt quia delectus. Eligendi iste odit aut sit. Ut et incidunt in voluptas.', 'read', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(3, 'Mr. Xzavier Stiedemann', 'ckreiger@example.com', '+1 (361) 307-9301', '83770 Amina Park Suite 118\nJarvisberg, NV 09835-9617', 'Enim impedit voluptatem ut aut.', 'Pariatur aperiam non vel placeat numquam iste. Soluta et impedit quasi quia nobis aperiam. Consequatur consequatur explicabo ab numquam animi nostrum sunt esse. Quam est dolorem quis voluptatibus. Fuga eos error assumenda architecto deleniti possimus sunt. Ex minima minima architecto. Doloremque et sapiente expedita natus eius ut. Voluptas rerum accusamus sit nihil. Omnis est rerum eum. Explicabo repellat sit ut deleniti sit voluptatem at odio.', 'unread', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(4, 'Polly Price', 'armani.jacobi@example.org', '952.807.7905', '63586 Romaguera Creek Suite 647\nEdytheburgh, KS 58463', 'Est enim magnam maiores.', 'Modi qui dolore accusantium occaecati commodi voluptas voluptas laudantium. Nisi voluptate qui perferendis eius voluptatem modi ducimus. Architecto iure similique incidunt id laboriosam cupiditate sapiente ut. Possimus non repudiandae ipsa quam animi. Est quo et voluptatem. Aut expedita consequatur nihil ut iure repellendus sint sequi. Perspiciatis neque sint itaque necessitatibus nobis nihil quasi.', 'read', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(5, 'Jackie Raynor', 'volkman.shana@example.com', '1-386-676-4213', '95986 Camron Roads\nLake Helene, VA 87639', 'Eos et vero animi minima amet laborum ut.', 'Alias voluptatibus iusto pariatur quis odit. Asperiores quia quo minus itaque adipisci et. Nihil sed et ipsum enim impedit officia assumenda. Consequatur nisi mollitia et assumenda alias distinctio omnis. Et et voluptatum omnis explicabo sapiente qui nulla. Consequatur ipsum voluptas commodi placeat aspernatur quia. Optio nemo quaerat incidunt ex. Esse et libero sed commodi dolorum modi rem. Repellendus tempora eos voluptatem eius aliquid ut.', 'read', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(6, 'Neil Sawayn', 'robin02@example.com', '+1-651-764-9844', '5631 Padberg Parkways Apt. 930\nNew Tillman, CA 86680-1373', 'Quia qui laboriosam ullam nulla.', 'Tempore architecto ipsa enim nemo illo. Corrupti ab fugiat similique perspiciatis quasi repudiandae. Nemo expedita perspiciatis explicabo itaque. Odio repellat et hic reiciendis impedit. Quod et molestias architecto. Est doloremque dolor impedit. Id consequatur enim ipsa dolores beatae quo velit. Omnis numquam provident vero repudiandae dicta ducimus. Quia hic minima cumque earum. Est ipsa voluptatem quo mollitia sunt. Ipsum distinctio laborum ratione quibusdam officia.', 'unread', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(7, 'Mrs. Aileen Wilderman Jr.', 'spinka.teresa@example.com', '+1.520.333.8330', '20169 Patricia Manors Suite 417\nEast Meggiestad, WY 59316', 'Ipsum et itaque nulla tempora.', 'Qui et atque eos dolor saepe. Atque sunt optio nulla velit doloremque illo officia nihil. Et non aliquid rerum non. Ea est unde officia explicabo. Facilis maiores itaque maiores maxime. Facere velit voluptates voluptatem beatae occaecati. Ut deserunt voluptatem in consectetur ea reiciendis explicabo. Suscipit eveniet quo iure quidem. Error impedit impedit quia dolorem quasi labore in. Aut sed ex eius. Quia assumenda est error. Et nihil accusamus amet voluptatum placeat.', 'read', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(8, 'Cristal Rutherford', 'bjast@example.com', '+1-979-567-9178', '41127 Pouros Burgs\nGleasonmouth, NY 67359-1637', 'Ut aliquam et molestias et in.', 'Dolorum voluptatem aut cum voluptatem unde et commodi. In voluptatum magnam voluptates eum delectus. Neque maxime eius consectetur quia deserunt possimus ratione. Aut dolor totam tempore expedita blanditiis aut. Dolor dolorem qui et commodi voluptatem voluptatum error. Dolor cupiditate et rerum voluptatem molestias aspernatur harum. Exercitationem maxime ipsa laborum aut sunt quia. Eos animi minus est repudiandae quas recusandae. Est soluta porro unde eum.', 'unread', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(9, 'Joshuah Kessler', 'anya82@example.net', '330-440-0296', '61735 Darius Vista\nWest Freedaton, WA 75840-0838', 'Id rem itaque fugit enim officia esse.', 'Nulla ducimus quibusdam sunt voluptatem blanditiis maxime suscipit nam. Expedita perferendis illo voluptatem atque facilis nulla. Quasi odio iure recusandae laborum rerum. Occaecati qui ut dignissimos dolor assumenda aut. Distinctio voluptas repellendus omnis. Repudiandae ab cum nobis aut. At velit eaque sit atque officiis recusandae. Officiis voluptates aut sit vitae. Unde est consectetur repellendus commodi nemo perspiciatis ullam. Ut necessitatibus ex aliquam voluptas enim sequi blanditiis.', 'read', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(10, 'Emma Rath', 'selina11@example.org', '205.860.6598', '1454 Bauch Road\nGibsontown, VT 17319-3892', 'Sed sint sunt odio.', 'Similique impedit sunt eos consequatur ut voluptatum enim. Ut ut eum dolor atque aperiam illo. Adipisci voluptate quam nemo quia. Cupiditate et praesentium earum nihil autem. Beatae ea odio dignissimos aut alias commodi. Dolor sint itaque tempora qui. Dolores eius aliquam tenetur ut dolore cupiditate.', 'unread', '2022-01-04 04:39:09', '2022-01-04 04:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

CREATE TABLE `field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

CREATE TABLE `field_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Perfect', 'Voluptatem ipsam aut optio ipsam molestiae. Facilis et sunt enim id sed consequatur itaque.', 1, 0, 'galleries/1.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(2, 'New Day', 'Enim enim odit facere dolor laboriosam ab et. Assumenda excepturi omnis omnis saepe possimus sit dolores. Unde alias voluptatem iusto dolore.', 1, 0, 'galleries/2.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(3, 'Happy Day', 'Et voluptas cum tenetur et rerum. Expedita libero dolorem et fugit fugiat. Esse vel voluptatem sapiente et.', 1, 0, 'galleries/3.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(4, 'Nature', 'Cumque molestiae est odio ut velit. Molestiae reprehenderit doloremque perspiciatis dolores. Eum voluptatibus impedit ut.', 1, 0, 'galleries/4.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(5, 'Morning', 'Numquam quia reprehenderit ut voluptatem ea adipisci quis explicabo. Et culpa nihil tempora tenetur. Rerum molestiae doloribus sint.', 1, 0, 'galleries/5.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(6, 'Photography', 'Nemo dicta natus minus culpa. Vero ducimus fugiat nisi alias. Sunt sapiente facilis expedita et laborum illum laborum.', 1, 0, 'galleries/6.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

CREATE TABLE `galleries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries_translations`
--

INSERT INTO `galleries_translations` (`lang_code`, `galleries_id`, `name`, `description`) VALUES
('vi', 1, 'Hoàn hảo', NULL),
('vi', 2, 'Ngày mới', NULL),
('vi', 3, 'Ngày hạnh phúc', NULL),
('vi', 4, 'Thiên nhiên', NULL),
('vi', 5, 'Buổi sáng', NULL),
('vi', 6, 'Nghệ thuật', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 1, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 2, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 3, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 4, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 5, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 1, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '47865bdf59ccdfdbee94ca86bce8859f', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(2, 'en_US', '23bb922078395d1fcea2943f85e04c71', 1, 'Botble\\Menu\\Models\\Menu'),
(3, 'en_US', '9a6e3ed1f80a081ecf4686f808ece5ed', 2, 'Botble\\Menu\\Models\\Menu'),
(4, 'en_US', 'eb563b54486d97f6af72470e7c818105', 3, 'Botble\\Menu\\Models\\Menu'),
(5, 'en_US', 'd9c34b999230695a99bf18132ca5790a', 4, 'Botble\\Menu\\Models\\Menu'),
(6, 'en_US', '45a9ba228c77b4330d0fa764529a3864', 5, 'Botble\\Menu\\Models\\Menu'),
(7, 'vi', '8e456ef423e0c15e1fab8e755aedcfca', 2, 'Botble\\Menu\\Models\\MenuLocation'),
(8, 'vi', '23bb922078395d1fcea2943f85e04c71', 6, 'Botble\\Menu\\Models\\Menu'),
(9, 'vi', '9a6e3ed1f80a081ecf4686f808ece5ed', 7, 'Botble\\Menu\\Models\\Menu'),
(10, 'vi', 'eb563b54486d97f6af72470e7c818105', 8, 'Botble\\Menu\\Models\\Menu'),
(11, 'vi', 'd9c34b999230695a99bf18132ca5790a', 9, 'Botble\\Menu\\Models\\Menu'),
(12, 'vi', '45a9ba228c77b4330d0fa764529a3864', 10, 'Botble\\Menu\\Models\\Menu');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1', 1, 'image/jpeg', 42814, 'galleries/1.jpg', '[]', '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(2, 0, '10', 1, 'image/jpeg', 95796, 'galleries/10.jpg', '[]', '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(3, 0, '2', 1, 'image/jpeg', 43108, 'galleries/2.jpg', '[]', '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(4, 0, '3', 1, 'image/jpeg', 67060, 'galleries/3.jpg', '[]', '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(5, 0, '4', 1, 'image/jpeg', 60609, 'galleries/4.jpg', '[]', '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(6, 0, '5', 1, 'image/jpeg', 70264, 'galleries/5.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(7, 0, '6', 1, 'image/jpeg', 40607, 'galleries/6.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(8, 0, '7', 1, 'image/jpeg', 41491, 'galleries/7.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(9, 0, '8', 1, 'image/jpeg', 58063, 'galleries/8.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(10, 0, '9', 1, 'image/jpeg', 69288, 'galleries/9.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(11, 0, '1', 2, 'image/jpeg', 37471, 'news/1.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(12, 0, '10', 2, 'image/jpeg', 40607, 'news/10.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(13, 0, '11', 2, 'image/jpeg', 82629, 'news/11.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(14, 0, '12', 2, 'image/jpeg', 119904, 'news/12.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(15, 0, '13', 2, 'image/jpeg', 89543, 'news/13.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(16, 0, '14', 2, 'image/jpeg', 51573, 'news/14.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(17, 0, '15', 2, 'image/jpeg', 41164, 'news/15.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(18, 0, '16', 2, 'image/jpeg', 80696, 'news/16.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(19, 0, '2', 2, 'image/jpeg', 95796, 'news/2.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(20, 0, '3', 2, 'image/jpeg', 81399, 'news/3.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(21, 0, '4', 2, 'image/jpeg', 68906, 'news/4.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(22, 0, '5', 2, 'image/jpeg', 63094, 'news/5.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(23, 0, '6', 2, 'image/jpeg', 89733, 'news/6.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(24, 0, '7', 2, 'image/jpeg', 43998, 'news/7.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(25, 0, '8', 2, 'image/jpeg', 68906, 'news/8.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(26, 0, '9', 2, 'image/jpeg', 58063, 'news/9.jpg', '[]', '2022-01-04 04:39:06', '2022-01-04 04:39:06', NULL),
(27, 0, '1', 3, 'image/jpeg', 11752, 'members/1.jpg', '[]', '2022-01-04 04:39:06', '2022-01-04 04:39:06', NULL),
(28, 0, '10', 3, 'image/jpeg', 27814, 'members/10.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(29, 0, '2', 3, 'image/jpeg', 19005, 'members/2.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(30, 0, '3', 3, 'image/jpeg', 20400, 'members/3.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(31, 0, '4', 3, 'image/jpeg', 26819, 'members/4.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(32, 0, '5', 3, 'image/jpeg', 14367, 'members/5.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(33, 0, '6', 3, 'image/jpeg', 12367, 'members/6.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(34, 0, '7', 3, 'image/jpeg', 20652, 'members/7.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(35, 0, '8', 3, 'image/jpeg', 21164, 'members/8.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(36, 0, '9', 3, 'image/jpeg', 6084, 'members/9.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(37, 0, 'favicon', 4, 'image/png', 3807, 'general/favicon.png', '[]', '2022-01-04 04:39:09', '2022-01-04 04:39:09', NULL),
(38, 0, 'logo', 4, 'image/png', 138446, 'general/logo.png', '[]', '2022-01-04 04:39:09', '2022-01-04 04:39:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'galleries', 'galleries', 0, '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(2, 0, 'news', 'news', 0, '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(3, 0, 'members', 'members', 0, '2022-01-04 04:39:06', '2022-01-04 04:39:06', NULL),
(4, 0, 'general', 'general', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Smith', 'Five, \'and I\'ll tell him--it.', NULL, 'john.smith@botble.com', '$2y$10$fB0ju6oVlJE.mN1CYyAVCOwOqbRZeyHPH.Mg3P5hFMtORusO6QvyW', 27, '2003-01-22', '510.401.1326', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08'),
(2, 'Newton', 'Rice', 'I\'m sure I can\'t understand.', NULL, 'ekirlin@hotmail.com', '$2y$10$93vlfhNXR1DZC21Hihy6MuKXNiK43MFXNeiMWd5M3v7j1eU1H/eEW', 28, '2015-10-27', '570-490-6308', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08'),
(3, 'Thelma', 'Lueilwitz', 'Hatter, with an important.', NULL, 'reed68@krajcik.com', '$2y$10$R3XF5zwEdr7Gv6DBtACDOuJuOGIT3d8GbOAyKD7mi.m7v7WrN2nAO', 29, '1977-09-24', '781.637.2615', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08'),
(4, 'Caroline', 'Kreiger', 'I learn music.\' \'Ah! that.', NULL, 'stacy39@hotmail.com', '$2y$10$WFXkE3kJe.YyFoqmBPgalupkRKlC0XO8Exfc0M5w9KpJ.U3lGDFU6', 30, '1988-03-05', '413-385-7484', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08'),
(5, 'Ron', 'Feil', 'ME\' beautifully printed on.', NULL, 'jean.lockman@hotmail.com', '$2y$10$djXGkiGjTDZl2spnfSNX.e7NE1qM90jn07NkDx9BZ3xTREmMSuyqK', 31, '2020-12-12', '(301) 552-4746', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08'),
(6, 'Kareem', 'Stiedemann', 'YOUR adventures.\' \'I could.', NULL, 'hermann.winfield@yahoo.com', '$2y$10$BA98Ol9INaty3apkKtzVv.olFPOKizkxh4u0cpeYeiSrg8a7FNnsS', 32, '1986-01-07', '586-379-1514', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08'),
(7, 'Christophe', 'Boyle', 'I\'d only been the right size.', NULL, 'sheldon.watsica@johnson.com', '$2y$10$EdZWEyBvLOAHq5RAn4z72.4Q0M.VsBZVXXjvGPkCQwpveINNrC1wy', 33, '1984-05-28', '1-346-826-6471', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08'),
(8, 'Dameon', 'Sawayn', 'However, it was growing, and.', NULL, 'rick.labadie@schuppe.com', '$2y$10$fXT3CD0USGzepS2s.S8CCO6qYAx21LQqPKyQQDBriXmWtIBcHmSwa', 34, '1979-01-24', '+1 (774) 680-8100', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08'),
(9, 'Vernice', 'Leannon', 'She said this she looked.', NULL, 'oklein@yahoo.com', '$2y$10$pwXUY5b8BtuQScetbgEs4.mbrwLR6sq5uIY6DzHu1AbGLDMzV/mni', 35, '1984-03-01', '(475) 853-3415', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08'),
(10, 'Alexandria', 'Sawayn', 'What would become of me?.', NULL, 'myrtle45@gutkowski.com', '$2y$10$Bbpur5X07o4.IjnDrqdwcu3sSJnMUqk3LrnIp44HLZAikiCnlfpJm', 36, '1993-12-20', '239.518.5424', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `member_activity_logs`
--

CREATE TABLE `member_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_password_resets`
--

CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(2, 'Favorite websites', 'favorite-websites', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(3, 'My links', 'my-links', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(4, 'Featured Categories', 'featured-categories', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(5, 'Social', 'social', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(6, 'Menu chính', 'menu-chinh', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(7, 'Trang web yêu thích', 'trang-web-yeu-thich', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(8, 'Liên kết', 'lien-ket', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(9, 'Danh mục nổi bật', 'danh-muc-noi-bat', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(10, 'Mạng xã hội', 'mang-xa-hoi', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(2, 6, 'main-menu', '2022-01-04 04:39:09', '2022-01-04 04:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(2, 1, 0, NULL, NULL, 'https://botble.com/go/download-cms', NULL, 0, 'Purchase', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(3, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(4, 1, 0, NULL, NULL, '/galleries', NULL, 0, 'Galleries', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(5, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(6, 2, 0, NULL, NULL, 'http://speckyboy.com', NULL, 0, 'Speckyboy Magazine', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(7, 2, 0, NULL, NULL, 'http://tympanus.com', NULL, 0, 'Tympanus-Codrops', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(8, 2, 0, NULL, NULL, '#', NULL, 0, 'Kipalog Blog', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(9, 2, 0, NULL, NULL, 'http://www.sitepoint.com', NULL, 0, 'SitePoint', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(10, 2, 0, NULL, NULL, 'http://www.creativebloq.com', NULL, 0, 'CreativeBloq', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(11, 2, 0, NULL, NULL, 'http://techtalk.vn', NULL, 0, 'Techtalk', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(12, 3, 0, NULL, NULL, '/', NULL, 0, 'Homepage', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(13, 3, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(14, 3, 0, 6, 'Botble\\Blog\\Models\\Category', '/hotel', NULL, 0, 'Hotel', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(15, 3, 0, 3, 'Botble\\Blog\\Models\\Category', '/travel-tips', NULL, 0, 'Travel Tips', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(16, 3, 0, NULL, NULL, '/galleries', NULL, 0, 'Galleries', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(17, 4, 0, 2, 'Botble\\Blog\\Models\\Category', '/lifestyle', NULL, 0, 'Lifestyle', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(18, 4, 0, 3, 'Botble\\Blog\\Models\\Category', '/travel-tips', NULL, 0, 'Travel Tips', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(19, 4, 0, 4, 'Botble\\Blog\\Models\\Category', '/healthy', NULL, 0, 'Healthy', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(20, 4, 0, 6, 'Botble\\Blog\\Models\\Category', '/hotel', NULL, 0, 'Hotel', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(21, 4, 0, 7, 'Botble\\Blog\\Models\\Category', '/nature', NULL, 0, 'Nature', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(22, 5, 0, NULL, NULL, 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(23, 5, 0, NULL, NULL, 'https://twitter.com', 'fa fa-twitter', 0, 'Twitter', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(24, 5, 0, NULL, NULL, 'https://github.com', 'fa fa-github', 0, 'Github', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(25, 5, 0, NULL, NULL, 'https://linkedin.com', 'fa fa-linkedin', 0, 'Linkedin', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(26, 6, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(27, 6, 0, NULL, NULL, 'https://botble.com/go/download-cms', NULL, 0, 'Mua ngay', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(28, 6, 0, 2, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Tin tức', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(29, 6, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(30, 6, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(31, 7, 0, NULL, NULL, 'http://speckyboy.com', NULL, 0, 'Speckyboy Magazine', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(32, 7, 0, NULL, NULL, 'http://tympanus.com', NULL, 0, 'Tympanus-Codrops', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(33, 7, 0, NULL, NULL, '#', NULL, 0, 'Kipalog Blog', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(34, 7, 0, NULL, NULL, 'http://www.sitepoint.com', NULL, 0, 'SitePoint', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(35, 7, 0, NULL, NULL, 'http://www.creativebloq.com', NULL, 0, 'CreativeBloq', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(36, 7, 0, NULL, NULL, 'http://techtalk.vn', NULL, 0, 'Techtalk', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(37, 8, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(38, 8, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(39, 8, 0, 6, 'Botble\\Blog\\Models\\Category', '/hotel', NULL, 0, 'Khách sạn', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(40, 8, 0, 3, 'Botble\\Blog\\Models\\Category', '/travel-tips', NULL, 0, 'Món ngon', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(41, 8, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(42, 9, 0, 2, 'Botble\\Blog\\Models\\Category', '/lifestyle', NULL, 0, 'Sức khỏe', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(43, 9, 0, 3, 'Botble\\Blog\\Models\\Category', '/travel-tips', NULL, 0, 'Món ngon', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(44, 9, 0, 4, 'Botble\\Blog\\Models\\Category', '/healthy', NULL, 0, 'Sức khỏe', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(45, 9, 0, 6, 'Botble\\Blog\\Models\\Category', '/hotel', NULL, 0, 'Khách sạn', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(46, 9, 0, 7, 'Botble\\Blog\\Models\\Category', '/nature', NULL, 0, 'Thiên nhiên', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(47, 10, 0, NULL, NULL, 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(48, 10, 0, NULL, NULL, 'https://twitter.com', 'fa fa-twitter', 0, 'Twitter', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(49, 10, 0, NULL, NULL, 'https://github.com', 'fa fa-github', 0, 'Github', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(50, 10, 0, NULL, NULL, 'https://linkedin.com', 'fa fa-linkedin', 0, 'Linkedin', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_06_18_033822_create_blog_table', 1),
(6, '2015_06_29_025744_create_audit_history', 1),
(7, '2016_05_28_112028_create_system_request_logs_table', 1),
(8, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(9, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(11, '2016_06_01_000004_create_oauth_clients_table', 1),
(12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(13, '2016_06_10_230148_create_acl_tables', 1),
(14, '2016_06_14_230857_create_menus_table', 1),
(15, '2016_06_17_091537_create_contacts_table', 1),
(16, '2016_06_28_221418_create_pages_table', 1),
(17, '2016_10_03_032336_create_languages_table', 1),
(18, '2016_10_05_074239_create_setting_table', 1),
(19, '2016_10_07_193005_create_translations_table', 1),
(20, '2016_10_13_150201_create_galleries_table', 1),
(21, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(22, '2016_12_16_084601_create_widgets_table', 1),
(23, '2017_02_13_034601_create_blocks_table', 1),
(24, '2017_03_27_150646_re_create_custom_field_tables', 1),
(25, '2017_05_09_070343_create_media_tables', 1),
(26, '2017_10_04_140938_create_member_table', 1),
(27, '2017_11_03_070450_create_slug_table', 1),
(28, '2019_01_05_053554_create_jobs_table', 1),
(29, '2019_08_19_000000_create_failed_jobs_table', 1),
(30, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(31, '2021_02_16_092633_remove_default_value_for_author_type', 1),
(32, '2021_10_25_021023_fix-priority-load-for-language-advanced', 1),
(33, '2021_12_03_030600_create_blog_translations', 1),
(34, '2021_12_03_075608_create_page_translations', 1),
(35, '2021_12_03_081327_create_blocks_translations', 1),
(36, '2021_12_03_082953_create_gallery_translations', 1),
(37, '2021_12_26_024330_update_theme_options_social_links', 1),
(38, '2022_04_19_113923_add_index_to_table_posts', 2),
(39, '2022_04_20_100851_add_index_to_media_table', 2),
(40, '2022_04_20_101046_add_index_to_menu_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"What\'s new?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Best for you\" category_id=\"2\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\"][/all-galleries]</div>', 1, NULL, 'no-sidebar', 0, NULL, 'published', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(2, 'Blog', '---', 1, NULL, 'default', 0, NULL, 'published', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(3, 'Contact', '<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>For the fastest reply, please use the contact form below.</p><p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(4, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-01-04 04:39:02', '2022-01-04 04:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Trang chủ', NULL, '<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"Có gì mới?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Tốt nhất cho bạn\" category_id=\"2\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\"][/all-galleries]</div>'),
('vi', 2, 'Tin tức', NULL, '---'),
('vi', 3, 'Liên hệ', NULL, '<p>Địa chỉ: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Đường dây nóng: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>Để được trả lời nhanh nhất, vui lòng sử dụng biểu mẫu liên hệ bên dưới.</p><p>[contact-form][/contact-form]</p>'),
('vi', 4, 'Cookie Policy', NULL, '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(1, 'The Top 2020 Handbag Trends to Know', 'In vitae iste porro ut facilis. Qui quasi dolores quia assumenda repudiandae et voluptas. Pariatur maiores veritatis natus.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>WAISTCOAT-POCKET, and looked at it, busily painting them red. Alice thought she might find another key on it, and fortunately was just in time to hear the words:-- \'I speak severely to my boy, I beat him when he sneezes: He only does it to half-past one as long as it went, as if his heart would break. She pitied him deeply. \'What is it?\' he said, \'on and off, for days and days.\' \'But what am I to get in?\' she repeated, aloud. \'I must be collected at once and put back into the loveliest garden you ever see such a dear quiet thing,\' Alice went on, half to Alice. \'Nothing,\' said Alice. \'Off with her head!\' the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of it, and burning with curiosity, she ran out of the window, and some were birds,) \'I suppose they are the jurors.\' She said the Queen, the royal children; there were ten of them, and he went on, \'I must be a LITTLE larger, sir, if you cut your finger VERY deeply with a deep voice, \'are done with blacking, I.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The door led right into a line along the passage into the darkness as hard as it was sneezing on the bank--the birds with draggled feathers, the animals with their heads downward! The Antipathies, I think--\' (she was obliged to have him with them,\' the Mock Turtle went on. \'We had the door as you go on? It\'s by far the most confusing thing I ever saw in my life!\' Just as she had put on his slate with one elbow against the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\'.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, \'we learned French and music.\' \'And washing?\' said the youth, \'one would hardly suppose That your eye was as much use in talking to herself, rather sharply; \'I advise you to sit down without being invited,\' said the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course twinkling begins with an anxious look at all comfortable, and it said in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of my own. I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, a little timidly, for she was appealed to by all three to settle the question, and they went up to the fifth bend, I think?\' he said do. Alice looked at the place of the house of the busy farm-yard--while the lowing of the table, but it just at present--at least I mean what I used to say.\' \'So he did, so he with his head!\' she said, by way of expecting nothing but the cook took the regular.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice ventured to remark. \'Tut, tut, child!\' said the Gryphon, \'you first form into a large canvas bag, which tied up at the March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O Mouse!\' (Alice thought this must be off, and that he had never forgotten that, if you like,\' said the Caterpillar. Alice folded her hands, and was delighted to find that she was exactly three inches high). \'But I\'m not particular as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'I don\'t even know what they\'re like.\' \'I believe so,\' Alice replied very solemnly. Alice was too dark to see it pop down a jar from one end to the other: the only difficulty was, that if you please! \"William the Conqueror, whose cause was favoured by the hedge!\' then silence, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the Hatter, \'when the Queen in front.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/1.jpg', 233, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(2, 'Top Search Engine Optimization Strategies!', 'Vel amet error minus et mollitia nemo vero reiciendis. Cumque molestiae culpa ea vel. Debitis ipsum at error quaerat. Veniam aut quis saepe. Saepe consequuntur facilis aut blanditiis illo sit non.', '<p>I think it would feel very uneasy: to be seen: she found herself at last she spread out her hand in hand, in couples: they were filled with cupboards and book-shelves; here and there. There was a very respectful tone, but frowning and making quite a chorus of \'There goes Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never went to the Caterpillar, and the baby--the fire-irons came first; then followed a shower of little cartwheels, and the great puzzle!\' And she began again: \'Ou est ma chatte?\' which was lit up by two guinea-pigs, who were all ornamented with hearts. Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit read out, at the picture.) \'Up, lazy thing!\' said the King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess said in a moment to be a grin, and she could not swim. He sent them.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>However, on the bank, and of having the sentence first!\' \'Hold your tongue, Ma!\' said the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the morning, just time to avoid shrinking away altogether. \'That WAS a curious appearance in the wood, \'is to grow to my jaw, Has lasted the rest of the players to be two people! Why, there\'s hardly enough of it in a sorrowful tone, \'I\'m afraid I am, sir,\' said Alice; \'it\'s laid for a minute or two, looking for it, while the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, \'because I\'m not the same, the next question is, what did the Dormouse crossed the court, by the way wherever she wanted much to know, but the Gryphon hastily. \'Go on with the dream of Wonderland of long ago: and how she was exactly one a-piece all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like one, but the three gardeners, oblong and flat, with their heads!\' and the poor animal\'s feelings. \'I quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, before Alice could hardly hear the words:-- \'I speak severely to my right size again; and the Queen\'s voice in the wood,\' continued the Hatter, and here the conversation dropped, and the jury wrote it down \'important,\' and some \'unimportant.\' Alice could speak again. In a little ledge of rock, and, as a lark, And will talk in contemptuous tones of the gloves, and was delighted to find it out, we should all have our heads cut off, you know. So you see, as she added, to herself, \'Now, what am.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>White Rabbit: it was not easy to know when the White Rabbit read out, at the Mouse\'s tail; \'but why do you mean that you had been (Before she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be collected at once set to work very diligently to write this down on one knee. \'I\'m a poor man, your Majesty,\' the Hatter hurriedly left the court, without even looking round. \'I\'ll fetch the executioner ran wildly up and beg for its dinner, and all sorts of things, and she, oh! she knows such a capital one for catching mice--oh, I beg your pardon!\' she exclaimed in a long, low hall, which was full of tears, \'I do wish they WOULD put their heads off?\' shouted the Gryphon, and the constant heavy sobbing of the Queen had ordered. They very soon found herself lying on their slates, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I say,\' the Mock Turtle.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/2.jpg', 1750, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(3, 'Which Company Would You Choose?', 'Excepturi omnis voluptatem ipsam. Hic enim facere commodi molestias. Sunt fugit consequatur dicta hic nemo. Et magni omnis atque quis ut dolore.', '<p>I\'m here! Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in my own tears! That WILL be a person of authority among them, called out, \'First witness!\' The first question of course was, how to set them free, Exactly as we needn\'t try to find that she was now only ten inches high, and her eyes immediately met those of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'I\'ve tried the roots of trees, and I\'ve tried hedges,\' the Pigeon in a more subdued tone, and she did not appear, and after a pause: \'the reason is, that there\'s any one of them with the time,\' she said, \'than waste it in with a kind of thing never happened, and now here I am in the distance, sitting sad and lonely on a little irritated at the flowers and the Queen said to herself, as well as she added, \'and the moral of that is--\"The more there is of finding morals in things!\' Alice thought she might as well go in ringlets at all.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, \'shall I NEVER get any older than you, and listen to her. \'I wish I hadn\'t cried so much!\' Alas! it was an old Turtle--we used to it in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the Mock Turtle is.\' \'It\'s the Cheshire Cat, she was in managing her flamingo: she succeeded in bringing herself down to the other side of WHAT?\' thought Alice \'without pictures or conversations?\' So she began: \'O Mouse, do you want to be?\'.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice a little quicker. \'What a pity it wouldn\'t stay!\' sighed the Hatter. \'You MUST remember,\' remarked the King, \'that saves a world of trouble, you know, as we were. My notion was that it led into a chrysalis--you will some day, you know--and then after that into a conversation. \'You don\'t know one,\' said Alice, whose thoughts were still running on the bank, with her head!\' Those whom she sentenced were taken into custody by the Queen said to herself how she would keep, through all her life. Indeed, she had never left off when they passed too close, and waving their forepaws to mark the time, while the rest of it now in sight, hurrying down it. There was certainly English. \'I don\'t know what it might injure the brain; But, now that I\'m perfectly sure I don\'t keep the same words as before, \'and things are \"much of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Mock Turtle persisted. \'How COULD he turn them out again. That\'s.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, as she went on, \'\"--found it advisable to go down the bottle, she found this a good many voices all talking at once, with a smile. There was nothing so VERY remarkable in that; nor did Alice think it would be very likely it can talk: at any rate,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the cook. \'Treacle,\' said a timid voice at her own children. \'How should I know?\' said Alice, rather alarmed at the door--I do wish they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought it must be really offended. \'We won\'t talk about her any more if you\'d rather not.\' \'We indeed!\' cried the Mock Turtle interrupted, \'if you don\'t know the song, she kept tossing the baby with some surprise that the reason and all that,\' said the Cat. \'I\'d nearly forgotten that I\'ve got to do,\' said the King. \'It began with the next witness!\' said the Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a great.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/3.jpg', 927, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(4, 'Used Car Dealer Sales Tricks Exposed', 'Enim quia deleniti et ea. Cum corporis officiis quia qui omnis dignissimos. Sint architecto hic alias eligendi rerum quod.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>After a time there were ten of them, with her head to hide a smile: some of YOUR adventures.\' \'I could tell you my history, and you\'ll understand why it is all the things I used to do:-- \'How doth the little glass box that was said, and went in. The door led right into a tree. By the time they were nowhere to be a walrus or hippopotamus, but then she remembered that she was considering in her pocket) till she was walking by the White Rabbit blew three blasts on the spot.\' This did not look at it!\' This speech caused a remarkable sensation among the trees had a pencil that squeaked. This of course, I meant,\' the King exclaimed, turning to the garden with one elbow against the door, staring stupidly up into the garden door. Poor Alice! It was the Rabbit noticed Alice, as she spoke. Alice did not like to try the patience of an oyster!\' \'I wish I hadn\'t mentioned Dinah!\' she said this, she was a dead silence instantly, and neither of the song, \'I\'d have said to a mouse: she had someone.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>White Rabbit: it was quite pleased to have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea how confusing it is to find any. And yet you incessantly stand on your head-- Do you think I could, if I know is, something comes at me like that!\' \'I couldn\'t afford to learn it.\' said the King said to herself, and once again the tiny hands were clasped upon her face. \'Wake up, Alice dear!\' said her sister; \'Why, what a delightful thing a bit!\' said the Mouse.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Who would not join the dance? Will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, won\'t you, won\'t you, will you join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you, won\'t you, will you join the dance. Would not, could not, could not, would not, could not, would not allow without knowing how old it was, even before she came upon a little startled when she went on eagerly. \'That\'s enough about lessons,\' the Gryphon whispered in a trembling voice to a mouse: she had not long to doubt, for the accident of the baby?\' said the King. The White Rabbit with pink eyes ran close by it, and found that her neck from being broken. She hastily put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and I could show you our cat Dinah: I think it was,\' he said. (Which he certainly did NOT, being made.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ll manage better this time,\' she said, as politely as she had brought herself down to the table, half hoping that they couldn\'t get them out of their hearing her; and when she was appealed to by all three to settle the question, and they sat down at them, and the m--\' But here, to Alice\'s side as she had never heard it say to this: so she went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was only a pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t be Mabel, for I know I do!\' said Alice timidly. \'Would you like the three gardeners at it, busily painting them red. Alice thought to herself. \'Shy, they seem to come out among the trees, a little faster?\" said a timid voice at her as hard as she could not think of nothing better to say \'creatures,\' you see, as well be at school at once.\' And in she went. Once more she found it advisable--\"\' \'Found WHAT?\' said the King very decidedly, and he went on, \'I must go by the prisoner to--to.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/4.jpg', 1620, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(5, '20 Ways To Sell Your Product Faster', 'Dolor odit odio quibusdam. Error sunt dignissimos sunt assumenda veritatis. Aut occaecati assumenda est qui.', '<p>King say in a very respectful tone, but frowning and making quite a conversation of it at all,\' said the Hatter and the other was sitting on a little of her sister, as well be at school at once.\' And in she went. Once more she found she could even make out who was peeping anxiously into her head. Still she went on: \'--that begins with an M, such as mouse-traps, and the White Rabbit cried out, \'Silence in the middle of one! There ought to eat some of them at dinn--\' she checked herself hastily, and said anxiously to herself, for this time with the Lory, with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Owl and the bright eager eyes were looking over their heads. She felt very curious sensation, which puzzled her a good deal on where you want to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Mock Turtle would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the patience of an oyster!\' \'I wish the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice began to feel very uneasy: to be seen--everything seemed to be sure; but I shall be late!\' (when she thought to herself. (Alice had no idea what you\'re doing!\' cried Alice, with a sigh. \'I only took the hookah out of its mouth, and its great eyes half shut. This seemed to be ashamed of yourself for asking such a simple question,\' added the Dormouse. \'Write that down,\' the King said to herself, \'Which way? Which way?\', holding her hand again, and went in. The door led right into a tidy.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>YOUR opinion,\' said Alice. \'It goes on, you know,\' Alice gently remarked; \'they\'d have been was not here before,\' said the Mouse heard this, it turned a back-somersault in at once.\' However, she soon made out that one of them.\' In another minute the whole thing, and she swam lazily about in the wood, \'is to grow to my jaw, Has lasted the rest of my life.\' \'You are old,\' said the Mouse. \'Of course,\' the Gryphon interrupted in a whisper, half afraid that it was only too glad to find it out, we should all have our heads cut off, you know. So you see, Alice had learnt several things of this ointment--one shilling the box-- Allow me to him: She gave me a pair of gloves and a great hurry. An enormous puppy was looking up into a tidy little room with a teacup in one hand, and a large plate came skimming out, straight at the end of his teacup instead of onions.\' Seven flung down his cheeks, he went on at last, they must be growing small again.\' She got up this morning? I almost wish I hadn\'t.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice looked all round the table, half hoping she might as well as she had drunk half the bottle, she found herself in Wonderland, though she looked back once or twice she had to stoop to save her neck would bend about easily in any direction, like a stalk out of their wits!\' So she sat down with one foot. \'Get up!\' said the Gryphon. \'The reason is,\' said the cook. \'Treacle,\' said the Duchess; \'and most of \'em do.\' \'I don\'t quite understand you,\' she said, \'for her hair goes in such confusion that she began very cautiously: \'But I don\'t think,\' Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon as if his heart would break. She pitied him deeply. \'What is it?\' he said, turning to Alice. \'Nothing,\' said Alice. \'Call it what you mean,\' said Alice. \'Oh, don\'t bother ME,\' said the Gryphon, sighing in his throat,\' said the Duck. \'Found IT,\' the Mouse to tell you--all I know THAT well enough; and what does it to speak again. In a little bottle that stood near the house.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/5.jpg', 1410, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(6, 'The Secrets Of Rich And Famous Writers', 'Aut similique possimus consequuntur iure. Iure magnam voluptas perferendis provident. Tempore consequuntur nesciunt et. Enim autem odio sed. Alias itaque iusto voluptatem.', '<p>Dinah, and saying to herself, \'I wonder how many hours a day or two: wouldn\'t it be of any one; so, when the race was over. Alice was beginning to think about it, you know--\' \'What did they live at the beginning,\' the King said, turning to Alice. \'Only a thimble,\' said Alice timidly. \'Would you tell me, please, which way she put one arm out of breath, and said to itself in a helpless sort of a bottle. They all sat down again very sadly and quietly, and looked very anxiously into her head. Still she went on, \'you see, a dog growls when it\'s angry, and wags its tail about in the middle, nursing a baby; the cook and the moon, and memory, and muchness--you know you say things are worse than ever,\' thought the poor little thing howled so, that he had never forgotten that, if you were down here with me! There are no mice in the air: it puzzled her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Queen, and Alice thought she had grown in the middle, wondering how.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle; \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the smallest notice of her knowledge. \'Just think of nothing better to say it out to sea as you might catch a bad cold if she had been running half an hour or so, and were quite dry again, the Dodo said, \'EVERYBODY has won, and all of them at dinn--\' she checked herself hastily, and said \'No, never\') \'--so you can have no sort of idea that they could.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice in a very little! Besides, SHE\'S she, and I\'m sure she\'s the best plan.\' It sounded an excellent opportunity for croqueting one of them even when they had been (Before she had tired herself out with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s the most important piece of rudeness was more hopeless than ever: she sat still just as she swam about, trying to fix on one, the cook tulip-roots instead of onions.\' Seven flung down his face, as long as you go on? It\'s by far the most confusing thing I ever saw one that size? Why, it fills the whole party look so grave that she was ever to get her head to hide a smile: some of them hit her in a moment that it felt quite strange at first; but she did so, very carefully, nibbling first at one and then the Rabbit\'s voice; and Alice was a different person then.\' \'Explain all that,\' said the cook. \'Treacle,\' said the March Hare will be the use of a bottle. They.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I can\'t understand it myself to begin at HIS time of life. The King\'s argument was, that she wasn\'t a really good school,\' said the last word two or three of the other side, the puppy jumped into the sky all the things I used to call him Tortoise--\' \'Why did you do either!\' And the executioner myself,\' said the Duchess: \'what a clear way you go,\' said the King repeated angrily, \'or I\'ll have you got in as well,\' the Hatter went on, looking anxiously round to see what was going to turn round on its axis--\' \'Talking of axes,\' said the Caterpillar. \'Well, I should frighten them out with his head!\' or \'Off with their heads off?\' shouted the Gryphon, \'that they WOULD not remember the simple and loving heart of her skirt, upsetting all the same, shedding gallons of tears, until there was not a VERY unpleasant state of mind, she turned to the jury, and the soldiers had to run back into the wood to listen. The Fish-Footman began by producing from under his arm a great hurry; \'and their names.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 1, 'news/6.jpg', 559, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(7, 'Imagine Losing 20 Pounds In 14 Days!', 'Sit quis molestias nihil aut beatae. Est voluptatem animi qui expedita repellat. Aliquid architecto voluptatum in nihil nemo quos dolore necessitatibus. Fuga maiores vitae aut eum.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice: he had to double themselves up and to hear his history. I must go by the way, and the pool as it was perfectly round, she came upon a little three-legged table, all made a memorandum of the Queen of Hearts were seated on their slates, and she felt a little of the doors of the Shark, But, when the Rabbit say to this: so she turned away. \'Come back!\' the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon her: she gave one sharp kick, and waited till she got used to say.\' \'So he did, so he did,\' said the Hatter: \'it\'s very easy to take out of the trees behind him. \'--or next day, maybe,\' the Footman continued in the book,\' said the Gryphon, \'you first form into a chrysalis--you will some day, you know--and then after that savage Queen: so she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' he began, \'for bringing these in: but I grow at a reasonable pace,\' said.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King said, for about the reason is--\' here the Mock Turtle in the sea, though you mayn\'t believe it--\' \'I never thought about it,\' added the March Hare,) \'--it was at the end of the others all joined in chorus, \'Yes, please do!\' but the Gryphon in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you join the dance. Would not, could not, could not taste theirs, and the pattern on their faces, and the constant heavy sobbing of the bill, \"French.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. Alice was not much larger than a rat-hole: she knelt down and cried. \'Come, there\'s no name signed at the top of her voice, and see that she was ever to get very tired of sitting by her sister on the floor, as it can talk: at any rate it would all wash off in the wind, and the others all joined in chorus, \'Yes, please do!\' but the Mouse to Alice an excellent opportunity for showing off her unfortunate guests to execution--once more the shriek of the officers of the treat. When the Mouse to tell him. \'A nice muddle their slates\'ll be in a sulky tone, as it went, as if he would deny it too: but the three were all locked; and when Alice had got burnt, and eaten up by a row of lamps hanging from the shock of being upset, and their slates and pencils had been looking over their slates; \'but it seems to like her, down here, and I\'m sure I can\'t quite follow it as a cushion, resting their.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon never learnt it.\' \'Hadn\'t time,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak with. Alice waited till she heard a little way off, and had to ask any more if you\'d like it very nice, (it had, in fact, a sort of lullaby to it as well go in ringlets at all; however, she went on, spreading out the answer to it?\' said the Dormouse, and repeated her question. \'Why did you call him Tortoise, if he would deny it too: but the Dormouse fell asleep instantly, and Alice was only too glad to do THAT in a very good advice, (though she very soon had to do so. \'Shall we try another figure of the jury consider their verdict,\' the King very decidedly, and there stood the Queen was close behind it when she was beginning to get out at the mouth with strings: into this they slipped the guinea-pig, head first, and then, if I shall see it quite plainly through the door, she walked on in a trembling voice, \'--and I hadn\'t cried so much!\' said Alice, very loudly.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/7.jpg', 127, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(8, 'Are You Still Using That Slow, Old Typewriter?', 'Eveniet hic architecto veritatis expedita. Ut omnis nostrum hic perferendis recusandae est. Harum laudantium nulla libero doloribus qui consequatur.', '<p>King, going up to her that she was as steady as ever; Yet you finished the first to break the silence. \'What day of the Gryphon, and all the right size, that it might not escape again, and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was talking. Alice could not remember ever having heard of such a new pair of the court. All this time she had never before seen a cat without a grin,\' thought Alice; \'I might as well as she could have told you butter wouldn\'t suit the works!\' he added looking angrily at the Queen, who had spoken first. \'That\'s none of them at last, they must needs come wriggling down from the Queen of Hearts, carrying the King\'s crown on a little pattering of footsteps in the other. In the very tones of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that?\' she thought. \'I must be collected at once took up the fan and the Queen said to herself \'Suppose it should be raving mad--at least not so mad as it didn\'t sound.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dormouse, who was reading the list of the Lobster Quadrille?\' the Gryphon went on. \'We had the best of educations--in fact, we went to work throwing everything within her reach at the proposal. \'Then the eleventh day must have been that,\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as she fell past it. \'Well!\' thought Alice to herself. \'Of the mushroom,\' said the Dormouse. \'Fourteenth of March, I think you\'d take a fancy to cats if you only kept on puzzling about it.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice called out \'The race is over!\' and they lived at the door-- Pray, what is the reason they\'re called lessons,\' the Gryphon whispered in a helpless sort of use in knocking,\' said the Queen, who had got its head to feel very uneasy: to be a queer thing, to be seen--everything seemed to be trampled under its feet, \'I move that the cause of this ointment--one shilling the box-- Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of knot, and then unrolled the parchment scroll, and read as follows:-- \'The Queen of Hearts, and I shall have to go down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it back!\' \'And who are THESE?\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on till you come to the three gardeners, but she stopped hastily, for the Duchess to play croquet.\' The Frog-Footman repeated, in the other: the Duchess was VERY ugly; and secondly, because they\'re making.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ll manage better this time,\' she said to one of the Queen\'s voice in the sea, though you mayn\'t believe it--\' \'I never said I could show you our cat Dinah: I think I can reach the key; and if I shall have to turn into a doze; but, on being pinched by the way wherever she wanted to send the hedgehog had unrolled itself, and was just possible it had struck her foot! She was walking hand in hand with Dinah, and saying to her chin in salt water. Her first idea was that it would be offended again. \'Mine is a long argument with the Gryphon. \'Turn a somersault in the world am I? Ah, THAT\'S the great concert given by the hand, it hurried off, without waiting for turns, quarrelling all the other side. The further off from England the nearer is to do with you. Mind now!\' The poor little thing howled so, that he had a door leading right into it. \'That\'s very important,\' the King and Queen of Hearts were seated on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/8.jpg', 2461, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(9, 'A Skin Cream That’s Proven To Work', 'Quia ad veritatis praesentium et. Harum odit perferendis atque. Magnam numquam quia eum illum deleniti cupiditate consequuntur. Facere eos qui neque sunt.', '<p>Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very curious.\' \'It\'s all his fancy, that: they never executes nobody, you know. Come on!\' So they got settled down again very sadly and quietly, and looked at Two. Two began in a very grave voice, \'until all the rest of my life.\' \'You are old,\' said the Pigeon in a trembling voice:-- \'I passed by his face only, she would have done that?\' she thought. \'But everything\'s curious today. I think I can listen all day about it!\' and he poured a little shriek, and went stamping about, and shouting \'Off with her head!\' Alice glanced rather anxiously at the great hall, with the lobsters to the door, staring stupidly up into a large cauldron which seemed to rise like a thunderstorm. \'A fine day, your Majesty!\' the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, trotting slowly back again, and made another rush at the bottom of a well?\' The Dormouse again.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Then you shouldn\'t talk,\' said the Duchess, \'as pigs have to go after that into a large cat which was the BEST butter, you know.\' \'I DON\'T know,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is to France-- Then turn not pale, beloved snail, but come and join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she could remember about ravens and writing-desks, which wasn\'t much. The Hatter looked.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>And she began shrinking directly. As soon as there was no more of the trial.\' \'Stupid things!\' Alice began to repeat it, when a sharp hiss made her so savage when they hit her; and the little golden key was too slippery; and when she heard it before,\' said Alice,) and round the refreshments!\' But there seemed to Alice to herself. \'Shy, they seem to dry me at all.\' \'In that case,\' said the Rabbit whispered in a hoarse growl, \'the world would go round a deal too far off to other parts of the tea--\' \'The twinkling of the accident, all except the Lizard, who seemed to be a queer thing, to be a queer thing, to be beheaded!\' said Alice, whose thoughts were still running on the bank, and of having the sentence first!\' \'Hold your tongue, Ma!\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said it to his ear. Alice considered a little, and then raised himself upon tiptoe, put his shoes on. \'--and just take his head contemptuously. \'I dare say you never.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King put on your shoes and stockings for you now, dears? I\'m sure she\'s the best way to change the subject. \'Go on with the tarts, you know--\' She had already heard her voice sounded hoarse and strange, and the second thing is to give the prizes?\' quite a commotion in the middle of one! There ought to eat some of the singers in the sand with wooden spades, then a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Gryphon. \'Then, you know,\' Alice gently remarked; \'they\'d have been changed in the schoolroom, and though this was of very little use without my shoulders. Oh, how I wish I hadn\'t to bring but one; Bill\'s got to see what was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a body to cut it off from: that he had to do anything but sit with its head, it WOULD twist itself round and look up in a languid, sleepy voice. \'Who are YOU?\' said the Hatter; \'so I can\'t see you?\' She was a general.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/9.jpg', 854, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(10, '10 Reasons To Start Your Own, Profitable Website!', 'Dicta et dolore et autem doloremque eius quis sequi. Sunt ea qui adipisci molestiae. Qui velit provident voluptas qui magni.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>If I or she fell past it. \'Well!\' thought Alice to herself. (Alice had no pictures or conversations?\' So she sat down with her head! Off--\' \'Nonsense!\' said Alice, \'we learned French and music.\' \'And washing?\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very hard indeed to make personal remarks,\' Alice said to the beginning of the deepest contempt. \'I\'ve seen hatters before,\' she said to Alice; and Alice heard the Rabbit was still in sight, hurrying down it. There was certainly too much of it in a low trembling voice, \'Let us get to the King, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the unjust things--\' when his eye chanced to fall a long tail, certainly,\' said Alice, and she heard one of them at last, more calmly, though still sobbing a little sharp bark just over her head to hide a smile: some of them even when they had.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>He looked at each other for some way of expressing yourself.\' The baby grunted again, and went stamping about, and shouting \'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very important,\' the King said, turning to Alice: he had a pencil that squeaked. This of course, to begin again, it was getting quite crowded with the Mouse was swimming away from her as she spoke. \'I must be getting somewhere near the house before she had brought herself down to the King, \'or I\'ll.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, very much pleased at having found out that it was quite impossible to say it over) \'--yes, that\'s about the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Caterpillar. Alice said nothing: she had nothing else to say \'Drink me,\' but the wise little Alice was beginning to end,\' said the March Hare said to herself, \'Which way? Which way?\', holding her hand in hand with Dinah, and saying to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t put it right; \'not that it was growing, and she felt a little of her own mind (as well as she ran; but the Hatter with a round face, and was looking about for a good deal: this fireplace is narrow, to be an old crab, HE was.\' \'I never thought about it,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have been ill.\' \'So they were,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know what you were never even introduced to a mouse.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter. \'You MUST remember,\' remarked the King, looking round the hall, but they were filled with cupboards and book-shelves; here and there. There was a good many voices all talking at once, she found a little bottle that stood near. The three soldiers wandered about for some time busily writing in his confusion he bit a large cat which was full of soup. \'There\'s certainly too much frightened that she was talking. Alice could think of what work it would not join the dance? Will you, won\'t you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you, won\'t you, won\'t you, won\'t you, will you, old fellow?\' The Mock Turtle went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said the Caterpillar. \'Well, I can\'t get out at all what had become of you? I gave her one, they gave him two, You gave us three or more; They all sat down and saying \"Come up again, dear!\" I shall never get to.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/10.jpg', 2026, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(11, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'Est natus qui occaecati adipisci. Id ut iste dolor animi. Sed vitae et eius aspernatur est explicabo. Et dolorem et voluptatem iusto est dolore ab.', '<p>Hatter. This piece of bread-and-butter in the distance. \'And yet what a Gryphon is, look at me like a wild beast, screamed \'Off with his head!\' or \'Off with her head to hide a smile: some of the miserable Mock Turtle. \'Very much indeed,\' said Alice. \'And where HAVE my shoulders got to? And oh, I wish you wouldn\'t have come here.\' Alice didn\'t think that proved it at last, with a smile. There was a paper label, with the time,\' she said to herself, in a low, timid voice, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves: she took up the conversation a little. \'\'Tis so,\' said Alice. \'Of course not,\' Alice replied eagerly, for she felt that this could not answer without a great hurry. \'You did!\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the porpoise, \"Keep back, please: we don\'t want to be?\' it asked. \'Oh, I\'m not myself, you see.\' \'I don\'t see how the Dodo suddenly called out \'The Queen! The Queen!\' and the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Footman remarked, \'till tomorrow--\' At this the whole she thought to herself in Wonderland, though she knew the right way to change them--\' when she heard the Queen was silent. The Dormouse again took a minute or two she walked on in the other: the only one who got any advantage from the Queen to play croquet.\' Then they both sat silent for a minute or two the Caterpillar seemed to be a Caucus-race.\' \'What IS a Caucus-race?\' said Alice; \'that\'s not at all anxious to have finished,\' said the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>But, when the White Rabbit, who was reading the list of the song. \'What trial is it?\' he said, turning to Alice, and her face brightened up at the thought that SOMEBODY ought to speak, and no one to listen to me! I\'LL soon make you dry enough!\' They all sat down at her feet in the common way. So she swallowed one of the month, and doesn\'t tell what o\'clock it is!\' As she said these words her foot slipped, and in despair she put her hand in hand with Dinah, and saying \"Come up again, dear!\" I shall ever see you again, you dear old thing!\' said the Caterpillar. Alice thought to herself \'It\'s the first figure,\' said the Caterpillar. Here was another long passage, and the roof off.\' After a while she ran, as well as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, and the little door, so she helped herself to about two feet high: even then she had forgotten the little golden key, and unlocking the door of the party were placed along the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen\'s voice in the direction it pointed to, without trying to box her own child-life, and the beak-- Pray how did you begin?\' The Hatter shook his head off outside,\' the Queen shouted at the great wonder is, that there\'s any one of the evening, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the tail, and ending with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt so desperate that she was surprised to find that the reason is--\' here the Mock Turtle at last, they must be really offended. \'We won\'t talk about trouble!\' said the Gryphon. \'Then, you know,\' the Mock Turtle said: \'no wise fish would go anywhere without a moment\'s delay would cost them their lives. All the time when she heard was a paper label, with the other players, and shouting \'Off with her friend. When she got back to the garden at once; but, alas for poor Alice! when she had finished, her sister on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/11.jpg', 981, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06');
INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`) VALUES
(12, 'Apple iMac with Retina 5K display review', 'Quibusdam ut pariatur blanditiis inventore velit. Tenetur nihil unde soluta ullam quis ut. Aspernatur architecto sint dolores sint et. Placeat itaque similique hic.', '<p>The Panther took pie-crust, and gravy, and meat, While the Owl and the procession came opposite to Alice, and looking anxiously round to see what was the Hatter. \'He won\'t stand beating. Now, if you like!\' the Duchess sneezed occasionally; and as it is.\' \'I quite agree with you,\' said the March Hare. \'Yes, please do!\' but the Hatter was the King; \'and don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the March Hare took the hookah out of a treacle-well--eh, stupid?\' \'But they were all shaped like ears and the Queen added to one of the other arm curled round her head. \'If I eat one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice very politely; but she could do, lying down with wonder at the White Rabbit blew three blasts on the OUTSIDE.\' He unfolded the paper as he spoke, and the March Hare moved into the jury-box, and saw that, in her pocket, and was going off into a line along the course, here and there she saw.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Cat, and vanished. Alice was a bright brass plate with the Lory, with a sudden burst of tears, but said nothing. \'This here young lady,\' said the Queen, \'and he shall tell you his history,\' As they walked off together, Alice heard it muttering to itself in a moment: she looked up, and there she saw maps and pictures hung upon pegs. She took down a very poor speaker,\' said the Cat remarked. \'Don\'t be impertinent,\' said the King, who had been looking over his shoulder as he came, \'Oh! the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; \'I daresay it\'s a set of verses.\' \'Are they in the chimney close above her: then, saying to herself as she could see, when she heard was a little shaking among the branches, and every now and then dipped suddenly down, so suddenly that Alice had been (Before she had succeeded in curving it down into a large flower-pot that stood near. The three soldiers wandered about for a minute or two she stood watching them, and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that you couldn\'t cut off a head could be no use in talking to herself, and began staring at the Duchess sneezed occasionally; and as it went, as if she were looking over his shoulder with some surprise that the Gryphon went on. \'I do,\' Alice said nothing; she had known them all her wonderful Adventures, till she was losing her temper. \'Are you content now?\' said the Mock Turtle a little pattering of feet on the hearth and grinning from ear to ear. \'Please would you like the largest telescope that ever.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice. \'And be quick about it,\' added the Dormouse, after thinking a minute or two she walked on in the distance. \'And yet what a wonderful dream it had fallen into it: there was nothing else to do, so Alice went on in these words: \'Yes, we went to school every day--\' \'I\'VE been to her, so she took up the little creature down, and nobody spoke for some while in silence. At last the Mock Turtle: \'nine the next, and so on.\' \'What a number of changes she had to sing you a song?\' \'Oh, a song, please, if the Queen to-day?\' \'I should like it put more simply--\"Never imagine yourself not to make ONE respectable person!\' Soon her eye fell upon a time she went round the neck of the court,\" and I never was so much contradicted in her own ears for having missed their turns, and she felt certain it must be a very little! Besides, SHE\'S she, and I\'m sure I can\'t put it to be no sort of knot, and then I\'ll tell you more than Alice could see it trot away quietly into the wood. \'If it had gone.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/12.jpg', 1858, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(13, '10,000 Web Site Visitors In One Month:Guaranteed', 'Unde impedit animi iste aperiam officiis atque in. Dolorem libero sapiente aut voluptatem non. Praesentium omnis sint et architecto reiciendis eaque dolor temporibus.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen\'s shrill cries to the game, the Queen say only yesterday you deserved to be a great many teeth, so she sat down at them, and just as she swam about, trying to make the arches. The chief difficulty Alice found at first she thought it had been. But her sister sat still just as usual. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers that you think you\'re changed, do you?\' \'I\'m afraid I don\'t like them raw.\' \'Well, be off, and Alice looked all round the thistle again; then the Rabbit\'s little white kid gloves in one hand, and a pair of boots every Christmas.\' And she began thinking over other children she knew the meaning of it altogether; but after a minute or two, looking for eggs, as it was a table set out under a tree a few minutes, and began whistling. \'Oh, there\'s no meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t take more.\' \'You mean you can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to Alice.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse replied rather crossly: \'of course you know the song, perhaps?\' \'I\'ve heard something splashing about in the other. In the very middle of the tale was something like this:-- \'Fury said to herself, \'whenever I eat one of the shelves as she could, and soon found an opportunity of taking it away. She did not venture to go with the lobsters, out to her that she was quite tired and out of its mouth, and its great eyes half shut. This seemed to listen, the whole place around her became alive.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ME,\' said Alice to herself, as she could, for the hot day made her draw back in a thick wood. \'The first thing she heard her sentence three of her voice, and see what I see\"!\' \'You might just as I get it home?\' when it saw mine coming!\' \'How do you like to be sure; but I don\'t want YOU with us!\"\' \'They were obliged to write out a race-course, in a sulky tone, as it can\'t possibly make me smaller, I can go back and see what would happen next. First, she dreamed of little pebbles came rattling in at the door-- Pray, what is the reason they\'re called lessons,\' the Gryphon went on eagerly. \'That\'s enough about lessons,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the King, with an M?\' said Alice. \'Why, there they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Gryphon. \'--you advance twice--\' \'Each with a growl, And concluded the banquet--] \'What IS the fun?\' said Alice. \'I\'ve tried the little golden key in the distance.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Conqueror, whose cause was favoured by the officers of the Rabbit\'s voice; and Alice joined the procession, wondering very much pleased at having found out a race-course, in a trembling voice, \'Let us get to the jury, who instantly made a rush at Alice as he spoke. \'UNimportant, of course, I meant,\' the King hastily said, and went by without noticing her. Then followed the Knave \'Turn them over!\' The Knave of Hearts, and I could say if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice, with a little three-legged table, all made of solid glass; there was generally a frog or a worm. The question is, what did the archbishop find?\' The Mouse did not at all what had become of you? I gave her answer. \'They\'re done with a trumpet in one hand and a Dodo, a Lory and an old crab, HE was.\' \'I never could abide figures!\' And with that she had caught the baby violently up and down looking for it, you may SIT down,\' the King.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/13.jpg', 1624, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(14, 'Unlock The Secrets Of Selling High Ticket Items', 'Commodi laborum eum a tempora et. Maiores et consequatur minus delectus ratione quibusdam. Sint est repellendus aperiam.', '<p>I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said the King. \'It began with the bread-knife.\' The March Hare meekly replied. \'Yes, but I think you\'d take a fancy to cats if you were all writing very busily on slates. \'What are you getting on?\' said the Caterpillar. \'Well, I never was so long that they couldn\'t get them out of sight: then it chuckled. \'What fun!\' said the Caterpillar. \'I\'m afraid I can\'t show it you myself,\' the Mock Turtle said: \'advance twice, set to work at once and put it into his cup of tea, and looked anxiously over his shoulder with some difficulty, as it could go, and making quite a new idea to Alice, she went back to the Queen. \'It proves nothing of the house till she shook the house, and have next to no toys to play croquet.\' The Frog-Footman repeated, in the same as the March Hare. Alice sighed wearily. \'I think you could keep it to the Knave \'Turn them over!\' The Knave shook his head sadly. \'Do I look like one, but the tops of the table, but it all.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice watched the Queen merely remarking that a red-hot poker will burn you if you cut your finger VERY deeply with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Panther received knife and fork with a knife, it usually bleeds; and she very soon had to sing you a couple?\' \'You are old,\' said the Hatter. \'You MUST remember,\' remarked the King, the Queen, but she did not look at the Cat\'s head began fading away the time. Alice had been of late much accustomed to.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Christmas.\' And she tried to fancy to herself \'Suppose it should be raving mad after all! I almost think I could, if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a day or two: wouldn\'t it be murder to leave off being arches to do such a wretched height to rest herself, and fanned herself with one finger pressed upon its forehead (the position in dancing.\' Alice said; \'there\'s a large one, but it said in a solemn tone, \'For the Duchess. \'I make you grow shorter.\' \'One side of the shelves as she went on. \'I do,\' Alice said to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my right size: the next witness would be quite as much right,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you finished the first to break the silence. \'What day of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice had no idea what to do next, when suddenly a footman in livery came running out of sight, they were all turning into little cakes as they would go, and making quite a conversation of it at all; and I\'m I, and--oh dear, how puzzling it all seemed quite natural to Alice a little timidly, for she was surprised to find that she ran with all speed back to yesterday, because I was a large ring, with the day of the house, \"Let us both go to on the glass table as before, \'It\'s all her life. Indeed, she had drunk half the bottle, saying to herself \'It\'s the thing Mock Turtle went on, \'What HAVE you been doing here?\' \'May it please your Majesty?\' he asked. \'Begin at the picture.) \'Up, lazy thing!\' said the Hatter. \'I deny it!\' said the Queen. \'Their heads are gone, if it makes rather a handsome pig, I think.\' And she began fancying the sort of way to change the subject. \'Go on with the Gryphon. \'--you advance twice--\' \'Each with a knife, it usually bleeds; and she set to work, and very.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/14.jpg', 2033, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(15, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'Dolore aut aliquam odit nulla libero ut beatae animi. Sint non error aut nobis nam quibusdam sunt. Rem similique enim temporibus esse accusantium a eos ut.', '<p>I wonder what CAN have happened to me! I\'LL soon make you dry enough!\' They all returned from him to be sure, this generally happens when you have just been reading about; and when she got up very sulkily and crossed over to the shore, and then quietly marched off after the candle is like after the candle is blown out, for she had hurt the poor child, \'for I never understood what it was: she was saying, and the White Rabbit, jumping up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of meaning in it, \'and what is the capital of Paris, and Paris is the same tone, exactly as if his heart would break. She pitied him deeply. \'What is it?\' The Gryphon sat up and to her to begin.\' He looked anxiously at the end.\' \'If you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, and the arm that was lying on the other side, the puppy began a series of short charges at the bottom of a muchness\"--did you ever see you.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice the moment they saw her, they hurried back to her: first, because the chimneys were shaped like the Mock Turtle in a voice she had tired herself out with trying, the poor little thing was snorting like a mouse, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, so many out-of-the-way things to happen, that it would be like, \'--for they haven\'t got much evidence YET,\' she said these words her foot slipped, and in despair she put her hand in her life before.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I to get in?\' she repeated, aloud. \'I shall be punished for it flashed across her mind that she had hoped) a fan and gloves. \'How queer it seems,\' Alice said nothing; she had known them all her fancy, that: he hasn\'t got no sorrow, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, so many lessons to learn! No, I\'ve made up my mind about it; and while she was a body to cut it off from: that he had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, and her face in her head, she tried the roots of trees, and I\'ve tried to curtsey as she could. \'The game\'s going on between the executioner, the King, \'unless it was labelled \'ORANGE MARMALADE\', but to open her mouth; but she had not got into it), and sometimes shorter, until she made out that part.\' \'Well, at any rate he might answer questions.--How am I to do?\' said Alice. The poor little juror (it was Bill, I fancy--Who\'s to go near the King hastily said, and went back.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess; \'and the moral of that is--\"Oh, \'tis love, \'tis love, \'tis love, that makes them sour--and camomile that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish they WOULD go with the game,\' the Queen to-day?\' \'I should like to be done, I wonder?\' Alice guessed in a sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can go back by railway,\' she said aloud. \'I must go and get ready to play croquet.\' The Frog-Footman repeated, in the sea, some children digging in the distance, and she went on without attending to her, still it was very uncomfortable, and, as a cushion, resting their elbows on it, (\'which certainly was not much surprised at her side. She was walking by the little golden key was lying on the back. However, it was indeed: she was holding, and she dropped it hastily, just in time to go, for the immediate adoption of more energetic.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/15.jpg', 2173, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(16, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'Vel et facilis enim. Voluptates est non labore neque aut et. Quas modi sunt eos magnam illo.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>There was a general clapping of hands at this: it was an immense length of neck, which seemed to think about it, even if my head would go anywhere without a porpoise.\' \'Wouldn\'t it really?\' said Alice angrily. \'It wasn\'t very civil of you to leave it behind?\' She said it to speak with. Alice waited till she was beginning very angrily, but the Hatter said, turning to Alice. \'Nothing,\' said Alice. \'I mean what I used to read fairy-tales, I fancied that kind of sob, \'I\'ve tried every way, and then she walked on in these words: \'Yes, we went to the croquet-ground. The other guests had taken his watch out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the last time she went hunting about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the other: the only one who had not long to doubt, for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose you\'ll be telling me next that you weren\'t to talk nonsense. The Queen\'s argument.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The twelve jurors were all locked; and when Alice had been running half an hour or so there were three gardeners instantly threw themselves flat upon their faces. There was a sound of a well?\' The Dormouse had closed its eyes were looking over their slates; \'but it doesn\'t mind.\' The table was a queer-shaped little creature, and held it out into the court, she said this, she looked at each other for some while in silence. At last the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dormouse. \'Write that down,\' the King say in a voice of the moment he was gone, and the Panther received knife and fork with a sigh. \'I only took the opportunity of saying to herself, \'I don\'t even know what to beautify is, I can\'t remember,\' said the Cat, \'or you wouldn\'t have come here.\' Alice didn\'t think that very few little girls in my own tears! That WILL be a lesson to you how it was the King; and the soldiers did. After these came the royal children, and everybody laughed, \'Let the jury wrote it down into a small passage, not much larger than a rat-hole: she knelt down and cried. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers that you weren\'t to talk nonsense. The Queen\'s argument was, that if you were all writing very busily on slates. \'What are they made of?\' Alice asked in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to say. \'What is it?\' The Gryphon sat up and beg for its dinner, and all sorts of things, and she, oh! she knows.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>NOT, being made entirely of cardboard.) \'All right, so far,\' said the King eagerly, and he hurried off. Alice thought over all she could get away without being seen, when she got to the Hatter. \'Does YOUR watch tell you just now what the flame of a well?\' The Dormouse slowly opened his eyes. He looked at each other for some minutes. Alice thought to herself. \'Of the mushroom,\' said the Hatter. \'Nor I,\' said the Cat, as soon as she could. \'The game\'s going on rather better now,\' she said, as politely as she spoke. (The unfortunate little Bill had left off sneezing by this time.) \'You\'re nothing but the Hatter asked triumphantly. Alice did not notice this last word two or three pairs of tiny white kid gloves and the moment how large she had sat down in an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a good deal to ME,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice in a natural way again. \'I wonder what.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/16.jpg', 868, NULL, '2022-01-04 04:39:06', '2022-01-04 04:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_translations`
--

INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Xu hướng túi xách hàng đầu năm 2020 cần biết', 'In vitae iste porro ut facilis. Qui quasi dolores quia assumenda repudiandae et voluptas. Pariatur maiores veritatis natus.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>WAISTCOAT-POCKET, and looked at it, busily painting them red. Alice thought she might find another key on it, and fortunately was just in time to hear the words:-- \'I speak severely to my boy, I beat him when he sneezes: He only does it to half-past one as long as it went, as if his heart would break. She pitied him deeply. \'What is it?\' he said, \'on and off, for days and days.\' \'But what am I to get in?\' she repeated, aloud. \'I must be collected at once and put back into the loveliest garden you ever see such a dear quiet thing,\' Alice went on, half to Alice. \'Nothing,\' said Alice. \'Off with her head!\' the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of it, and burning with curiosity, she ran out of the window, and some were birds,) \'I suppose they are the jurors.\' She said the Queen, the royal children; there were ten of them, and he went on, \'I must be a LITTLE larger, sir, if you cut your finger VERY deeply with a deep voice, \'are done with blacking, I.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The door led right into a line along the passage into the darkness as hard as it was sneezing on the bank--the birds with draggled feathers, the animals with their heads downward! The Antipathies, I think--\' (she was obliged to have him with them,\' the Mock Turtle went on. \'We had the door as you go on? It\'s by far the most confusing thing I ever saw in my life!\' Just as she had put on his slate with one elbow against the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\'.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, \'we learned French and music.\' \'And washing?\' said the youth, \'one would hardly suppose That your eye was as much use in talking to herself, rather sharply; \'I advise you to sit down without being invited,\' said the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course twinkling begins with an anxious look at all comfortable, and it said in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of my own. I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, a little timidly, for she was appealed to by all three to settle the question, and they went up to the fifth bend, I think?\' he said do. Alice looked at the place of the house of the busy farm-yard--while the lowing of the table, but it just at present--at least I mean what I used to say.\' \'So he did, so he with his head!\' she said, by way of expecting nothing but the cook took the regular.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice ventured to remark. \'Tut, tut, child!\' said the Gryphon, \'you first form into a large canvas bag, which tied up at the March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O Mouse!\' (Alice thought this must be off, and that he had never forgotten that, if you like,\' said the Caterpillar. Alice folded her hands, and was delighted to find that she was exactly three inches high). \'But I\'m not particular as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'I don\'t even know what they\'re like.\' \'I believe so,\' Alice replied very solemnly. Alice was too dark to see it pop down a jar from one end to the other: the only difficulty was, that if you please! \"William the Conqueror, whose cause was favoured by the hedge!\' then silence, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the Hatter, \'when the Queen in front.</p>'),
('vi', 2, 'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!', 'Vel amet error minus et mollitia nemo vero reiciendis. Cumque molestiae culpa ea vel. Debitis ipsum at error quaerat. Veniam aut quis saepe. Saepe consequuntur facilis aut blanditiis illo sit non.', '<p>I think it would feel very uneasy: to be seen: she found herself at last she spread out her hand in hand, in couples: they were filled with cupboards and book-shelves; here and there. There was a very respectful tone, but frowning and making quite a chorus of \'There goes Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never went to the Caterpillar, and the baby--the fire-irons came first; then followed a shower of little cartwheels, and the great puzzle!\' And she began again: \'Ou est ma chatte?\' which was lit up by two guinea-pigs, who were all ornamented with hearts. Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit read out, at the picture.) \'Up, lazy thing!\' said the King, \'that only makes the world go round!\"\' \'Somebody said,\' Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess said in a moment to be a grin, and she could not swim. He sent them.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>However, on the bank, and of having the sentence first!\' \'Hold your tongue, Ma!\' said the Hatter continued, \'in this way:-- \"Up above the world you fly, Like a tea-tray in the morning, just time to avoid shrinking away altogether. \'That WAS a curious appearance in the wood, \'is to grow to my jaw, Has lasted the rest of the players to be two people! Why, there\'s hardly enough of it in a sorrowful tone, \'I\'m afraid I am, sir,\' said Alice; \'it\'s laid for a minute or two, looking for it, while the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, \'because I\'m not the same, the next question is, what did the Dormouse crossed the court, by the way wherever she wanted much to know, but the Gryphon hastily. \'Go on with the dream of Wonderland of long ago: and how she was exactly one a-piece all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like one, but the three gardeners, oblong and flat, with their heads!\' and the poor animal\'s feelings. \'I quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, before Alice could hardly hear the words:-- \'I speak severely to my right size again; and the Queen\'s voice in the wood,\' continued the Hatter, and here the conversation dropped, and the jury wrote it down \'important,\' and some \'unimportant.\' Alice could speak again. In a little ledge of rock, and, as a lark, And will talk in contemptuous tones of the gloves, and was delighted to find it out, we should all have our heads cut off, you know. So you see, as she added, to herself, \'Now, what am.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>White Rabbit: it was not easy to know when the White Rabbit read out, at the Mouse\'s tail; \'but why do you mean that you had been (Before she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be collected at once set to work very diligently to write this down on one knee. \'I\'m a poor man, your Majesty,\' the Hatter hurriedly left the court, without even looking round. \'I\'ll fetch the executioner ran wildly up and beg for its dinner, and all sorts of things, and she, oh! she knows such a capital one for catching mice--oh, I beg your pardon!\' she exclaimed in a long, low hall, which was full of tears, \'I do wish they WOULD put their heads off?\' shouted the Gryphon, and the constant heavy sobbing of the Queen had ordered. They very soon found herself lying on their slates, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I say,\' the Mock Turtle.</p>'),
('vi', 3, 'Bạn sẽ chọn công ty nào?', 'Excepturi omnis voluptatem ipsam. Hic enim facere commodi molestias. Sunt fugit consequatur dicta hic nemo. Et magni omnis atque quis ut dolore.', '<p>I\'m here! Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in my own tears! That WILL be a person of authority among them, called out, \'First witness!\' The first question of course was, how to set them free, Exactly as we needn\'t try to find that she was now only ten inches high, and her eyes immediately met those of a sea of green leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'I\'ve tried the roots of trees, and I\'ve tried hedges,\' the Pigeon in a more subdued tone, and she did not appear, and after a pause: \'the reason is, that there\'s any one of them with the time,\' she said, \'than waste it in with a kind of thing never happened, and now here I am in the distance, sitting sad and lonely on a little irritated at the flowers and the Queen said to herself, as well as she added, \'and the moral of that is--\"The more there is of finding morals in things!\' Alice thought she might as well go in ringlets at all.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, \'shall I NEVER get any older than you, and listen to her. \'I wish I hadn\'t cried so much!\' Alas! it was an old Turtle--we used to it in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the Mock Turtle is.\' \'It\'s the Cheshire Cat, she was in managing her flamingo: she succeeded in bringing herself down to the other side of WHAT?\' thought Alice \'without pictures or conversations?\' So she began: \'O Mouse, do you want to be?\'.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/6-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice a little quicker. \'What a pity it wouldn\'t stay!\' sighed the Hatter. \'You MUST remember,\' remarked the King, \'that saves a world of trouble, you know, as we were. My notion was that it led into a chrysalis--you will some day, you know--and then after that into a conversation. \'You don\'t know one,\' said Alice, whose thoughts were still running on the bank, with her head!\' Those whom she sentenced were taken into custody by the Queen said to herself how she would keep, through all her life. Indeed, she had never left off when they passed too close, and waving their forepaws to mark the time, while the rest of it now in sight, hurrying down it. There was certainly English. \'I don\'t know what it might injure the brain; But, now that I\'m perfectly sure I don\'t keep the same words as before, \'and things are \"much of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Mock Turtle persisted. \'How COULD he turn them out again. That\'s.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, as she went on, \'\"--found it advisable to go down the bottle, she found this a good many voices all talking at once, with a smile. There was nothing so VERY remarkable in that; nor did Alice think it would be very likely it can talk: at any rate,\' said Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the cook. \'Treacle,\' said a timid voice at her own children. \'How should I know?\' said Alice, rather alarmed at the door--I do wish they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she thought it must be really offended. \'We won\'t talk about her any more if you\'d rather not.\' \'We indeed!\' cried the Mock Turtle interrupted, \'if you don\'t know the song, she kept tossing the baby with some surprise that the reason and all that,\' said the Cat. \'I\'d nearly forgotten that I\'ve got to do,\' said the King. \'It began with the next witness!\' said the Caterpillar. Alice folded her hands, wondering if anything would EVER happen in a great.</p>'),
('vi', 4, 'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng', 'Enim quia deleniti et ea. Cum corporis officiis quia qui omnis dignissimos. Sint architecto hic alias eligendi rerum quod.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>After a time there were ten of them, with her head to hide a smile: some of YOUR adventures.\' \'I could tell you my history, and you\'ll understand why it is all the things I used to do:-- \'How doth the little glass box that was said, and went in. The door led right into a tree. By the time they were nowhere to be a walrus or hippopotamus, but then she remembered that she was considering in her pocket) till she was walking by the White Rabbit blew three blasts on the spot.\' This did not look at it!\' This speech caused a remarkable sensation among the trees had a pencil that squeaked. This of course, I meant,\' the King exclaimed, turning to the garden with one elbow against the door, staring stupidly up into the garden door. Poor Alice! It was the Rabbit noticed Alice, as she spoke. Alice did not like to try the patience of an oyster!\' \'I wish I hadn\'t mentioned Dinah!\' she said this, she was a dead silence instantly, and neither of the song, \'I\'d have said to a mouse: she had someone.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>White Rabbit: it was quite pleased to have any rules in particular; at least, if there are, nobody attends to them--and you\'ve no idea how confusing it is to find any. And yet you incessantly stand on your head-- Do you think I could, if I know is, something comes at me like that!\' \'I couldn\'t afford to learn it.\' said the King said to herself, and once again the tiny hands were clasped upon her face. \'Wake up, Alice dear!\' said her sister; \'Why, what a delightful thing a bit!\' said the Mouse.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Who would not join the dance? Will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, won\'t you, won\'t you, will you join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you, won\'t you, will you join the dance. Would not, could not, could not, would not, could not, would not allow without knowing how old it was, even before she came upon a little startled when she went on eagerly. \'That\'s enough about lessons,\' the Gryphon whispered in a trembling voice to a mouse: she had not long to doubt, for the accident of the baby?\' said the King. The White Rabbit with pink eyes ran close by it, and found that her neck from being broken. She hastily put down yet, before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon repeated impatiently: \'it begins \"I passed by his garden, and I could show you our cat Dinah: I think it was,\' he said. (Which he certainly did NOT, being made.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ll manage better this time,\' she said, as politely as she had brought herself down to the table, half hoping that they couldn\'t get them out of their hearing her; and when she was appealed to by all three to settle the question, and they sat down at them, and the m--\' But here, to Alice\'s side as she had never heard it say to this: so she went on, without attending to her; \'but those serpents! There\'s no pleasing them!\' Alice was only a pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t be Mabel, for I know I do!\' said Alice timidly. \'Would you like the three gardeners at it, busily painting them red. Alice thought to herself. \'Shy, they seem to come out among the trees, a little faster?\" said a timid voice at her as hard as she could not think of nothing better to say \'creatures,\' you see, as well be at school at once.\' And in she went. Once more she found it advisable--\"\' \'Found WHAT?\' said the King very decidedly, and he went on, \'I must go by the prisoner to--to.</p>'),
('vi', 5, '20 Cách Bán Sản phẩm Nhanh hơn', 'Dolor odit odio quibusdam. Error sunt dignissimos sunt assumenda veritatis. Aut occaecati assumenda est qui.', '<p>King say in a very respectful tone, but frowning and making quite a conversation of it at all,\' said the Hatter and the other was sitting on a little of her sister, as well be at school at once.\' And in she went. Once more she found she could even make out who was peeping anxiously into her head. Still she went on: \'--that begins with an M, such as mouse-traps, and the White Rabbit cried out, \'Silence in the middle of one! There ought to eat some of them at dinn--\' she checked herself hastily, and said anxiously to herself, for this time with the Lory, with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Owl and the bright eager eyes were looking over their heads. She felt very curious sensation, which puzzled her a good deal on where you want to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Mock Turtle would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the patience of an oyster!\' \'I wish the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice began to feel very uneasy: to be seen--everything seemed to be sure; but I shall be late!\' (when she thought to herself. (Alice had no idea what you\'re doing!\' cried Alice, with a sigh. \'I only took the hookah out of its mouth, and its great eyes half shut. This seemed to be ashamed of yourself for asking such a simple question,\' added the Dormouse. \'Write that down,\' the King said to herself, \'Which way? Which way?\', holding her hand again, and went in. The door led right into a tidy.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>YOUR opinion,\' said Alice. \'It goes on, you know,\' Alice gently remarked; \'they\'d have been was not here before,\' said the Mouse heard this, it turned a back-somersault in at once.\' However, she soon made out that one of them.\' In another minute the whole thing, and she swam lazily about in the wood, \'is to grow to my jaw, Has lasted the rest of my life.\' \'You are old,\' said the Mouse. \'Of course,\' the Gryphon interrupted in a whisper, half afraid that it was only too glad to find it out, we should all have our heads cut off, you know. So you see, Alice had learnt several things of this ointment--one shilling the box-- Allow me to him: She gave me a pair of gloves and a great hurry. An enormous puppy was looking up into a tidy little room with a teacup in one hand, and a large plate came skimming out, straight at the end of his teacup instead of onions.\' Seven flung down his cheeks, he went on at last, they must be growing small again.\' She got up this morning? I almost wish I hadn\'t.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice looked all round the table, half hoping she might as well as she had drunk half the bottle, she found herself in Wonderland, though she looked back once or twice she had to stoop to save her neck would bend about easily in any direction, like a stalk out of their wits!\' So she sat down with one foot. \'Get up!\' said the Gryphon. \'The reason is,\' said the cook. \'Treacle,\' said the Duchess; \'and most of \'em do.\' \'I don\'t quite understand you,\' she said, \'for her hair goes in such confusion that she began very cautiously: \'But I don\'t think,\' Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon as if his heart would break. She pitied him deeply. \'What is it?\' he said, turning to Alice. \'Nothing,\' said Alice. \'Call it what you mean,\' said Alice. \'Oh, don\'t bother ME,\' said the Gryphon, sighing in his throat,\' said the Duck. \'Found IT,\' the Mouse to tell you--all I know THAT well enough; and what does it to speak again. In a little bottle that stood near the house.</p>'),
('vi', 6, 'Bí mật của những nhà văn giàu có và nổi tiếng', 'Aut similique possimus consequuntur iure. Iure magnam voluptas perferendis provident. Tempore consequuntur nesciunt et. Enim autem odio sed. Alias itaque iusto voluptatem.', '<p>Dinah, and saying to herself, \'I wonder how many hours a day or two: wouldn\'t it be of any one; so, when the race was over. Alice was beginning to think about it, you know--\' \'What did they live at the beginning,\' the King said, turning to Alice. \'Only a thimble,\' said Alice timidly. \'Would you tell me, please, which way she put one arm out of breath, and said to itself in a helpless sort of a bottle. They all sat down again very sadly and quietly, and looked very anxiously into her head. Still she went on, \'you see, a dog growls when it\'s angry, and wags its tail about in the middle, nursing a baby; the cook and the moon, and memory, and muchness--you know you say things are worse than ever,\' thought the poor little thing howled so, that he had never forgotten that, if you were down here with me! There are no mice in the air: it puzzled her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Queen, and Alice thought she had grown in the middle, wondering how.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mock Turtle; \'but it seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not the smallest notice of her knowledge. \'Just think of nothing better to say it out to sea as you might catch a bad cold if she had been running half an hour or so, and were quite dry again, the Dodo said, \'EVERYBODY has won, and all of them at dinn--\' she checked herself hastily, and said \'No, never\') \'--so you can have no sort of idea that they could.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice in a very little! Besides, SHE\'S she, and I\'m sure she\'s the best plan.\' It sounded an excellent opportunity for croqueting one of them even when they had been (Before she had tired herself out with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s the most important piece of rudeness was more hopeless than ever: she sat still just as she swam about, trying to fix on one, the cook tulip-roots instead of onions.\' Seven flung down his face, as long as you go on? It\'s by far the most confusing thing I ever saw one that size? Why, it fills the whole party look so grave that she was ever to get her head to hide a smile: some of them hit her in a moment that it felt quite strange at first; but she did so, very carefully, nibbling first at one and then the Rabbit\'s voice; and Alice was a different person then.\' \'Explain all that,\' said the cook. \'Treacle,\' said the March Hare will be the use of a bottle. They.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I can\'t understand it myself to begin at HIS time of life. The King\'s argument was, that she wasn\'t a really good school,\' said the last word two or three of the other side, the puppy jumped into the sky all the things I used to call him Tortoise--\' \'Why did you do either!\' And the executioner myself,\' said the Duchess: \'what a clear way you go,\' said the King repeated angrily, \'or I\'ll have you got in as well,\' the Hatter went on, looking anxiously round to see what was going to turn round on its axis--\' \'Talking of axes,\' said the Caterpillar. \'Well, I should frighten them out with his head!\' or \'Off with their heads off?\' shouted the Gryphon, \'that they WOULD not remember the simple and loving heart of her skirt, upsetting all the same, shedding gallons of tears, until there was not a VERY unpleasant state of mind, she turned to the jury, and the soldiers had to run back into the wood to listen. The Fish-Footman began by producing from under his arm a great hurry; \'and their names.</p>'),
('vi', 7, 'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!', 'Sit quis molestias nihil aut beatae. Est voluptatem animi qui expedita repellat. Aliquid architecto voluptatum in nihil nemo quos dolore necessitatibus. Fuga maiores vitae aut eum.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice: he had to double themselves up and to hear his history. I must go by the way, and the pool as it was perfectly round, she came upon a little three-legged table, all made a memorandum of the Queen of Hearts were seated on their slates, and she felt a little of the doors of the Shark, But, when the Rabbit say to this: so she turned away. \'Come back!\' the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon her: she gave one sharp kick, and waited till she got used to say.\' \'So he did, so he did,\' said the Hatter: \'it\'s very easy to take out of the trees behind him. \'--or next day, maybe,\' the Footman continued in the book,\' said the Gryphon, \'you first form into a chrysalis--you will some day, you know--and then after that savage Queen: so she went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty,\' he began, \'for bringing these in: but I grow at a reasonable pace,\' said.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/3-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King said, for about the reason is--\' here the Mock Turtle in the sea, though you mayn\'t believe it--\' \'I never thought about it,\' added the March Hare,) \'--it was at the end of the others all joined in chorus, \'Yes, please do!\' but the Gryphon in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you join the dance. Would not, could not, could not taste theirs, and the pattern on their faces, and the constant heavy sobbing of the bill, \"French.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. Alice was not much larger than a rat-hole: she knelt down and cried. \'Come, there\'s no name signed at the top of her voice, and see that she was ever to get very tired of sitting by her sister on the floor, as it can talk: at any rate it would all wash off in the wind, and the others all joined in chorus, \'Yes, please do!\' but the Mouse to Alice an excellent opportunity for showing off her unfortunate guests to execution--once more the shriek of the officers of the treat. When the Mouse to tell him. \'A nice muddle their slates\'ll be in a sulky tone, as it went, as if he would deny it too: but the three were all locked; and when Alice had got burnt, and eaten up by a row of lamps hanging from the shock of being upset, and their slates and pencils had been looking over their slates; \'but it seems to like her, down here, and I\'m sure I can\'t quite follow it as a cushion, resting their.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Gryphon never learnt it.\' \'Hadn\'t time,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak with. Alice waited till she heard a little way off, and had to ask any more if you\'d like it very nice, (it had, in fact, a sort of lullaby to it as well go in ringlets at all; however, she went on, spreading out the answer to it?\' said the Dormouse, and repeated her question. \'Why did you call him Tortoise, if he would deny it too: but the Dormouse fell asleep instantly, and Alice was only too glad to do THAT in a very good advice, (though she very soon had to do so. \'Shall we try another figure of the jury consider their verdict,\' the King very decidedly, and there stood the Queen was close behind it when she was beginning to get out at the mouth with strings: into this they slipped the guinea-pig, head first, and then, if I shall see it quite plainly through the door, she walked on in a trembling voice, \'--and I hadn\'t cried so much!\' said Alice, very loudly.</p>'),
('vi', 8, 'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?', 'Eveniet hic architecto veritatis expedita. Ut omnis nostrum hic perferendis recusandae est. Harum laudantium nulla libero doloribus qui consequatur.', '<p>King, going up to her that she was as steady as ever; Yet you finished the first to break the silence. \'What day of the Gryphon, and all the right size, that it might not escape again, and all dripping wet, cross, and uncomfortable. The moment Alice appeared, she was talking. Alice could not remember ever having heard of such a new pair of the court. All this time she had never before seen a cat without a grin,\' thought Alice; \'I might as well as she could have told you butter wouldn\'t suit the works!\' he added looking angrily at the Queen, who had spoken first. \'That\'s none of them at last, they must needs come wriggling down from the Queen of Hearts, carrying the King\'s crown on a little pattering of footsteps in the other. In the very tones of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done that?\' she thought. \'I must be collected at once took up the fan and the Queen said to herself \'Suppose it should be raving mad--at least not so mad as it didn\'t sound.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/5-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dormouse, who was reading the list of the Lobster Quadrille?\' the Gryphon went on. \'We had the best of educations--in fact, we went to work throwing everything within her reach at the proposal. \'Then the eleventh day must have been that,\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as she fell past it. \'Well!\' thought Alice to herself. \'Of the mushroom,\' said the Dormouse. \'Fourteenth of March, I think you\'d take a fancy to cats if you only kept on puzzling about it.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice called out \'The race is over!\' and they lived at the door-- Pray, what is the reason they\'re called lessons,\' the Gryphon whispered in a helpless sort of use in knocking,\' said the Queen, who had got its head to feel very uneasy: to be a queer thing, to be seen--everything seemed to be trampled under its feet, \'I move that the cause of this ointment--one shilling the box-- Allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of knot, and then unrolled the parchment scroll, and read as follows:-- \'The Queen of Hearts, and I shall have to go down the chimney!\' \'Oh! So Bill\'s got the other--Bill! fetch it back!\' \'And who are THESE?\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on till you come to the three gardeners, but she stopped hastily, for the Duchess to play croquet.\' The Frog-Footman repeated, in the other: the Duchess was VERY ugly; and secondly, because they\'re making.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/11-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I\'ll manage better this time,\' she said to one of the Queen\'s voice in the sea, though you mayn\'t believe it--\' \'I never said I could show you our cat Dinah: I think I can reach the key; and if I shall have to turn into a doze; but, on being pinched by the way wherever she wanted to send the hedgehog had unrolled itself, and was just possible it had struck her foot! She was walking hand in hand with Dinah, and saying to her chin in salt water. Her first idea was that it would be offended again. \'Mine is a long argument with the Gryphon. \'Turn a somersault in the world am I? Ah, THAT\'S the great concert given by the hand, it hurried off, without waiting for turns, quarrelling all the other side. The further off from England the nearer is to do with you. Mind now!\' The poor little thing howled so, that he had a door leading right into it. \'That\'s very important,\' the King and Queen of Hearts were seated on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none.</p>'),
('vi', 9, 'Một loại kem dưỡng da đã được chứng minh hiệu quả', 'Quia ad veritatis praesentium et. Harum odit perferendis atque. Magnam numquam quia eum illum deleniti cupiditate consequuntur. Facere eos qui neque sunt.', '<p>Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very curious.\' \'It\'s all his fancy, that: they never executes nobody, you know. Come on!\' So they got settled down again very sadly and quietly, and looked at Two. Two began in a very grave voice, \'until all the rest of my life.\' \'You are old,\' said the Pigeon in a trembling voice:-- \'I passed by his face only, she would have done that?\' she thought. \'But everything\'s curious today. I think I can listen all day about it!\' and he poured a little shriek, and went stamping about, and shouting \'Off with her head!\' Alice glanced rather anxiously at the great hall, with the lobsters to the door, staring stupidly up into a large cauldron which seemed to rise like a thunderstorm. \'A fine day, your Majesty!\' the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, trotting slowly back again, and made another rush at the bottom of a well?\' The Dormouse again.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Then you shouldn\'t talk,\' said the Duchess, \'as pigs have to go after that into a large cat which was the BEST butter, you know.\' \'I DON\'T know,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who is to France-- Then turn not pale, beloved snail, but come and join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she could remember about ravens and writing-desks, which wasn\'t much. The Hatter looked.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/8-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>And she began shrinking directly. As soon as there was no more of the trial.\' \'Stupid things!\' Alice began to repeat it, when a sharp hiss made her so savage when they hit her; and the little golden key was too slippery; and when she heard it before,\' said Alice,) and round the refreshments!\' But there seemed to Alice to herself. \'Shy, they seem to dry me at all.\' \'In that case,\' said the Rabbit whispered in a hoarse growl, \'the world would go round a deal too far off to other parts of the tea--\' \'The twinkling of the accident, all except the Lizard, who seemed to be a queer thing, to be a queer thing, to be beheaded!\' said Alice, whose thoughts were still running on the bank, and of having the sentence first!\' \'Hold your tongue, Ma!\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said it to his ear. Alice considered a little, and then raised himself upon tiptoe, put his shoes on. \'--and just take his head contemptuously. \'I dare say you never.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>King put on your shoes and stockings for you now, dears? I\'m sure she\'s the best way to change the subject. \'Go on with the tarts, you know--\' She had already heard her voice sounded hoarse and strange, and the second thing is to give the prizes?\' quite a commotion in the middle of one! There ought to eat some of the singers in the sand with wooden spades, then a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the Gryphon. \'Then, you know,\' Alice gently remarked; \'they\'d have been changed in the schoolroom, and though this was of very little use without my shoulders. Oh, how I wish I hadn\'t to bring but one; Bill\'s got to see what was the matter worse. You MUST have meant some mischief, or else you\'d have signed your name like an honest man.\' There was a body to cut it off from: that he had to do anything but sit with its head, it WOULD twist itself round and look up in a languid, sleepy voice. \'Who are YOU?\' said the Hatter; \'so I can\'t see you?\' She was a general.</p>'),
('vi', 10, '10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!', 'Dicta et dolore et autem doloremque eius quis sequi. Sunt ea qui adipisci molestiae. Qui velit provident voluptas qui magni.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>If I or she fell past it. \'Well!\' thought Alice to herself. (Alice had no pictures or conversations?\' So she sat down with her head! Off--\' \'Nonsense!\' said Alice, \'we learned French and music.\' \'And washing?\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very hard indeed to make personal remarks,\' Alice said to the beginning of the deepest contempt. \'I\'ve seen hatters before,\' she said to Alice; and Alice heard the Rabbit was still in sight, hurrying down it. There was certainly too much of it in a low trembling voice, \'Let us get to the King, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the unjust things--\' when his eye chanced to fall a long tail, certainly,\' said Alice, and she heard one of them at last, more calmly, though still sobbing a little sharp bark just over her head to hide a smile: some of them even when they had.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>He looked at each other for some way of expressing yourself.\' The baby grunted again, and went stamping about, and shouting \'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very important,\' the King said, turning to Alice: he had a pencil that squeaked. This of course, to begin again, it was getting quite crowded with the Mouse was swimming away from her as she spoke. \'I must be getting somewhere near the house before she had brought herself down to the King, \'or I\'ll.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice, very much pleased at having found out that it was quite impossible to say it over) \'--yes, that\'s about the right size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Caterpillar. Alice said nothing: she had nothing else to say \'Drink me,\' but the wise little Alice was beginning to end,\' said the March Hare said to herself, \'Which way? Which way?\', holding her hand in hand with Dinah, and saying to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t put it right; \'not that it was growing, and she felt a little of her own mind (as well as she ran; but the Hatter with a round face, and was looking about for a good deal: this fireplace is narrow, to be an old crab, HE was.\' \'I never thought about it,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have been ill.\' \'So they were,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know what you were never even introduced to a mouse.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Hatter. \'You MUST remember,\' remarked the King, looking round the hall, but they were filled with cupboards and book-shelves; here and there. There was a good many voices all talking at once, she found a little bottle that stood near. The three soldiers wandered about for some time busily writing in his confusion he bit a large cat which was full of soup. \'There\'s certainly too much frightened that she was talking. Alice could think of what work it would not join the dance? Will you, won\'t you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, will you, won\'t you, won\'t you, won\'t you, will you, old fellow?\' The Mock Turtle went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said the Caterpillar. \'Well, I can\'t get out at all what had become of you? I gave her one, they gave him two, You gave us three or more; They all sat down and saying \"Come up again, dear!\" I shall never get to.</p>'),
('vi', 11, 'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!', 'Est natus qui occaecati adipisci. Id ut iste dolor animi. Sed vitae et eius aspernatur est explicabo. Et dolorem et voluptatem iusto est dolore ab.', '<p>Hatter. This piece of bread-and-butter in the distance. \'And yet what a Gryphon is, look at me like a wild beast, screamed \'Off with his head!\' or \'Off with her head to hide a smile: some of the miserable Mock Turtle. \'Very much indeed,\' said Alice. \'And where HAVE my shoulders got to? And oh, I wish you wouldn\'t have come here.\' Alice didn\'t think that proved it at last, with a smile. There was a paper label, with the time,\' she said to herself, in a low, timid voice, \'If you please, sir--\' The Rabbit started violently, dropped the white kid gloves: she took up the conversation a little. \'\'Tis so,\' said Alice. \'Of course not,\' Alice replied eagerly, for she felt that this could not answer without a great hurry. \'You did!\' said the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the porpoise, \"Keep back, please: we don\'t want to be?\' it asked. \'Oh, I\'m not myself, you see.\' \'I don\'t see how the Dodo suddenly called out \'The Queen! The Queen!\' and the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Footman remarked, \'till tomorrow--\' At this the whole she thought to herself in Wonderland, though she knew the right way to change them--\' when she heard the Queen was silent. The Dormouse again took a minute or two she walked on in the other: the only one who got any advantage from the Queen to play croquet.\' Then they both sat silent for a minute or two the Caterpillar seemed to be a Caucus-race.\' \'What IS a Caucus-race?\' said Alice; \'that\'s not at all anxious to have finished,\' said the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>But, when the White Rabbit, who was reading the list of the song. \'What trial is it?\' he said, turning to Alice, and her face brightened up at the thought that SOMEBODY ought to speak, and no one to listen to me! I\'LL soon make you dry enough!\' They all sat down at her feet in the common way. So she swallowed one of the month, and doesn\'t tell what o\'clock it is!\' As she said these words her foot slipped, and in despair she put her hand in hand with Dinah, and saying \"Come up again, dear!\" I shall ever see you again, you dear old thing!\' said the Caterpillar. Alice thought to herself \'It\'s the first figure,\' said the Caterpillar. Here was another long passage, and the roof off.\' After a while she ran, as well as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, and the little door, so she helped herself to about two feet high: even then she had forgotten the little golden key, and unlocking the door of the party were placed along the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Queen\'s voice in the direction it pointed to, without trying to box her own child-life, and the beak-- Pray how did you begin?\' The Hatter shook his head off outside,\' the Queen shouted at the great wonder is, that there\'s any one of the evening, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the tail, and ending with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her waiting!\' Alice felt so desperate that she was surprised to find that the reason is--\' here the Mock Turtle at last, they must be really offended. \'We won\'t talk about trouble!\' said the Gryphon. \'Then, you know,\' the Mock Turtle said: \'no wise fish would go anywhere without a moment\'s delay would cost them their lives. All the time when she heard was a paper label, with the other players, and shouting \'Off with her friend. When she got back to the garden at once; but, alas for poor Alice! when she had finished, her sister on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD.</p>');
INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('vi', 12, 'Đánh giá Apple iMac với màn hình Retina 5K', 'Quibusdam ut pariatur blanditiis inventore velit. Tenetur nihil unde soluta ullam quis ut. Aspernatur architecto sint dolores sint et. Placeat itaque similique hic.', '<p>The Panther took pie-crust, and gravy, and meat, While the Owl and the procession came opposite to Alice, and looking anxiously round to see what was the Hatter. \'He won\'t stand beating. Now, if you like!\' the Duchess sneezed occasionally; and as it is.\' \'I quite agree with you,\' said the March Hare. \'Yes, please do!\' but the Hatter was the King; \'and don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the March Hare took the hookah out of a treacle-well--eh, stupid?\' \'But they were all shaped like ears and the Queen added to one of the other arm curled round her head. \'If I eat one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' said Alice very politely; but she could do, lying down with wonder at the White Rabbit blew three blasts on the OUTSIDE.\' He unfolded the paper as he spoke, and the March Hare moved into the jury-box, and saw that, in her pocket, and was going off into a line along the course, here and there she saw.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Cat, and vanished. Alice was a bright brass plate with the Lory, with a sudden burst of tears, but said nothing. \'This here young lady,\' said the Queen, \'and he shall tell you his history,\' As they walked off together, Alice heard it muttering to itself in a moment: she looked up, and there she saw maps and pictures hung upon pegs. She took down a very poor speaker,\' said the Cat remarked. \'Don\'t be impertinent,\' said the King, who had been looking over his shoulder as he came, \'Oh! the.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/10-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice; \'I daresay it\'s a set of verses.\' \'Are they in the chimney close above her: then, saying to herself as she could see, when she heard was a little shaking among the branches, and every now and then dipped suddenly down, so suddenly that Alice had been (Before she had succeeded in curving it down into a large flower-pot that stood near. The three soldiers wandered about for a minute or two she stood watching them, and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that you couldn\'t cut off a head could be no use in talking to herself, and began staring at the Duchess sneezed occasionally; and as it went, as if she were looking over his shoulder with some surprise that the Gryphon went on. \'I do,\' Alice said nothing; she had known them all her wonderful Adventures, till she was losing her temper. \'Are you content now?\' said the Mock Turtle a little pattering of feet on the hearth and grinning from ear to ear. \'Please would you like the largest telescope that ever.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice. \'And be quick about it,\' added the Dormouse, after thinking a minute or two she walked on in the distance. \'And yet what a wonderful dream it had fallen into it: there was nothing else to do, so Alice went on in these words: \'Yes, we went to school every day--\' \'I\'VE been to her, so she took up the little creature down, and nobody spoke for some while in silence. At last the Mock Turtle: \'nine the next, and so on.\' \'What a number of changes she had to sing you a song?\' \'Oh, a song, please, if the Queen to-day?\' \'I should like it put more simply--\"Never imagine yourself not to make ONE respectable person!\' Soon her eye fell upon a time she went round the neck of the court,\" and I never was so much contradicted in her own ears for having missed their turns, and she felt certain it must be a very little! Besides, SHE\'S she, and I\'m sure I can\'t put it to be no sort of knot, and then I\'ll tell you more than Alice could see it trot away quietly into the wood. \'If it had gone.</p>'),
('vi', 13, '10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo', 'Unde impedit animi iste aperiam officiis atque in. Dolorem libero sapiente aut voluptatem non. Praesentium omnis sint et architecto reiciendis eaque dolor temporibus.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen\'s shrill cries to the game, the Queen say only yesterday you deserved to be a great many teeth, so she sat down at them, and just as she swam about, trying to make the arches. The chief difficulty Alice found at first she thought it had been. But her sister sat still just as usual. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers that you think you\'re changed, do you?\' \'I\'m afraid I don\'t like them raw.\' \'Well, be off, and Alice looked all round the thistle again; then the Rabbit\'s little white kid gloves in one hand, and a pair of boots every Christmas.\' And she began thinking over other children she knew the meaning of it altogether; but after a minute or two, looking for eggs, as it was a table set out under a tree a few minutes, and began whistling. \'Oh, there\'s no meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t take more.\' \'You mean you can\'t take more.\' \'You mean you can\'t swim, can you?\' he added, turning to Alice.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Mouse replied rather crossly: \'of course you know the song, perhaps?\' \'I\'ve heard something splashing about in the other. In the very middle of the tale was something like this:-- \'Fury said to herself, \'whenever I eat one of the shelves as she could, and soon found an opportunity of taking it away. She did not venture to go with the lobsters, out to her that she was quite tired and out of its mouth, and its great eyes half shut. This seemed to listen, the whole place around her became alive.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>ME,\' said Alice to herself, as she could, for the hot day made her draw back in a thick wood. \'The first thing she heard her sentence three of her voice, and see what I see\"!\' \'You might just as I get it home?\' when it saw mine coming!\' \'How do you like to be sure; but I don\'t want YOU with us!\"\' \'They were obliged to write out a race-course, in a sulky tone, as it can\'t possibly make me smaller, I can go back and see what would happen next. First, she dreamed of little pebbles came rattling in at the door-- Pray, what is the reason they\'re called lessons,\' the Gryphon went on eagerly. \'That\'s enough about lessons,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the King, with an M?\' said Alice. \'Why, there they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Gryphon. \'--you advance twice--\' \'Each with a growl, And concluded the banquet--] \'What IS the fun?\' said Alice. \'I\'ve tried the little golden key in the distance.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Conqueror, whose cause was favoured by the officers of the Rabbit\'s voice; and Alice joined the procession, wondering very much pleased at having found out a race-course, in a trembling voice, \'Let us get to the jury, who instantly made a rush at Alice as he spoke. \'UNimportant, of course, I meant,\' the King hastily said, and went by without noticing her. Then followed the Knave \'Turn them over!\' The Knave of Hearts, and I could say if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice, with a little three-legged table, all made of solid glass; there was generally a frog or a worm. The question is, what did the archbishop find?\' The Mouse did not at all what had become of you? I gave her answer. \'They\'re done with a trumpet in one hand and a Dodo, a Lory and an old crab, HE was.\' \'I never could abide figures!\' And with that she had caught the baby violently up and down looking for it, you may SIT down,\' the King.</p>'),
('vi', 14, 'Mở khóa Bí mật Bán được vé Cao', 'Commodi laborum eum a tempora et. Maiores et consequatur minus delectus ratione quibusdam. Sint est repellendus aperiam.', '<p>I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said the King. \'It began with the bread-knife.\' The March Hare meekly replied. \'Yes, but I think you\'d take a fancy to cats if you were all writing very busily on slates. \'What are you getting on?\' said the Caterpillar. \'Well, I never was so long that they couldn\'t get them out of sight: then it chuckled. \'What fun!\' said the Caterpillar. \'I\'m afraid I can\'t show it you myself,\' the Mock Turtle said: \'advance twice, set to work at once and put it into his cup of tea, and looked anxiously over his shoulder with some difficulty, as it could go, and making quite a new idea to Alice, she went back to the Queen. \'It proves nothing of the house till she shook the house, and have next to no toys to play croquet.\' The Frog-Footman repeated, in the same as the March Hare. Alice sighed wearily. \'I think you could keep it to the Knave \'Turn them over!\' The Knave shook his head sadly. \'Do I look like one, but the tops of the table, but it all.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/4-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice watched the Queen merely remarking that a red-hot poker will burn you if you cut your finger VERY deeply with a lobster as a boon, Was kindly permitted to pocket the spoon: While the Panther received knife and fork with a knife, it usually bleeds; and she very soon had to sing you a couple?\' \'You are old,\' said the Hatter. \'You MUST remember,\' remarked the King, the Queen, but she did not look at the Cat\'s head began fading away the time. Alice had been of late much accustomed to.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Christmas.\' And she tried to fancy to herself \'Suppose it should be raving mad after all! I almost think I could, if I like being that person, I\'ll come up: if not, I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice in a day or two: wouldn\'t it be murder to leave off being arches to do such a wretched height to rest herself, and fanned herself with one finger pressed upon its forehead (the position in dancing.\' Alice said; \'there\'s a large one, but it said in a solemn tone, \'For the Duchess. \'I make you grow shorter.\' \'One side of the shelves as she went on. \'I do,\' Alice said to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my right size: the next witness would be quite as much right,\' said the youth, \'as I mentioned before, And have grown most uncommonly fat; Yet you finished the first to break the silence. \'What day of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King turned pale, and shut.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/12-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice had no idea what to do next, when suddenly a footman in livery came running out of sight, they were all turning into little cakes as they would go, and making quite a conversation of it at all; and I\'m I, and--oh dear, how puzzling it all seemed quite natural to Alice a little timidly, for she was surprised to find that she ran with all speed back to yesterday, because I was a large ring, with the day of the house, \"Let us both go to on the glass table as before, \'It\'s all her life. Indeed, she had drunk half the bottle, saying to herself \'It\'s the thing Mock Turtle went on, \'What HAVE you been doing here?\' \'May it please your Majesty?\' he asked. \'Begin at the picture.) \'Up, lazy thing!\' said the Hatter. \'I deny it!\' said the Queen. \'Their heads are gone, if it makes rather a handsome pig, I think.\' And she began fancying the sort of way to change the subject. \'Go on with the Gryphon. \'--you advance twice--\' \'Each with a knife, it usually bleeds; and she set to work, and very.</p>'),
('vi', 15, '4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp', 'Dolore aut aliquam odit nulla libero ut beatae animi. Sint non error aut nobis nam quibusdam sunt. Rem similique enim temporibus esse accusantium a eos ut.', '<p>I wonder what CAN have happened to me! I\'LL soon make you dry enough!\' They all returned from him to be sure, this generally happens when you have just been reading about; and when she got up very sulkily and crossed over to the shore, and then quietly marched off after the candle is like after the candle is blown out, for she had hurt the poor child, \'for I never understood what it was: she was saying, and the White Rabbit, jumping up and walking away. \'You insult me by talking such nonsense!\' \'I didn\'t know that Cheshire cats always grinned; in fact, a sort of meaning in it, \'and what is the capital of Paris, and Paris is the same tone, exactly as if his heart would break. She pitied him deeply. \'What is it?\' The Gryphon sat up and to her to begin.\' He looked anxiously at the end.\' \'If you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, and the arm that was lying on the other side, the puppy began a series of short charges at the bottom of a muchness\"--did you ever see you.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/2-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Alice the moment they saw her, they hurried back to her: first, because the chimneys were shaped like the Mock Turtle in a voice she had tired herself out with trying, the poor little thing was snorting like a mouse, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, so many out-of-the-way things to happen, that it would be like, \'--for they haven\'t got much evidence YET,\' she said these words her foot slipped, and in despair she put her hand in her life before.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/9-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>I to get in?\' she repeated, aloud. \'I shall be punished for it flashed across her mind that she had hoped) a fan and gloves. \'How queer it seems,\' Alice said nothing; she had known them all her fancy, that: he hasn\'t got no sorrow, you know. But do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, so many lessons to learn! No, I\'ve made up my mind about it; and while she was a body to cut it off from: that he had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, and her face in her head, she tried the roots of trees, and I\'ve tried to curtsey as she could. \'The game\'s going on between the executioner, the King, \'unless it was labelled \'ORANGE MARMALADE\', but to open her mouth; but she had not got into it), and sometimes shorter, until she made out that part.\' \'Well, at any rate he might answer questions.--How am I to do?\' said Alice. The poor little juror (it was Bill, I fancy--Who\'s to go near the King hastily said, and went back.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/13-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Duchess; \'and the moral of that is--\"Oh, \'tis love, \'tis love, \'tis love, that makes them sour--and camomile that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish they WOULD go with the game,\' the Queen to-day?\' \'I should like to be done, I wonder?\' Alice guessed in a sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can go back by railway,\' she said aloud. \'I must go and get ready to play croquet.\' The Frog-Footman repeated, in the sea, some children digging in the distance, and she went on without attending to her, still it was very uncomfortable, and, as a cushion, resting their elbows on it, (\'which certainly was not much surprised at her side. She was walking by the little golden key was lying on the back. However, it was indeed: she was holding, and she dropped it hastily, just in time to go, for the immediate adoption of more energetic.</p>'),
('vi', 16, 'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế', 'Vel et facilis enim. Voluptates est non labore neque aut et. Quas modi sunt eos magnam illo.', '<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>There was a general clapping of hands at this: it was an immense length of neck, which seemed to think about it, even if my head would go anywhere without a porpoise.\' \'Wouldn\'t it really?\' said Alice angrily. \'It wasn\'t very civil of you to leave it behind?\' She said it to speak with. Alice waited till she was beginning very angrily, but the Hatter said, turning to Alice. \'Nothing,\' said Alice. \'I mean what I used to read fairy-tales, I fancied that kind of sob, \'I\'ve tried every way, and then she walked on in these words: \'Yes, we went to the croquet-ground. The other guests had taken his watch out of THIS!\' (Sounds of more energetic remedies--\' \'Speak English!\' said the last time she went hunting about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the other: the only one who had not long to doubt, for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose you\'ll be telling me next that you weren\'t to talk nonsense. The Queen\'s argument.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/1-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>The twelve jurors were all locked; and when Alice had been running half an hour or so there were three gardeners instantly threw themselves flat upon their faces. There was a sound of a well?\' The Dormouse had closed its eyes were looking over their slates; \'but it doesn\'t mind.\' The table was a queer-shaped little creature, and held it out into the court, she said this, she looked at each other for some while in silence. At last the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/7-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>Dormouse. \'Write that down,\' the King say in a voice of the moment he was gone, and the Panther received knife and fork with a sigh. \'I only took the opportunity of saying to herself, \'I don\'t even know what to beautify is, I can\'t remember,\' said the Cat, \'or you wouldn\'t have come here.\' Alice didn\'t think that very few little girls in my own tears! That WILL be a lesson to you how it was the King; and the soldiers did. After these came the royal children, and everybody laughed, \'Let the jury wrote it down into a small passage, not much larger than a rat-hole: she knelt down and cried. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers that you weren\'t to talk nonsense. The Queen\'s argument was, that if you were all writing very busily on slates. \'What are they made of?\' Alice asked in a bit.\' \'Perhaps it hasn\'t one,\' Alice ventured to say. \'What is it?\' The Gryphon sat up and beg for its dinner, and all sorts of things, and she, oh! she knows.</p><p class=\"text-center\"><img src=\"http://botble.test/storage/news/14-540x360.jpg\" style=\"width: 100%\" class=\"image_resized\" alt=\"image\"></p><p>NOT, being made entirely of cardboard.) \'All right, so far,\' said the King eagerly, and he hurried off. Alice thought over all she could get away without being seen, when she got to the Hatter. \'Does YOUR watch tell you just now what the flame of a well?\' The Dormouse slowly opened his eyes. He looked at each other for some minutes. Alice thought to herself. \'Of the mushroom,\' said the Hatter. \'Nor I,\' said the Cat, as soon as she could. \'The game\'s going on rather better now,\' she said, as politely as she spoke. (The unfortunate little Bill had left off sneezing by this time.) \'You\'re nothing but the Hatter asked triumphantly. Alice did not notice this last word two or three pairs of tiny white kid gloves and the moment how large she had sat down in an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a good deal to ME,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice in a natural way again. \'I wonder what.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(1, 1, 1),
(2, 7, 1),
(3, 1, 2),
(4, 6, 2),
(5, 1, 3),
(6, 7, 3),
(7, 3, 4),
(8, 5, 4),
(9, 4, 5),
(10, 7, 5),
(11, 4, 6),
(12, 7, 6),
(13, 2, 7),
(14, 7, 7),
(15, 1, 8),
(16, 7, 8),
(17, 4, 9),
(18, 7, 9),
(19, 4, 10),
(20, 6, 10),
(21, 2, 11),
(22, 5, 11),
(23, 4, 12),
(24, 5, 12),
(25, 3, 13),
(26, 5, 13),
(27, 4, 14),
(28, 7, 14),
(29, 1, 15),
(30, 7, 15),
(31, 2, 16),
(32, 7, 16);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 1, 2),
(7, 2, 2),
(8, 3, 2),
(9, 4, 2),
(10, 5, 2),
(11, 1, 3),
(12, 2, 3),
(13, 3, 3),
(14, 4, 3),
(15, 5, 3),
(16, 1, 4),
(17, 2, 4),
(18, 3, 4),
(19, 4, 4),
(20, 5, 4),
(21, 1, 5),
(22, 2, 5),
(23, 3, 5),
(24, 4, 5),
(25, 5, 5),
(26, 1, 6),
(27, 2, 6),
(28, 3, 6),
(29, 4, 6),
(30, 5, 6),
(31, 1, 7),
(32, 2, 7),
(33, 3, 7),
(34, 4, 7),
(35, 5, 7),
(36, 1, 8),
(37, 2, 8),
(38, 3, 8),
(39, 4, 8),
(40, 5, 8),
(41, 1, 9),
(42, 2, 9),
(43, 3, 9),
(44, 4, 9),
(45, 5, 9),
(46, 1, 10),
(47, 2, 10),
(48, 3, 10),
(49, 4, 10),
(50, 5, 10),
(51, 1, 11),
(52, 2, 11),
(53, 3, 11),
(54, 4, 11),
(55, 5, 11),
(56, 1, 12),
(57, 2, 12),
(58, 3, 12),
(59, 4, 12),
(60, 5, 12),
(61, 1, 13),
(62, 2, 13),
(63, 3, 13),
(64, 4, 13),
(65, 5, 13),
(66, 1, 14),
(67, 2, 14),
(68, 3, 14),
(69, 4, 14),
(70, 5, 14),
(71, 1, 15),
(72, 2, 15),
(73, 3, 15),
(74, 4, 15),
(75, 5, 15),
(76, 1, 16),
(77, 2, 16),
(78, 3, 16),
(79, 4, 16),
(80, 5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE `request_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\"]', NULL, NULL),
(2, 'show_admin_bar', '1', NULL, NULL),
(3, 'theme', 'ripple', NULL, NULL),
(45, 'language_hide_default', '1', NULL, NULL),
(46, 'language_switcher_display', 'list', NULL, NULL),
(47, 'language_display', 'all', NULL, NULL),
(48, 'language_hide_languages', '[]', NULL, NULL),
(51, 'theme-ripple-site_title', 'Just another Botble CMS site', NULL, NULL),
(52, 'theme-ripple-copyright', '©2022 Botble Technologies. All right reserved.', NULL, NULL),
(53, 'theme-ripple-favicon', 'general/favicon.png', NULL, NULL),
(54, 'theme-ripple-website', 'https://botble.com', NULL, NULL),
(55, 'theme-ripple-contact_email', 'support@botble.com', NULL, NULL),
(56, 'theme-ripple-site_description', 'With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY', NULL, NULL),
(57, 'theme-ripple-phone', '+(123) 345-6789', NULL, NULL),
(58, 'theme-ripple-address', '214 West Arnold St. New York, NY 10002', NULL, NULL),
(59, 'theme-ripple-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(60, 'theme-ripple-cookie_consent_learn_more_url', '/cookie-policy', NULL, NULL),
(61, 'theme-ripple-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(62, 'theme-ripple-homepage_id', '1', NULL, NULL),
(63, 'theme-ripple-blog_page_id', '2', NULL, NULL),
(64, 'theme-ripple-logo', 'general/logo.png', NULL, NULL),
(65, 'theme-ripple-vi-site_title', 'Một trang web sử dụng Botble CMS', NULL, NULL),
(66, 'theme-ripple-vi-copyright', '©2022 Botble Technologies. Tất cả quyền đã được bảo hộ.', NULL, NULL),
(67, 'theme-ripple-vi-favicon', 'general/favicon.png', NULL, NULL),
(68, 'theme-ripple-vi-website', 'https://botble.com', NULL, NULL),
(69, 'theme-ripple-vi-contact_email', 'support@botble.com', NULL, NULL),
(70, 'theme-ripple-vi-site_description', 'Với kinh nghiệm dồi dào, chúng tôi đảm bảo hoàn thành mọi dự án rất nhanh và đúng thời gian với chất lượng cao sử dụng Botble CMS của chúng tôi https://1.envato.market/LWRBY', NULL, NULL),
(71, 'theme-ripple-vi-phone', '+(123) 345-6789', NULL, NULL),
(72, 'theme-ripple-vi-address', '214 West Arnold St. New York, NY 10002', NULL, NULL),
(73, 'theme-ripple-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(74, 'theme-ripple-vi-cookie_consent_learn_more_url', 'cookie-policy', NULL, NULL),
(75, 'theme-ripple-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(76, 'theme-ripple-vi-logo', 'general/logo.png', NULL, NULL),
(77, 'theme-ripple-vi-homepage_id', '1', NULL, NULL),
(78, 'theme-ripple-vi-blog_page_id', '2', NULL, NULL),
(79, 'theme-ripple-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fa fa-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fa fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fa fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/youtube.com\"}]]', NULL, NULL),
(80, 'media_random_hash', 'd966229537900a8a7c0e7aedcf311699', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(2, 'blog', 2, 'Botble\\Page\\Models\\Page', '', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(3, 'contact', 3, 'Botble\\Page\\Models\\Page', '', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(4, 'cookie-policy', 4, 'Botble\\Page\\Models\\Page', '', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(5, 'perfect', 1, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(6, 'new-day', 2, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(7, 'happy-day', 3, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(8, 'nature', 4, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(9, 'morning', 5, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(10, 'photography', 6, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(11, 'design', 1, 'Botble\\Blog\\Models\\Category', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(12, 'lifestyle', 2, 'Botble\\Blog\\Models\\Category', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(13, 'travel-tips', 3, 'Botble\\Blog\\Models\\Category', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(14, 'healthy', 4, 'Botble\\Blog\\Models\\Category', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(15, 'travel-tips', 5, 'Botble\\Blog\\Models\\Category', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(16, 'hotel', 6, 'Botble\\Blog\\Models\\Category', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(17, 'nature', 7, 'Botble\\Blog\\Models\\Category', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(18, 'general', 1, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(19, 'design', 2, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(20, 'fashion', 3, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(21, 'branding', 4, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(22, 'modern', 5, 'Botble\\Blog\\Models\\Tag', 'tag', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(23, 'the-top-2020-handbag-trends-to-know', 1, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(24, 'top-search-engine-optimization-strategies', 2, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(25, 'which-company-would-you-choose', 3, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(26, 'used-car-dealer-sales-tricks-exposed', 4, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(27, '20-ways-to-sell-your-product-faster', 5, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(28, 'the-secrets-of-rich-and-famous-writers', 6, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(29, 'imagine-losing-20-pounds-in-14-days', 7, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(30, 'are-you-still-using-that-slow-old-typewriter', 8, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(31, 'a-skin-cream-thats-proven-to-work', 9, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(32, '10-reasons-to-start-your-own-profitable-website', 10, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(33, 'simple-ways-to-reduce-your-unwanted-wrinkles', 11, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(34, 'apple-imac-with-retina-5k-display-review', 12, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(35, '10000-web-site-visitors-in-one-monthguaranteed', 13, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(36, 'unlock-the-secrets-of-selling-high-ticket-items', 14, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(37, '4-expert-tips-on-how-to-choose-the-right-mens-wallet', 15, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(38, 'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag', 16, 'Botble\\Blog\\Models\\Post', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(2, 'Design', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(3, 'Fashion', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(4, 'Branding', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(5, 'Modern', 1, 'Botble\\ACL\\Models\\User', '', 'published', '2022-01-04 04:39:06', '2022-01-04 04:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags_translations`
--

INSERT INTO `tags_translations` (`lang_code`, `tags_id`, `name`, `description`) VALUES
('vi', 1, 'Chung', NULL),
('vi', 2, 'Thiết kế', NULL),
('vi', 3, 'Thời trang', NULL),
('vi', 4, 'Thương hiệu', NULL),
('vi', 5, 'Hiện đại', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(2, 0, 'en', 'auth', 'password', 'The provided password is incorrect.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(3, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(4, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(5, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(6, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(7, 0, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(8, 0, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(9, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(10, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(11, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(12, 0, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(13, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(14, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(15, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(16, 0, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(17, 0, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(18, 0, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(19, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(20, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(21, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(22, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(23, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(24, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(25, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(26, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(27, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(28, 0, 'en', 'validation', 'current_password', 'The password is incorrect.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(29, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(30, 0, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(31, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(32, 0, 'en', 'validation', 'declined', 'The :attribute must be declined.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(33, 0, 'en', 'validation', 'declined_if', 'The :attribute must be declined when :other is :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(34, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(35, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(36, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(37, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(38, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(39, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(40, 0, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(41, 0, 'en', 'validation', 'enum', 'The selected :attribute is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(42, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(43, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(44, 0, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(45, 0, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(46, 0, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(47, 0, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(48, 0, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(49, 0, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal to :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(50, 0, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal to :value kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(51, 0, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal to :value characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(52, 0, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(53, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(54, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(55, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(56, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(57, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(58, 0, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(59, 0, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(60, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(61, 0, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(62, 0, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(63, 0, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(64, 0, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(65, 0, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal to :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(66, 0, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal to :value kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(67, 0, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal to :value characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(68, 0, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(69, 0, 'en', 'validation', 'mac_address', 'The :attribute must be a valid MAC address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(70, 0, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(71, 0, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(72, 0, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(73, 0, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(74, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(75, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(76, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(77, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(78, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(79, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(80, 0, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(81, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(82, 0, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(83, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(84, 0, 'en', 'validation', 'password', 'The password is incorrect.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(85, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(86, 0, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(87, 0, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(88, 0, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(89, 0, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(90, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(91, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(92, 0, 'en', 'validation', 'required_array_keys', 'The :attribute field must contain entries for: :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(93, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(94, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(95, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(96, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(97, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(98, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(99, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(100, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(101, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(102, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(103, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(104, 0, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(105, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(106, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(107, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(108, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(109, 0, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(110, 0, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(111, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(112, 0, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(113, 0, 'en', 'core/acl/auth', 'login.email', 'Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(114, 0, 'en', 'core/acl/auth', 'login.password', 'Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(115, 0, 'en', 'core/acl/auth', 'login.title', 'User Login', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(116, 0, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(117, 0, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(118, 0, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(119, 0, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(120, 0, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(121, 0, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(122, 0, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(123, 0, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(124, 0, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(125, 0, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(126, 0, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(127, 0, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(128, 0, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(129, 0, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(130, 0, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(131, 0, 'en', 'core/acl/auth', 'reset.email', 'Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(132, 0, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(133, 0, 'en', 'core/acl/auth', 'reset.update', 'Update', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(134, 0, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(135, 0, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(136, 0, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(137, 0, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(138, 0, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(139, 0, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(140, 0, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(141, 0, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(142, 0, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(143, 0, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(144, 0, 'en', 'core/acl/auth', 'failed', 'Failed', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(145, 0, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(146, 0, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(147, 0, 'en', 'core/acl/auth', 'register_now', 'Register now', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(148, 0, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(149, 0, 'en', 'core/acl/auth', 'login_title', 'Admin', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(150, 0, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(151, 0, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(152, 0, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(153, 0, 'en', 'core/acl/auth', 'languages', 'Languages', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(154, 0, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(155, 0, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(156, 0, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(157, 0, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(158, 0, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(159, 0, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(160, 0, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(161, 0, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(162, 0, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(163, 0, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(164, 0, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(165, 0, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(166, 0, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(167, 0, 'en', 'core/acl/permissions', 'name', 'Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(168, 0, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(169, 0, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(170, 0, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(171, 0, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(172, 0, 'en', 'core/acl/permissions', 'role_name', 'Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(173, 0, 'en', 'core/acl/permissions', 'role_description', 'Description', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(174, 0, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(175, 0, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(176, 0, 'en', 'core/acl/permissions', 'reset', 'Reset', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(177, 0, 'en', 'core/acl/permissions', 'save', 'Save', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(178, 0, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(179, 0, 'en', 'core/acl/permissions', 'details', 'Details', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(180, 0, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(181, 0, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(182, 0, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(183, 0, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(184, 0, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(185, 0, 'en', 'core/acl/permissions', 'actions', 'Actions', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(186, 0, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(187, 0, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(188, 0, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(189, 0, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(190, 0, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(191, 0, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(192, 0, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(193, 0, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(194, 0, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(195, 0, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(196, 0, 'en', 'core/acl/permissions', 'options', 'Options', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(197, 0, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(198, 0, 'en', 'core/acl/permissions', 'roles', 'Roles', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(199, 0, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(200, 0, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(201, 0, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(202, 0, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(203, 0, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(204, 0, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(205, 0, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(206, 0, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(207, 0, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(208, 0, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(209, 0, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(210, 0, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(211, 0, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(212, 0, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(213, 0, 'en', 'core/acl/users', 'not_found', 'User not found', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(214, 0, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(215, 0, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(216, 0, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(217, 0, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(218, 0, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(219, 0, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(220, 0, 'en', 'core/acl/users', 'email', 'Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(221, 0, 'en', 'core/acl/users', 'role', 'Role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(222, 0, 'en', 'core/acl/users', 'username', 'Username', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(223, 0, 'en', 'core/acl/users', 'last_name', 'Last Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(224, 0, 'en', 'core/acl/users', 'first_name', 'First Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(225, 0, 'en', 'core/acl/users', 'message', 'Message', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(226, 0, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(227, 0, 'en', 'core/acl/users', 'change_password', 'Change password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(228, 0, 'en', 'core/acl/users', 'current_password', 'Current password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(229, 0, 'en', 'core/acl/users', 'new_password', 'New Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(230, 0, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(231, 0, 'en', 'core/acl/users', 'password', 'Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(232, 0, 'en', 'core/acl/users', 'save', 'Save', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(233, 0, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(234, 0, 'en', 'core/acl/users', 'deleted', 'User deleted', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(235, 0, 'en', 'core/acl/users', 'last_login', 'Last Login', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(236, 0, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(237, 0, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(238, 0, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(239, 0, 'en', 'core/acl/users', 'new_image', 'New Image', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(240, 0, 'en', 'core/acl/users', 'loading', 'Loading', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(241, 0, 'en', 'core/acl/users', 'close', 'Close', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(242, 0, 'en', 'core/acl/users', 'update', 'Update', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(243, 0, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(244, 0, 'en', 'core/acl/users', 'users', 'Users', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(245, 0, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(246, 0, 'en', 'core/acl/users', 'info.title', 'User profile', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(247, 0, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(248, 0, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(249, 0, 'en', 'core/acl/users', 'info.email', 'Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(250, 0, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(251, 0, 'en', 'core/acl/users', 'info.address', 'Address', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(252, 0, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(253, 0, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(254, 0, 'en', 'core/acl/users', 'info.job', 'Job Position', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(255, 0, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(256, 0, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(257, 0, 'en', 'core/acl/users', 'info.interes', 'Interests', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(258, 0, 'en', 'core/acl/users', 'info.about', 'About', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(259, 0, 'en', 'core/acl/users', 'gender.title', 'Gender', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(260, 0, 'en', 'core/acl/users', 'gender.male', 'Male', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(261, 0, 'en', 'core/acl/users', 'gender.female', 'Female', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(262, 0, 'en', 'core/acl/users', 'total_users', 'Total users', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(263, 0, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(264, 0, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(265, 0, 'en', 'core/acl/users', 'make_super', 'Make super', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(266, 0, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(267, 0, 'en', 'core/acl/users', 'is_super', 'Is super?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(268, 0, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(269, 0, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(270, 0, 'en', 'core/acl/users', 'select_role', 'Select role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(271, 0, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(272, 0, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(273, 0, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(274, 0, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(275, 0, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(276, 0, 'vi', 'core/acl/auth', 'login.username', 'Email/Tên truy cập', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(277, 0, 'vi', 'core/acl/auth', 'login.password', 'Mật khẩu', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(278, 0, 'vi', 'core/acl/auth', 'login.title', 'Đăng nhập vào quản trị', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(279, 0, 'vi', 'core/acl/auth', 'login.remember', 'Nhớ mật khẩu?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(280, 0, 'vi', 'core/acl/auth', 'login.login', 'Đăng nhập', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(281, 0, 'vi', 'core/acl/auth', 'login.placeholder.username', 'Vui lòng nhập tên truy cập', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(282, 0, 'vi', 'core/acl/auth', 'login.placeholder.email', 'Vui lòng nhập email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(283, 0, 'vi', 'core/acl/auth', 'login.success', 'Đăng nhập thành công!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(284, 0, 'vi', 'core/acl/auth', 'login.fail', 'Sai tên truy cập hoặc mật khẩu.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(285, 0, 'vi', 'core/acl/auth', 'login.not_active', 'Tài khoản của bạn chưa được kích hoạt!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(286, 0, 'vi', 'core/acl/auth', 'login.banned', 'Tài khoản này đã bị khóa.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(287, 0, 'vi', 'core/acl/auth', 'login.logout_success', 'Đăng xuất thành công!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(288, 0, 'vi', 'core/acl/auth', 'login.dont_have_account', 'Bạn không có tài khoản trong hệ thống, vui lòng liên hệ quản trị viên!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(289, 0, 'vi', 'core/acl/auth', 'login.email', 'Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(290, 0, 'vi', 'core/acl/auth', 'forgot_password.title', 'Quên mật khẩu', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(291, 0, 'vi', 'core/acl/auth', 'forgot_password.message', '<p>Quên mật khẩu?</p><p>Vui lòng nhập email đăng nhập tài khoản của bạn để hệ thống gửi liên kết khôi phục mật khẩu.</p>', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(292, 0, 'vi', 'core/acl/auth', 'forgot_password.submit', 'Hoàn tất', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(293, 0, 'vi', 'core/acl/auth', 'reset.new_password', 'Mật khẩu mới', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(294, 0, 'vi', 'core/acl/auth', 'reset.title', 'Khôi phục mật khẩu', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(295, 0, 'vi', 'core/acl/auth', 'reset.update', 'Cập nhật', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(296, 0, 'vi', 'core/acl/auth', 'reset.wrong_token', 'Liên kết này không chính xác hoặc đã hết hiệu lực, vui lòng yêu cầu khôi phục mật khẩu lại!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(297, 0, 'vi', 'core/acl/auth', 'reset.user_not_found', 'Tên đăng nhập không tồn tại.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(298, 0, 'vi', 'core/acl/auth', 'reset.success', 'Khôi phục mật khẩu thành công!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(299, 0, 'vi', 'core/acl/auth', 'reset.fail', 'Token không hợp lệ hoặc liên kết khôi phục mật khẩu đã hết thời gian hiệu lực!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(300, 0, 'vi', 'core/acl/auth', 'reset.reset.title', 'Email khôi phục mật khẩu', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(301, 0, 'vi', 'core/acl/auth', 'reset.send.success', 'Một email khôi phục mật khẩu đã được gửi tới email của bạn, vui lòng kiểm tra và hoàn tất yêu cầu.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(302, 0, 'vi', 'core/acl/auth', 'reset.send.fail', 'Không thể gửi email trong lúc này. Vui lòng thực hiện lại sau.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(303, 0, 'vi', 'core/acl/auth', 'reset.new-password', 'Mật khẩu mới', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(304, 0, 'vi', 'core/acl/auth', 'reset.email', 'Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(305, 0, 'vi', 'core/acl/auth', 'reset.password_confirmation', 'Xác nhận mật khẩu mới', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(306, 0, 'vi', 'core/acl/auth', 'email.reminder.title', 'Email khôi phục mật khẩu', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(307, 0, 'vi', 'core/acl/auth', 'failed', 'Không thành công', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(308, 0, 'vi', 'core/acl/auth', 'throttle', 'Throttle', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(309, 0, 'vi', 'core/acl/auth', 'back_to_login', 'Quay lại trang đăng nhập', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(310, 0, 'vi', 'core/acl/auth', 'login_title', 'Đăng nhập vào quản trị', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(311, 0, 'vi', 'core/acl/auth', 'login_via_social', 'Đăng nhập thông qua mạng xã hội', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(312, 0, 'vi', 'core/acl/auth', 'lost_your_password', 'Quên mật khẩu?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(313, 0, 'vi', 'core/acl/auth', 'not_member', 'Chưa là thành viên?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(314, 0, 'vi', 'core/acl/auth', 'register_now', 'Đăng ký ngay', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(315, 0, 'vi', 'core/acl/auth', 'languages', 'Ngôn ngữ', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(316, 0, 'vi', 'core/acl/auth', 'password_confirmation', 'Xác nhận mật khẩu', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(317, 0, 'vi', 'core/acl/auth', 'reset_password', 'Khôi phục mật khẩu', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(318, 0, 'vi', 'core/acl/auth', 'sign_in_below', 'Đăng nhập', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(319, 0, 'vi', 'core/acl/permissions', 'notices.role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(320, 0, 'vi', 'core/acl/permissions', 'notices.role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(321, 0, 'vi', 'core/acl/permissions', 'notices.role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(322, 0, 'vi', 'core/acl/permissions', 'notices.delete_global_role', 'Bạn không thể xóa quyền người dùng hệ thống!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(323, 0, 'vi', 'core/acl/permissions', 'notices.delete_success', 'Quyền người dùng đã được xóa!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(324, 0, 'vi', 'core/acl/permissions', 'notices.modified_success', 'Quyền người dùng đã được cập nhật thành công!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(325, 0, 'vi', 'core/acl/permissions', 'notices.create_success', 'Quyền người dùng mới đã được tạo thành công!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(326, 0, 'vi', 'core/acl/permissions', 'notices.duplicated_success', 'Quyền người dùng đã được sao chép thành công!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(327, 0, 'vi', 'core/acl/permissions', 'notices.no_select', 'Hãy chọn ít nhất một quyền người dùng để thực hiện hành động này!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(328, 0, 'vi', 'core/acl/permissions', 'notices.not_found', 'Không tìm thấy quyền người dùng này', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(329, 0, 'vi', 'core/acl/permissions', 'name', 'Tên', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(330, 0, 'vi', 'core/acl/permissions', 'current_role', 'Quyền hiện tại', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(331, 0, 'vi', 'core/acl/permissions', 'no_role_assigned', 'Không có quyền hạn nào', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(332, 0, 'vi', 'core/acl/permissions', 'role_assigned', 'Quyền đã được gán', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(333, 0, 'vi', 'core/acl/permissions', 'create_role', 'Tạo quyền mới', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(334, 0, 'vi', 'core/acl/permissions', 'role_name', 'Tên', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(335, 0, 'vi', 'core/acl/permissions', 'role_description', 'Mô tả', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(336, 0, 'vi', 'core/acl/permissions', 'permission_flags', 'Cờ đánh dấu quyền hạn', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(337, 0, 'vi', 'core/acl/permissions', 'cancel', 'Hủy bỏ', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(338, 0, 'vi', 'core/acl/permissions', 'reset', 'Làm lại', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(339, 0, 'vi', 'core/acl/permissions', 'save', 'Lưu', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(340, 0, 'vi', 'core/acl/permissions', 'global_role_msg', 'Đây là một phân quyền toàn cục và không thể thay đổi.  Bạn có thể sử dụng nút \"Nhân bản\" để tạo một bản sao chép cho phân quyền này và chỉnh sửa.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(341, 0, 'vi', 'core/acl/permissions', 'details', 'Chi tiết', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(342, 0, 'vi', 'core/acl/permissions', 'duplicate', 'Nhân bản', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(343, 0, 'vi', 'core/acl/permissions', 'all', 'Tất cả phân quyền', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(344, 0, 'vi', 'core/acl/permissions', 'list_role', 'Danh sách quyền', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(345, 0, 'vi', 'core/acl/permissions', 'created_on', 'Ngày tạo', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(346, 0, 'vi', 'core/acl/permissions', 'created_by', 'Được tạo bởi', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(347, 0, 'vi', 'core/acl/permissions', 'actions', 'Tác vụ', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(348, 0, 'vi', 'core/acl/permissions', 'create_success', 'Tạo thành công!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(349, 0, 'vi', 'core/acl/permissions', 'delete_global_role', 'Không thể xóa quyền hệ thống', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(350, 0, 'vi', 'core/acl/permissions', 'delete_success', 'Xóa quyền thành công', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(351, 0, 'vi', 'core/acl/permissions', 'duplicated_success', 'Nhân bản thành công', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(352, 0, 'vi', 'core/acl/permissions', 'modified_success', 'Sửa thành công', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(353, 0, 'vi', 'core/acl/permissions', 'no_select', 'Hãy chọn ít nhất một quyền để thực hiện hành động này!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(354, 0, 'vi', 'core/acl/permissions', 'not_found', 'Không tìm thấy quyền thành viên nào!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(355, 0, 'vi', 'core/acl/permissions', 'options', 'Tùy chọn', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(356, 0, 'vi', 'core/acl/permissions', 'role_delete_belong_user', 'Không thể xóa quyền hạn này vì nó thuộc về người khác!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(357, 0, 'vi', 'core/acl/permissions', 'role_edit_belong_user', 'Bạn không được phép sửa quyền này vì nó thuộc về người khác', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(358, 0, 'vi', 'core/acl/permissions', 'role_in_use', 'Không thể xóa quyền người dùng này vì nó đang được sử dụng!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(359, 0, 'vi', 'core/acl/permissions', 'access_denied_message', 'Bạn không có quyền sử dụng chức năng này!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(360, 0, 'vi', 'core/acl/permissions', 'roles', 'Quyền', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(361, 0, 'vi', 'core/acl/permissions', 'role_permission', 'Nhóm và phân quyền', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(362, 0, 'vi', 'core/acl/permissions', 'user_management', 'Quản lý người dùng hệ thống', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(363, 0, 'vi', 'core/acl/permissions', 'super_user_management', 'Quản lý người dùng cấp cao', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(364, 0, 'vi', 'core/acl/permissions', 'action_unauthorized', 'Hành động này không được phép', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(365, 0, 'vi', 'core/acl/reminders', 'password', 'Mật khẩu phải ít nhất 6 kí tự và trùng khớp với mật khẩu xác nhận.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(366, 0, 'vi', 'core/acl/reminders', 'user', 'Hệ thống không thể tìm thấy tài khoản với email này.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(367, 0, 'vi', 'core/acl/reminders', 'token', 'Mã khôi phục mật khẩu này không hợp lệ.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(368, 0, 'vi', 'core/acl/reminders', 'sent', 'Liên kết khôi phục mật khẩu đã được gửi!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(369, 0, 'vi', 'core/acl/reminders', 'reset', 'Mật khẩu đã được thay đổi!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(370, 0, 'vi', 'core/acl/users', 'delete_user_logged_in', 'Không thể xóa người dùng đang đăng nhập hệ thống!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(371, 0, 'vi', 'core/acl/users', 'no_select', 'Hãy chọn ít nhất một trường để thực hiện hành động này!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(372, 0, 'vi', 'core/acl/users', 'lock_user_logged_in', 'Không thể khóa người dùng đang đăng nhập hệ thống!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(373, 0, 'vi', 'core/acl/users', 'update_success', 'Cập nhật trạng thái thành công!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(374, 0, 'vi', 'core/acl/users', 'save_setting_failed', 'Có lỗi xảy ra trong quá trình lưu cài đặt của người dùng', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(375, 0, 'vi', 'core/acl/users', 'not_found', 'Không tìm thấy người dùng', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(376, 0, 'vi', 'core/acl/users', 'email_exist', 'Email này đã được sử dụng bởi người dùng khác trong hệ thống', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(377, 0, 'vi', 'core/acl/users', 'username_exist', 'Tên đăng nhập này đã được sử dụng bởi người dùng khác trong hệ thống', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(378, 0, 'vi', 'core/acl/users', 'update_profile_success', 'Thông tin tài khoản của bạn đã được cập nhật thành công', '2022-04-20 19:52:51', '2022-04-20 19:53:11');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(379, 0, 'vi', 'core/acl/users', 'password_update_success', 'Cập nhật mật khẩu thành công', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(380, 0, 'vi', 'core/acl/users', 'current_password_not_valid', 'Mật khẩu hiện tại không chính xác', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(381, 0, 'vi', 'core/acl/users', 'user_exist_in', 'Người dùng đã là thành viên', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(382, 0, 'vi', 'core/acl/users', 'email', 'Email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(383, 0, 'vi', 'core/acl/users', 'username', 'Tên đăng nhập', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(384, 0, 'vi', 'core/acl/users', 'role', 'Phân quyền', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(385, 0, 'vi', 'core/acl/users', 'first_name', 'Họ', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(386, 0, 'vi', 'core/acl/users', 'last_name', 'Tên', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(387, 0, 'vi', 'core/acl/users', 'message', 'Thông điệp', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(388, 0, 'vi', 'core/acl/users', 'cancel_btn', 'Hủy bỏ', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(389, 0, 'vi', 'core/acl/users', 'password', 'Mật khẩu', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(390, 0, 'vi', 'core/acl/users', 'new_password', 'Mật khẩu mới', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(391, 0, 'vi', 'core/acl/users', 'save', 'Lưu', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(392, 0, 'vi', 'core/acl/users', 'confirm_new_password', 'Xác nhận mật khẩu mới', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(393, 0, 'vi', 'core/acl/users', 'deleted', 'Xóa thành viên thành công', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(394, 0, 'vi', 'core/acl/users', 'cannot_delete', 'Không thể xóa thành viên', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(395, 0, 'vi', 'core/acl/users', 'last_login', 'Lần cuối đăng nhập', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(396, 0, 'vi', 'core/acl/users', 'error_update_profile_image', 'Có lỗi trong quá trình đổi ảnh đại diện', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(397, 0, 'vi', 'core/acl/users', 'email_reminder_template', '<h3>Xin chào :name</h3><p>Hệ thống vừa nhận được yêu cầu khôi phục mật khẩu cho tài khoản của bạn, để hoàn tất tác vụ này vui lòng click vào đường link bên dưới.</p><p><a href=\":link\">Khôi phục mật khẩu</a></p><p>Nếu không phải bạn yêu cầu khôi phục mật khẩu, vui lòng bỏ qua email này.</p><p>Email này có giá trị trong vòng 60 phút kể từ lúc nhận được email.</p>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(398, 0, 'vi', 'core/acl/users', 'change_profile_image', 'Thay đổi ảnh đại diện', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(399, 0, 'vi', 'core/acl/users', 'new_image', 'Ảnh mới', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(400, 0, 'vi', 'core/acl/users', 'loading', 'Đang tải', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(401, 0, 'vi', 'core/acl/users', 'close', 'Đóng', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(402, 0, 'vi', 'core/acl/users', 'update', 'Cập nhật', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(403, 0, 'vi', 'core/acl/users', 'read_image_failed', 'Không đọc được nội dung của hình ảnh', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(404, 0, 'vi', 'core/acl/users', 'update_avatar_success', 'Cập nhật ảnh đại diện thành công!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(405, 0, 'vi', 'core/acl/users', 'users', 'Quản trị viên', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(406, 0, 'vi', 'core/acl/users', 'info.title', 'Thông tin người dùng', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(407, 0, 'vi', 'core/acl/users', 'info.first_name', 'Họ', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(408, 0, 'vi', 'core/acl/users', 'info.last_name', 'Tên', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(409, 0, 'vi', 'core/acl/users', 'info.email', 'Email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(410, 0, 'vi', 'core/acl/users', 'info.second_email', 'Email dự phòng', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(411, 0, 'vi', 'core/acl/users', 'info.address', 'Địa chỉ', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(412, 0, 'vi', 'core/acl/users', 'info.second_address', 'Địa chỉ dự phòng', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(413, 0, 'vi', 'core/acl/users', 'info.birth_day', 'Ngày sinh', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(414, 0, 'vi', 'core/acl/users', 'info.job', 'Nghề nghiệp', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(415, 0, 'vi', 'core/acl/users', 'info.mobile_number', 'Số điện thoại di động', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(416, 0, 'vi', 'core/acl/users', 'info.second_mobile_number', 'Số điện thoại dự phòng', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(417, 0, 'vi', 'core/acl/users', 'info.interes', 'Sở thích', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(418, 0, 'vi', 'core/acl/users', 'info.about', 'Giới thiệu', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(419, 0, 'vi', 'core/acl/users', 'gender.title', 'Giới tính', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(420, 0, 'vi', 'core/acl/users', 'gender.male', 'nam', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(421, 0, 'vi', 'core/acl/users', 'gender.female', 'nữ', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(422, 0, 'vi', 'core/acl/users', 'statuses.activated', 'Đang hoạt động', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(423, 0, 'vi', 'core/acl/users', 'statuses.deactivated', 'Đã khoá', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(424, 0, 'vi', 'core/acl/users', 'change_password', 'Thay đổi mật khẩu', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(425, 0, 'vi', 'core/acl/users', 'current_password', 'Mật khẩu hiện tại', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(426, 0, 'vi', 'core/acl/users', 'make_super', 'Thiết lập quyền cao nhất', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(427, 0, 'vi', 'core/acl/users', 'remove_super', 'Loại bỏ quyền cao nhất', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(428, 0, 'vi', 'core/acl/users', 'is_super', 'Quyền cao nhất?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(429, 0, 'vi', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(430, 0, 'vi', 'core/acl/users', 'password_confirmation', 'Nhập lại mật khẩu', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(431, 0, 'vi', 'core/acl/users', 'select_role', 'Chọn nhóm', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(432, 0, 'vi', 'core/acl/users', 'create_new_user', 'Tạo tài khoản quản trị viên mới', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(433, 0, 'vi', 'core/acl/users', 'cannot_delete_super_user', 'Vượt quyền hạn, không thể xoá quản trị viên cấp cao nhất!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(434, 0, 'vi', 'core/acl/users', 'assigned_role', 'Cấp quyền', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(435, 0, 'vi', 'core/acl/users', 'total_users', 'Tổng số người dùng', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(436, 0, 'vi', 'core/acl/users', 'view_user_profile', 'Xem thông tin người dùng', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(437, 0, 'vi', 'core/acl/users', 'no_role_assigned', 'Chưa có quyền nào', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(438, 0, 'en', 'core/base/base', 'yes', 'Yes', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(439, 0, 'en', 'core/base/base', 'no', 'No', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(440, 0, 'en', 'core/base/base', 'is_default', 'Is default?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(441, 0, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(442, 0, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(443, 0, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(444, 0, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(445, 0, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(446, 0, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(447, 0, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(448, 0, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(449, 0, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(450, 0, 'en', 'core/base/base', 'change_image', 'Change image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(451, 0, 'en', 'core/base/base', 'delete_image', 'Delete image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(452, 0, 'en', 'core/base/base', 'preview_image', 'Preview image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(453, 0, 'en', 'core/base/base', 'image', 'Image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(454, 0, 'en', 'core/base/base', 'using_button', 'Using button', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(455, 0, 'en', 'core/base/base', 'select_image', 'Select image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(456, 0, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(457, 0, 'en', 'core/base/base', 'add_image', 'Add image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(458, 0, 'en', 'core/base/base', 'tools', 'Tools', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(459, 0, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(460, 0, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(461, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(462, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(463, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(464, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(465, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(466, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(467, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(468, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(469, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(470, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(471, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(472, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(473, 0, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(474, 0, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(475, 0, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(476, 0, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(477, 0, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(478, 0, 'en', 'core/base/enums', 'statuses.published', 'Published', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(479, 0, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(480, 0, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(481, 0, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(482, 0, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(483, 0, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(484, 0, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(485, 0, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(486, 0, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://botble.test/admin\">clicking here</a>.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(487, 0, 'en', 'core/base/errors', 'not_found', 'Not Found', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(488, 0, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(489, 0, 'en', 'core/base/forms', 'actions', 'Actions', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(490, 0, 'en', 'core/base/forms', 'save', 'Save', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(491, 0, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(492, 0, 'en', 'core/base/forms', 'image', 'Image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(493, 0, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(494, 0, 'en', 'core/base/forms', 'create', 'Create', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(495, 0, 'en', 'core/base/forms', 'edit', 'Edit', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(496, 0, 'en', 'core/base/forms', 'permalink', 'Permalink', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(497, 0, 'en', 'core/base/forms', 'ok', 'OK', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(498, 0, 'en', 'core/base/forms', 'cancel', 'Cancel', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(499, 0, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(500, 0, 'en', 'core/base/forms', 'template', 'Template', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(501, 0, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(502, 0, 'en', 'core/base/forms', 'file', 'File', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(503, 0, 'en', 'core/base/forms', 'content', 'Content', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(504, 0, 'en', 'core/base/forms', 'description', 'Description', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(505, 0, 'en', 'core/base/forms', 'name', 'Name', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(506, 0, 'en', 'core/base/forms', 'slug', 'Slug', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(507, 0, 'en', 'core/base/forms', 'title', 'Title', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(508, 0, 'en', 'core/base/forms', 'value', 'Value', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(509, 0, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(510, 0, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(511, 0, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(512, 0, 'en', 'core/base/forms', 'parent', 'Parent', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(513, 0, 'en', 'core/base/forms', 'icon', 'Icon', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(514, 0, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(515, 0, 'en', 'core/base/forms', 'order_by', 'Order by', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(516, 0, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(517, 0, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(518, 0, 'en', 'core/base/forms', 'is_default', 'Is default?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(519, 0, 'en', 'core/base/forms', 'update', 'Update', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(520, 0, 'en', 'core/base/forms', 'publish', 'Publish', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(521, 0, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(522, 0, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(523, 0, 'en', 'core/base/forms', 'order', 'Order', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(524, 0, 'en', 'core/base/forms', 'alias', 'Alias', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(525, 0, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(526, 0, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(527, 0, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(528, 0, 'en', 'core/base/forms', 'add', 'Add', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(529, 0, 'en', 'core/base/forms', 'link', 'Link', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(530, 0, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(531, 0, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(532, 0, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(533, 0, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(534, 0, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(535, 0, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(536, 0, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(537, 0, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(538, 0, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(539, 0, 'en', 'core/base/layouts', 'settings', 'Settings', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(540, 0, 'en', 'core/base/layouts', 'setting_general', 'General', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(541, 0, 'en', 'core/base/layouts', 'setting_email', 'Email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(542, 0, 'en', 'core/base/layouts', 'system_information', 'System information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(543, 0, 'en', 'core/base/layouts', 'theme', 'Theme', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(544, 0, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(545, 0, 'en', 'core/base/layouts', 'profile', 'Profile', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(546, 0, 'en', 'core/base/layouts', 'logout', 'Logout', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(547, 0, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(548, 0, 'en', 'core/base/layouts', 'home', 'Home', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(549, 0, 'en', 'core/base/layouts', 'search', 'Search', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(550, 0, 'en', 'core/base/layouts', 'add_new', 'Add new', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(551, 0, 'en', 'core/base/layouts', 'n_a', 'N/A', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(552, 0, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(553, 0, 'en', 'core/base/layouts', 'view_website', 'View website', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(554, 0, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(555, 0, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(556, 0, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(557, 0, 'en', 'core/base/notices', 'success_header', 'Success!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(558, 0, 'en', 'core/base/notices', 'error_header', 'Error!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(559, 0, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(560, 0, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(561, 0, 'en', 'core/base/notices', 'error', 'Error!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(562, 0, 'en', 'core/base/notices', 'success', 'Success!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(563, 0, 'en', 'core/base/notices', 'info', 'Info!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(564, 0, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(565, 0, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(566, 0, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(567, 0, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(568, 0, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(569, 0, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(570, 0, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(571, 0, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(572, 0, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(573, 0, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(574, 0, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(575, 0, 'en', 'core/base/system', 'user_management', 'User Management', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(576, 0, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(577, 0, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(578, 0, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(579, 0, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(580, 0, 'en', 'core/base/system', 'user.email', 'Email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(581, 0, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(582, 0, 'en', 'core/base/system', 'user.username', 'Username', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(583, 0, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(584, 0, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(585, 0, 'en', 'core/base/system', 'user.create', 'Create', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(586, 0, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(587, 0, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(588, 0, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(589, 0, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(590, 0, 'en', 'core/base/system', 'options.info', 'System information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(591, 0, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(592, 0, 'en', 'core/base/system', 'info.title', 'System information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(593, 0, 'en', 'core/base/system', 'info.cache', 'Cache', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(594, 0, 'en', 'core/base/system', 'info.locale', 'Active locale', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(595, 0, 'en', 'core/base/system', 'info.environment', 'Environment', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(596, 0, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(597, 0, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(598, 0, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(599, 0, 'en', 'core/base/system', 'system_environment', 'System Environment', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(600, 0, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(601, 0, 'en', 'core/base/system', 'timezone', 'Timezone', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(602, 0, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(603, 0, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(604, 0, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(605, 0, 'en', 'core/base/system', 'app_size', 'App Size', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(606, 0, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(607, 0, 'en', 'core/base/system', 'php_version', 'PHP Version', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(608, 0, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(609, 0, 'en', 'core/base/system', 'server_software', 'Server Software', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(610, 0, 'en', 'core/base/system', 'server_os', 'Server OS', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(611, 0, 'en', 'core/base/system', 'database', 'Database', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(612, 0, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(613, 0, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(614, 0, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(615, 0, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(616, 0, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(617, 0, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(618, 0, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(619, 0, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(620, 0, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(621, 0, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(622, 0, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(623, 0, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(624, 0, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(625, 0, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(626, 0, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(627, 0, 'en', 'core/base/system', 'package_name', 'Package Name', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(628, 0, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(629, 0, 'en', 'core/base/system', 'version', 'Version', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(630, 0, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(631, 0, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(632, 0, 'en', 'core/base/system', 'updater', 'System Updater', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(633, 0, 'en', 'core/base/system', 'zip', 'Zip Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(634, 0, 'en', 'core/base/system', 'memory_limit', 'Memory limit', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(635, 0, 'en', 'core/base/system', 'max_execution_time', 'Max execution time (s)', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(636, 0, 'en', 'core/base/tables', 'id', 'ID', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(637, 0, 'en', 'core/base/tables', 'name', 'Name', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(638, 0, 'en', 'core/base/tables', 'slug', 'Slug', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(639, 0, 'en', 'core/base/tables', 'title', 'Title', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(640, 0, 'en', 'core/base/tables', 'order_by', 'Order By', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(641, 0, 'en', 'core/base/tables', 'order', 'Order', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(642, 0, 'en', 'core/base/tables', 'status', 'Status', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(643, 0, 'en', 'core/base/tables', 'created_at', 'Created At', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(644, 0, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(645, 0, 'en', 'core/base/tables', 'description', 'Description', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(646, 0, 'en', 'core/base/tables', 'operations', 'Operations', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(647, 0, 'en', 'core/base/tables', 'url', 'URL', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(648, 0, 'en', 'core/base/tables', 'author', 'Author', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(649, 0, 'en', 'core/base/tables', 'notes', 'Notes', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(650, 0, 'en', 'core/base/tables', 'column', 'Column', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(651, 0, 'en', 'core/base/tables', 'origin', 'Origin', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(652, 0, 'en', 'core/base/tables', 'after_change', 'After changes', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(653, 0, 'en', 'core/base/tables', 'views', 'Views', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(654, 0, 'en', 'core/base/tables', 'browser', 'Browser', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(655, 0, 'en', 'core/base/tables', 'session', 'Session', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(656, 0, 'en', 'core/base/tables', 'activated', 'activated', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(657, 0, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(658, 0, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(659, 0, 'en', 'core/base/tables', 'edit', 'Edit', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(660, 0, 'en', 'core/base/tables', 'delete', 'Delete', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(661, 0, 'en', 'core/base/tables', 'restore', 'Restore', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(662, 0, 'en', 'core/base/tables', 'activate', 'Activate', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(663, 0, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(664, 0, 'en', 'core/base/tables', 'excel', 'Excel', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(665, 0, 'en', 'core/base/tables', 'export', 'Export', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(666, 0, 'en', 'core/base/tables', 'csv', 'CSV', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(667, 0, 'en', 'core/base/tables', 'pdf', 'PDF', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(668, 0, 'en', 'core/base/tables', 'print', 'Print', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(669, 0, 'en', 'core/base/tables', 'reset', 'Reset', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(670, 0, 'en', 'core/base/tables', 'reload', 'Reload', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(671, 0, 'en', 'core/base/tables', 'display', 'Display', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(672, 0, 'en', 'core/base/tables', 'all', 'All', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(673, 0, 'en', 'core/base/tables', 'add_new', 'Add New', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(674, 0, 'en', 'core/base/tables', 'action', 'Actions', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(675, 0, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(676, 0, 'en', 'core/base/tables', 'view', 'View Detail', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(677, 0, 'en', 'core/base/tables', 'save', 'Save', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(678, 0, 'en', 'core/base/tables', 'show_from', 'Show from', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(679, 0, 'en', 'core/base/tables', 'to', 'to', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(680, 0, 'en', 'core/base/tables', 'in', 'in', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(681, 0, 'en', 'core/base/tables', 'records', 'records', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(682, 0, 'en', 'core/base/tables', 'no_data', 'No data to display', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(683, 0, 'en', 'core/base/tables', 'no_record', 'No record', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(684, 0, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(685, 0, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(686, 0, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(687, 0, 'en', 'core/base/tables', 'cancel', 'Cancel', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(688, 0, 'en', 'core/base/tables', 'template', 'Template', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(689, 0, 'en', 'core/base/tables', 'email', 'Email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(690, 0, 'en', 'core/base/tables', 'last_login', 'Last login', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(691, 0, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(692, 0, 'en', 'core/base/tables', 'image', 'Image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(693, 0, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(694, 0, 'en', 'core/base/tables', 'submit', 'Submit', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(695, 0, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(696, 0, 'en', 'core/base/tabs', 'detail', 'Detail', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(697, 0, 'en', 'core/base/tabs', 'file', 'Files', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(698, 0, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(699, 0, 'en', 'core/base/tabs', 'revision', 'Revision History', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(700, 0, 'vi', 'core/base/base', 'yes', 'Có', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(701, 0, 'vi', 'core/base/base', 'no', 'Không', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(702, 0, 'vi', 'core/base/base', 'is_default', 'Mặc định?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(703, 0, 'vi', 'core/base/base', 'proc_close_disabled_error', 'Hàm proc_close() đã bị tắt. Vui lòng liên hệ nhà cung cấp hosting để mở hàm này. Hoặc có thể thêm vào .env: CAN_EXECUTE_COMMAND=false để tắt tính năng này.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(704, 0, 'vi', 'core/base/base', 'add_image', 'Thêm ảnh', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(705, 0, 'vi', 'core/base/base', 'change_image', 'Đổi ảnh', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(706, 0, 'vi', 'core/base/base', 'delete_image', 'Xóa ảnh', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(707, 0, 'vi', 'core/base/base', 'email_template.date_time', 'Ngày giờ hiện tại', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(708, 0, 'vi', 'core/base/base', 'email_template.date_year', 'Năm hiện tại', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(709, 0, 'vi', 'core/base/base', 'email_template.footer', 'Mẫu chân trang email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(710, 0, 'vi', 'core/base/base', 'email_template.header', 'Mẫu đầu trang email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(711, 0, 'vi', 'core/base/base', 'email_template.site_admin_email', 'Email quản trị viên', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(712, 0, 'vi', 'core/base/base', 'email_template.site_logo', 'Logo của trang', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(713, 0, 'vi', 'core/base/base', 'email_template.site_title', 'Tiêu đề trang', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(714, 0, 'vi', 'core/base/base', 'email_template.site_url', 'URL trang', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(715, 0, 'vi', 'core/base/base', 'image', 'Hình ảnh', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(716, 0, 'vi', 'core/base/base', 'preview_image', 'Ảnh xem trước', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(717, 0, 'vi', 'core/base/base', 'select_image', 'Chọn ảnh', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(718, 0, 'vi', 'core/base/base', 'to_add_more_image', 'để thêm hình ảnh', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(719, 0, 'vi', 'core/base/base', 'using_button', 'Sử dụng nút', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(720, 0, 'vi', 'core/base/cache', 'cache_management', 'Quản lý bộ nhớ đệm', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(721, 0, 'vi', 'core/base/cache', 'cache_commands', 'Các lệnh xoá bộ nhớ đệm cơ bản', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(722, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.title', 'Xóa tất cả bộ đệm hiện có của ứng dụng', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(723, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.description', 'Xóa các bộ nhớ đệm của ứng dụng: cơ sở dữ liệu, nội dung tĩnh... Chạy lệnh này khi bạn thử cập nhật dữ liệu nhưng giao diện không thay đổi', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(724, 0, 'vi', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Bộ đệm đã được xóa', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(725, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Làm mới bộ đệm giao diện', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(726, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Làm mới bộ đệm giao diện giúp phần giao diện luôn mới nhất', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(727, 0, 'vi', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Bộ đệm giao diện đã được làm mới', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(728, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.title', 'Xóa bộ nhớ đệm của phần cấu hình', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(729, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.description', 'Bạn cần làm mới bộ đệm cấu hình khi bạn tạo ra sự thay đổi nào đó ở môi trường thành phẩm.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(730, 0, 'vi', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Bộ đệm cấu hình đã được xóa', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(731, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.title', 'Xoá cache đường dẫn', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(732, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.description', 'Cần thực hiện thao tác này khi thấy không xuất hiện đường dẫn mới.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(733, 0, 'vi', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'Bộ đệm điều hướng đã bị xóa', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(734, 0, 'vi', 'core/base/cache', 'commands.clear_log.description', 'Xoá lịch sử lỗi', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(735, 0, 'vi', 'core/base/cache', 'commands.clear_log.success_msg', 'Lịch sử lỗi đã được làm sạch', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(736, 0, 'vi', 'core/base/cache', 'commands.clear_log.title', 'Xoá lịch sử lỗi', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(737, 0, 'vi', 'core/base/enums', 'statuses.draft', 'Bản nháp', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(738, 0, 'vi', 'core/base/enums', 'statuses.pending', 'Đang chờ xử lý', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(739, 0, 'vi', 'core/base/enums', 'statuses.published', 'Đã xuất bản', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(740, 0, 'vi', 'core/base/errors', '401_title', 'Bạn không có quyền truy cập trang này', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(741, 0, 'vi', 'core/base/errors', '401_msg', '<li>Bạn không được cấp quyền truy cập bởi quản trị viên.</li>\n	                <li>Bạn sử dụng sai loại tài khoản.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(742, 0, 'vi', 'core/base/errors', '404_title', 'Không tìm thấy trang yêu cầu', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(743, 0, 'vi', 'core/base/errors', '404_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(744, 0, 'vi', 'core/base/errors', '500_title', 'Không thể tải trang', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(745, 0, 'vi', 'core/base/errors', '500_msg', '<li>Trang bạn yêu cầu không tồn tại.</li>\n	                <li>Liên kết bạn vừa nhấn không còn được sử dụng.</li>\n	                <li>Trang này có thể đã được chuyển sang vị trí khác.</li>\n	                <li>Có thể có lỗi xảy ra.</li>\n	                <li>Bạn không được cấp quyền để có thể truy cập trang này</li>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(746, 0, 'vi', 'core/base/errors', 'reasons', 'Điều này có thể xảy ra vì nhiều lý do.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(747, 0, 'vi', 'core/base/errors', 'try_again', 'Vui lòng thử lại trong vài phút, hoặc quay trở lại trang chủ bằng cách <a href=\"http://cms.local/admin\"> nhấn vào đây </a>.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(748, 0, 'vi', 'core/base/errors', 'not_found', 'Không tìm thấy', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(749, 0, 'vi', 'core/base/forms', 'choose_image', 'Chọn ảnh', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(750, 0, 'vi', 'core/base/forms', 'actions', 'Tác vụ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(751, 0, 'vi', 'core/base/forms', 'save', 'Lưu', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(752, 0, 'vi', 'core/base/forms', 'save_and_continue', 'Lưu & chỉnh sửa', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(753, 0, 'vi', 'core/base/forms', 'image', 'Hình ảnh', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(754, 0, 'vi', 'core/base/forms', 'image_placeholder', 'Chèn đường dẫn hình ảnh hoặc nhấn nút để chọn hình', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(755, 0, 'vi', 'core/base/forms', 'create', 'Tạo mới', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(756, 0, 'vi', 'core/base/forms', 'edit', 'Sửa', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(757, 0, 'vi', 'core/base/forms', 'permalink', 'Đường dẫn', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(758, 0, 'vi', 'core/base/forms', 'ok', 'OK', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(759, 0, 'vi', 'core/base/forms', 'cancel', 'Hủy bỏ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(760, 0, 'vi', 'core/base/forms', 'character_remain', 'kí tự còn lại', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(761, 0, 'vi', 'core/base/forms', 'template', 'Template', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(762, 0, 'vi', 'core/base/forms', 'choose_file', 'Chọn tập tin', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(763, 0, 'vi', 'core/base/forms', 'file', 'Tập tin', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(764, 0, 'vi', 'core/base/forms', 'content', 'Nội dung', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(765, 0, 'vi', 'core/base/forms', 'description', 'Mô tả', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(766, 0, 'vi', 'core/base/forms', 'name', 'Tên', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(767, 0, 'vi', 'core/base/forms', 'name_placeholder', 'Nhập tên', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(768, 0, 'vi', 'core/base/forms', 'description_placeholder', 'Mô tả ngắn', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(769, 0, 'vi', 'core/base/forms', 'parent', 'Cha', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(770, 0, 'vi', 'core/base/forms', 'icon', 'Biểu tượng', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(771, 0, 'vi', 'core/base/forms', 'order_by', 'Sắp xếp', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(772, 0, 'vi', 'core/base/forms', 'order_by_placeholder', 'Sắp xếp', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(773, 0, 'vi', 'core/base/forms', 'slug', 'Slug', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(774, 0, 'vi', 'core/base/forms', 'is_featured', 'Nổi bật?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(775, 0, 'vi', 'core/base/forms', 'is_default', 'Mặc định?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(776, 0, 'vi', 'core/base/forms', 'icon_placeholder', 'Ví dụ: fa fa-home', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(777, 0, 'vi', 'core/base/forms', 'update', 'Cập nhật', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(778, 0, 'vi', 'core/base/forms', 'publish', 'Xuất bản', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(779, 0, 'vi', 'core/base/forms', 'remove_image', 'Xoá ảnh', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(780, 0, 'vi', 'core/base/forms', 'add', 'Thêm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(781, 0, 'vi', 'core/base/forms', 'add_short_code', 'Thêm shortcode', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(782, 0, 'vi', 'core/base/forms', 'alias', 'Mã thay thế', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(783, 0, 'vi', 'core/base/forms', 'alias_placeholder', 'Mã thay thế', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(784, 0, 'vi', 'core/base/forms', 'basic_information', 'Thông tin cơ bản', '2022-04-20 19:52:52', '2022-04-20 19:53:11');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(785, 0, 'vi', 'core/base/forms', 'link', 'Liên kết', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(786, 0, 'vi', 'core/base/forms', 'order', 'Thứ tự', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(787, 0, 'vi', 'core/base/forms', 'short_code', 'Shortcode', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(788, 0, 'vi', 'core/base/forms', 'title', 'Tiêu đề', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(789, 0, 'vi', 'core/base/forms', 'value', 'Giá trị', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(790, 0, 'vi', 'core/base/forms', 'show_hide_editor', 'Ẩn/Hiện trình soạn thảo', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(791, 0, 'vi', 'core/base/forms', 'basic_info_title', 'Thông tin cơ bản', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(792, 0, 'vi', 'core/base/forms', 'remove_file', 'Xóa tập tin', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(793, 0, 'vi', 'core/base/layouts', 'platform_admin', 'Quản trị hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(794, 0, 'vi', 'core/base/layouts', 'dashboard', 'Bảng điều khiển', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(795, 0, 'vi', 'core/base/layouts', 'widgets', 'Tiện ích', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(796, 0, 'vi', 'core/base/layouts', 'plugins', 'Tiện ích mở rộng', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(797, 0, 'vi', 'core/base/layouts', 'settings', 'Cài đặt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(798, 0, 'vi', 'core/base/layouts', 'setting_general', 'Cơ bản', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(799, 0, 'vi', 'core/base/layouts', 'system_information', 'Thông tin hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(800, 0, 'vi', 'core/base/layouts', 'theme', 'Giao diện', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(801, 0, 'vi', 'core/base/layouts', 'copyright', 'Bản quyền :year &copy; :company. Phiên bản: <span>:version</span>', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(802, 0, 'vi', 'core/base/layouts', 'profile', 'Thông tin cá nhân', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(803, 0, 'vi', 'core/base/layouts', 'logout', 'Đăng xuất', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(804, 0, 'vi', 'core/base/layouts', 'no_search_result', 'Không có kết quả tìm kiếm, hãy thử lại với từ khóa khác.', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(805, 0, 'vi', 'core/base/layouts', 'home', 'Trang chủ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(806, 0, 'vi', 'core/base/layouts', 'search', 'Tìm kiếm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(807, 0, 'vi', 'core/base/layouts', 'add_new', 'Thêm mới', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(808, 0, 'vi', 'core/base/layouts', 'n_a', 'N/A', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(809, 0, 'vi', 'core/base/layouts', 'page_loaded_time', 'Trang tải xong trong', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(810, 0, 'vi', 'core/base/layouts', 'view_website', 'Xem trang ngoài', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(811, 0, 'vi', 'core/base/layouts', 'setting_email', 'Email', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(812, 0, 'vi', 'core/base/notices', 'create_success_message', 'Tạo thành công', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(813, 0, 'vi', 'core/base/notices', 'update_success_message', 'Cập nhật thành công', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(814, 0, 'vi', 'core/base/notices', 'delete_success_message', 'Xóa thành công', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(815, 0, 'vi', 'core/base/notices', 'success_header', 'Thành công!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(816, 0, 'vi', 'core/base/notices', 'error_header', 'Lỗi!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(817, 0, 'vi', 'core/base/notices', 'no_select', 'Chọn ít nhất 1 trường để thực hiện hành động này!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(818, 0, 'vi', 'core/base/notices', 'processing_request', 'Hệ thống đang xử lý yêu cầu.', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(819, 0, 'vi', 'core/base/notices', 'error', 'Lỗi!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(820, 0, 'vi', 'core/base/notices', 'success', 'Thành công!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(821, 0, 'vi', 'core/base/notices', 'info', 'Thông tin!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(822, 0, 'vi', 'core/base/notices', 'enum.validate_message', 'Giá trị của :attribute không hợp lệ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(823, 0, 'vi', 'core/base/system', 'no_select', 'Hãy chọn ít nhất 1 trường để thực hiện hành động này!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(824, 0, 'vi', 'core/base/system', 'cannot_find_user', 'Không thể tải được thông tin người dùng', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(825, 0, 'vi', 'core/base/system', 'supper_revoked', 'Quyền quản trị viên cao nhất đã được gỡ bỏ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(826, 0, 'vi', 'core/base/system', 'cannot_revoke_yourself', 'Không thể gỡ bỏ quyền quản trị cấp cao của chính bạn!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(827, 0, 'vi', 'core/base/system', 'cant_remove_supper', 'Bạn không có quyền xóa quản trị viên cấp cao', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(828, 0, 'vi', 'core/base/system', 'cant_find_user_with_email', 'Không thể tìm thấy người dùng với email này', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(829, 0, 'vi', 'core/base/system', 'supper_granted', 'Quyền quản trị cao nhất đã được gán', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(830, 0, 'vi', 'core/base/system', 'delete_log_success', 'Xóa tập tin log thành công!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(831, 0, 'vi', 'core/base/system', 'get_member_success', 'Hiển thị danh sách thành viên thành công', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(832, 0, 'vi', 'core/base/system', 'error_occur', 'Có lỗi dưới đây', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(833, 0, 'vi', 'core/base/system', 'role_and_permission', 'Phân quyền hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(834, 0, 'vi', 'core/base/system', 'role_and_permission_description', 'Quản lý những phân quyền trong hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(835, 0, 'vi', 'core/base/system', 'user.list_super', 'Danh sách quản trị viên cấp cao', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(836, 0, 'vi', 'core/base/system', 'user.username', 'Tên đăng nhập', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(837, 0, 'vi', 'core/base/system', 'user.email', 'Email', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(838, 0, 'vi', 'core/base/system', 'user.last_login', 'Đăng nhập lần cuối	', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(839, 0, 'vi', 'core/base/system', 'user.add_user', 'Thêm quản trị viên cấp cao', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(840, 0, 'vi', 'core/base/system', 'user.cancel', 'Hủy bỏ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(841, 0, 'vi', 'core/base/system', 'user.create', 'Thêm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(842, 0, 'vi', 'core/base/system', 'options.features', 'Kiểm soát truy cập các tính năng', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(843, 0, 'vi', 'core/base/system', 'options.feature_description', 'Bật/tắt các tính năng.', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(844, 0, 'vi', 'core/base/system', 'options.manage_super', 'Quản lý quản trị viên cấp cao', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(845, 0, 'vi', 'core/base/system', 'options.manage_super_description', 'Thêm/xóa quản trị viên cấp cao', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(846, 0, 'vi', 'core/base/system', 'options.info', 'Thông tin hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(847, 0, 'vi', 'core/base/system', 'options.info_description', 'Những thông tin về cấu hình hiện tại của hệ thống.', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(848, 0, 'vi', 'core/base/system', 'info.title', 'Thông tin hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(849, 0, 'vi', 'core/base/system', 'info.cache', 'Bộ nhớ đệm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(850, 0, 'vi', 'core/base/system', 'info.environment', 'Môi trường', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(851, 0, 'vi', 'core/base/system', 'info.locale', 'Ngôn ngữ hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(852, 0, 'vi', 'core/base/system', 'user_management', 'Quản lý thành viên', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(853, 0, 'vi', 'core/base/system', 'user_management_description', 'Quản lý người dùng trong hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(854, 0, 'vi', 'core/base/system', 'app_size', 'Kích thước ứng dụng', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(855, 0, 'vi', 'core/base/system', 'cache_dir_writable', 'Có thể ghi bộ nhớ đệm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(856, 0, 'vi', 'core/base/system', 'cache_driver', 'Loại lưu trữ bộ nhớ đệm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(857, 0, 'vi', 'core/base/system', 'copy_report', 'Sao chép báo cáo', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(858, 0, 'vi', 'core/base/system', 'curl_ext', 'CURL Ext', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(859, 0, 'vi', 'core/base/system', 'database', 'Hệ thống dữ liệu', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(860, 0, 'vi', 'core/base/system', 'debug_mode', 'Chế độ sửa lỗi', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(861, 0, 'vi', 'core/base/system', 'dependency_name', 'Tên gói', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(862, 0, 'vi', 'core/base/system', 'exif_ext', 'Exif Ext', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(863, 0, 'vi', 'core/base/system', 'extra_information', 'Thông tin mở rộng', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(864, 0, 'vi', 'core/base/system', 'extra_stats', 'Thống kê thêm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(865, 0, 'vi', 'core/base/system', 'file_info_ext', 'File info Ext', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(866, 0, 'vi', 'core/base/system', 'framework_version', 'Phiên bản framework', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(867, 0, 'vi', 'core/base/system', 'get_system_report', 'Lấy thông tin hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(868, 0, 'vi', 'core/base/system', 'installed_packages', 'Các gói đã cài đặt và phiên bản', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(869, 0, 'vi', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(870, 0, 'vi', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(871, 0, 'vi', 'core/base/system', 'package_name', 'Tên gói', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(872, 0, 'vi', 'core/base/system', 'pdo_ext', 'PDO Ext', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(873, 0, 'vi', 'core/base/system', 'php_version', 'Phiên bản PHP', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(874, 0, 'vi', 'core/base/system', 'report_description', 'Vui lòng chia sẻ thông tin này nhằm mục đích điều tra nguyên nhân gây lỗi', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(875, 0, 'vi', 'core/base/system', 'server_environment', 'Môi trường máy chủ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(876, 0, 'vi', 'core/base/system', 'server_os', 'Hệ điều hành của máy chủ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(877, 0, 'vi', 'core/base/system', 'server_software', 'Phần mềm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(878, 0, 'vi', 'core/base/system', 'session_driver', 'Loại lưu trữ phiên làm việc', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(879, 0, 'vi', 'core/base/system', 'ssl_installed', 'Đã cài đặt chứng chỉ SSL', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(880, 0, 'vi', 'core/base/system', 'storage_dir_writable', 'Có thể lưu trữ dữ liệu tạm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(881, 0, 'vi', 'core/base/system', 'system_environment', 'Môi trường hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(882, 0, 'vi', 'core/base/system', 'timezone', 'Múi giờ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(883, 0, 'vi', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(884, 0, 'vi', 'core/base/system', 'version', 'Phiên bản', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(885, 0, 'vi', 'core/base/system', 'cms_version', 'Phiên bản CMS', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(886, 0, 'vi', 'core/base/system', 'queue_connection', 'Queue Connection', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(887, 0, 'vi', 'core/base/system', 'disabled_in_demo_mode', 'Bạn không thể thực hiện hành động này ở chế độ demo!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(888, 0, 'vi', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(889, 0, 'vi', 'core/base/system', 'php_version_error', 'Phiên bản PHP phải >= :version', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(890, 0, 'vi', 'core/base/system', 'updater', 'Nâng cấp hệ thống', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(891, 0, 'vi', 'core/base/tables', 'id', 'ID', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(892, 0, 'vi', 'core/base/tables', 'name', 'Tên', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(893, 0, 'vi', 'core/base/tables', 'order_by', 'Thứ tự', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(894, 0, 'vi', 'core/base/tables', 'status', 'Trạng thái', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(895, 0, 'vi', 'core/base/tables', 'created_at', 'Ngày tạo', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(896, 0, 'vi', 'core/base/tables', 'updated_at', 'Ngày cập nhật', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(897, 0, 'vi', 'core/base/tables', 'operations', 'Tác vụ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(898, 0, 'vi', 'core/base/tables', 'url', 'URL', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(899, 0, 'vi', 'core/base/tables', 'author', 'Người tạo', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(900, 0, 'vi', 'core/base/tables', 'column', 'Cột', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(901, 0, 'vi', 'core/base/tables', 'origin', 'Bản cũ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(902, 0, 'vi', 'core/base/tables', 'after_change', 'Sau khi thay đổi', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(903, 0, 'vi', 'core/base/tables', 'notes', 'Ghi chú', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(904, 0, 'vi', 'core/base/tables', 'activated', 'kích hoạt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(905, 0, 'vi', 'core/base/tables', 'browser', 'Trình duyệt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(906, 0, 'vi', 'core/base/tables', 'deactivated', 'hủy kích hoạt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(907, 0, 'vi', 'core/base/tables', 'description', 'Mô tả', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(908, 0, 'vi', 'core/base/tables', 'session', 'Phiên', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(909, 0, 'vi', 'core/base/tables', 'views', 'Lượt xem', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(910, 0, 'vi', 'core/base/tables', 'restore', 'Khôi phục', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(911, 0, 'vi', 'core/base/tables', 'edit', 'Sửa', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(912, 0, 'vi', 'core/base/tables', 'delete', 'Xóa', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(913, 0, 'vi', 'core/base/tables', 'action', 'Hành động', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(914, 0, 'vi', 'core/base/tables', 'activate', 'Kích hoạt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(915, 0, 'vi', 'core/base/tables', 'add_new', 'Thêm mới', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(916, 0, 'vi', 'core/base/tables', 'all', 'Tất cả', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(917, 0, 'vi', 'core/base/tables', 'cancel', 'Hủy bỏ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(918, 0, 'vi', 'core/base/tables', 'confirm_delete', 'Xác nhận xóa', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(919, 0, 'vi', 'core/base/tables', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xóa bản ghi này?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(920, 0, 'vi', 'core/base/tables', 'csv', 'CSV', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(921, 0, 'vi', 'core/base/tables', 'deactivate', 'Hủy kích hoạt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(922, 0, 'vi', 'core/base/tables', 'delete_entry', 'Xóa bản ghi', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(923, 0, 'vi', 'core/base/tables', 'display', 'Hiển thị', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(924, 0, 'vi', 'core/base/tables', 'excel', 'Excel', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(925, 0, 'vi', 'core/base/tables', 'export', 'Xuất bản', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(926, 0, 'vi', 'core/base/tables', 'in', 'trong tổng số', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(927, 0, 'vi', 'core/base/tables', 'no_data', 'Không có dữ liệu để hiển thị', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(928, 0, 'vi', 'core/base/tables', 'no_record', 'Không có dữ liệu', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(929, 0, 'vi', 'core/base/tables', 'pdf', 'PDF', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(930, 0, 'vi', 'core/base/tables', 'print', 'In', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(931, 0, 'vi', 'core/base/tables', 'records', 'bản ghi', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(932, 0, 'vi', 'core/base/tables', 'reload', 'Tải lại', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(933, 0, 'vi', 'core/base/tables', 'reset', 'Làm mới', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(934, 0, 'vi', 'core/base/tables', 'save', 'Lưu', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(935, 0, 'vi', 'core/base/tables', 'show_from', 'Hiển thị từ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(936, 0, 'vi', 'core/base/tables', 'template', 'Giao diện', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(937, 0, 'vi', 'core/base/tables', 'to', 'đến', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(938, 0, 'vi', 'core/base/tables', 'view', 'Xem chi tiết', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(939, 0, 'vi', 'core/base/tables', 'email', 'Email', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(940, 0, 'vi', 'core/base/tables', 'image', 'Hình ảnh', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(941, 0, 'vi', 'core/base/tables', 'is_featured', 'Nổi bật', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(942, 0, 'vi', 'core/base/tables', 'last_login', 'Lần cuối đăng nhập', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(943, 0, 'vi', 'core/base/tables', 'order', 'Thứ tự', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(944, 0, 'vi', 'core/base/tables', 'shortcode', 'Shortcode', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(945, 0, 'vi', 'core/base/tables', 'slug', 'Slug', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(946, 0, 'vi', 'core/base/tables', 'title', 'Tiêu đề', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(947, 0, 'vi', 'core/base/tables', 'bulk_changes', 'Thay đổi hàng loạt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(948, 0, 'vi', 'core/base/tables', 'confirm_delete_many_msg', 'Bạn có chắc chắn muốn xóa những bản ghi này?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(949, 0, 'vi', 'core/base/tables', 'submit', 'Hoàn tất', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(950, 0, 'vi', 'core/base/tables', 'please_select_record', 'Vui lòng chọn ít nhất 1 bản ghi để thực hiện hành động này!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(951, 0, 'vi', 'core/base/tabs', 'detail', 'Chi tiết', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(952, 0, 'vi', 'core/base/tabs', 'file', 'Tập tin', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(953, 0, 'vi', 'core/base/tabs', 'record_note', 'Ghi chú', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(954, 0, 'vi', 'core/base/tabs', 'revision', 'Lịch sử thay đổi', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(955, 0, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(956, 0, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(957, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(958, 0, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(959, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(960, 0, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(961, 0, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(962, 0, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(963, 0, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(964, 0, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(965, 0, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(966, 0, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(967, 0, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(968, 0, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(969, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.today', 'Today', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(970, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.yesterday', 'Yesterday', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(971, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_week', 'This Week', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(972, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_7_days', 'Last 7 Days', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(973, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_month', 'This Month', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(974, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_30_days', 'Last 30 Days', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(975, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_year', 'This Year', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(976, 0, 'vi', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Hủy bỏ', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(977, 0, 'vi', 'core/dashboard/dashboard', 'collapse_expand', 'Mở rộng', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(978, 0, 'vi', 'core/dashboard/dashboard', 'confirm_hide', 'Bạn có chắc?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(979, 0, 'vi', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Vâng, ẩn tiện ích này', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(980, 0, 'vi', 'core/dashboard/dashboard', 'hide', 'Ẩn', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(981, 0, 'vi', 'core/dashboard/dashboard', 'hide_message', 'Bạn có chắc chắn muốn ẩn tiện ích này? Nó sẽ không được hiển thị trên trang chủ nữa!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(982, 0, 'vi', 'core/dashboard/dashboard', 'hide_success', 'Ẩn tiện ích thành công!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(983, 0, 'vi', 'core/dashboard/dashboard', 'manage_widgets', 'Quản lý tiện ích', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(984, 0, 'vi', 'core/dashboard/dashboard', 'reload', 'Làm mới', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(985, 0, 'vi', 'core/dashboard/dashboard', 'save_setting_success', 'Lưu tiện ích thành công', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(986, 0, 'vi', 'core/dashboard/dashboard', 'update_position_success', 'Cập nhật vị trí tiện ích thành công!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(987, 0, 'vi', 'core/dashboard/dashboard', 'widget_not_exists', 'Tiện ích này không tồn tại!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(988, 0, 'vi', 'core/dashboard/dashboard', 'fullscreen', 'Toàn màn hình', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(989, 0, 'vi', 'core/dashboard/dashboard', 'title', 'Trang quản trị', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(990, 0, 'en', 'core/media/media', 'filter', 'Filter', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(991, 0, 'en', 'core/media/media', 'everything', 'Everything', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(992, 0, 'en', 'core/media/media', 'image', 'Image', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(993, 0, 'en', 'core/media/media', 'video', 'Video', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(994, 0, 'en', 'core/media/media', 'document', 'Document', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(995, 0, 'en', 'core/media/media', 'view_in', 'View in', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(996, 0, 'en', 'core/media/media', 'all_media', 'All media', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(997, 0, 'en', 'core/media/media', 'trash', 'Trash', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(998, 0, 'en', 'core/media/media', 'recent', 'Recent', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(999, 0, 'en', 'core/media/media', 'favorites', 'Favorites', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1000, 0, 'en', 'core/media/media', 'upload', 'Upload', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1001, 0, 'en', 'core/media/media', 'create_folder', 'Create folder', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1002, 0, 'en', 'core/media/media', 'refresh', 'Refresh', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1003, 0, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1004, 0, 'en', 'core/media/media', 'search_file_and_folder', 'Search in current folder', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1005, 0, 'en', 'core/media/media', 'sort', 'Sort', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1006, 0, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1007, 0, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1008, 0, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1009, 0, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1010, 0, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1011, 0, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1012, 0, 'en', 'core/media/media', 'actions', 'Actions', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1013, 0, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1014, 0, 'en', 'core/media/media', 'insert', 'Insert', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1015, 0, 'en', 'core/media/media', 'folder_name', 'Folder name', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1016, 0, 'en', 'core/media/media', 'create', 'Create', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1017, 0, 'en', 'core/media/media', 'rename', 'Rename', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1018, 0, 'en', 'core/media/media', 'close', 'Close', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1019, 0, 'en', 'core/media/media', 'save_changes', 'Save changes', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1020, 0, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1021, 0, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1022, 0, 'en', 'core/media/media', 'confirm', 'Confirm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1023, 0, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1024, 0, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1025, 0, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1026, 0, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1027, 0, 'en', 'core/media/media', 'up_level', 'Up one level', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1028, 0, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1029, 0, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1030, 0, 'en', 'core/media/media', 'gallery', 'Media gallery', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1031, 0, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1032, 0, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1033, 0, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1034, 0, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1035, 0, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1036, 0, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1037, 0, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1038, 0, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1039, 0, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1040, 0, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1041, 0, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1042, 0, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1043, 0, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1044, 0, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1045, 0, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1046, 0, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1047, 0, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1048, 0, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1049, 0, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1050, 0, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1051, 0, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1052, 0, 'en', 'core/media/media', 'menu_name', 'Media', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1053, 0, 'en', 'core/media/media', 'add', 'Add media', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1054, 0, 'en', 'core/media/media', 'javascript.name', 'Name', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1055, 0, 'en', 'core/media/media', 'javascript.url', 'URL', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1056, 0, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1057, 0, 'en', 'core/media/media', 'javascript.size', 'Size', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1058, 0, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1059, 0, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1060, 0, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1061, 0, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1062, 0, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1063, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1064, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1065, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1066, 0, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1067, 0, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1068, 0, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1069, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1070, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1071, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1072, 0, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1073, 0, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1074, 0, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1075, 0, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1076, 0, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1077, 0, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1078, 0, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1079, 0, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1080, 0, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1081, 0, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1082, 0, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1083, 0, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1084, 0, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1085, 0, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1086, 0, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1087, 0, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1088, 0, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1089, 0, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1090, 0, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1091, 0, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1092, 0, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1093, 0, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1094, 0, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1095, 0, 'en', 'core/media/media', 'download_link', 'Download', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1096, 0, 'en', 'core/media/media', 'url', 'URL', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1097, 0, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1098, 0, 'en', 'core/media/media', 'downloading', 'Downloading...', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1099, 0, 'vi', 'core/media/media', 'filter', 'Lọc', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1100, 0, 'vi', 'core/media/media', 'everything', 'Tất cả', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1101, 0, 'vi', 'core/media/media', 'image', 'Hình ảnh', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1102, 0, 'vi', 'core/media/media', 'video', 'Phim', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1103, 0, 'vi', 'core/media/media', 'document', 'Tài liệu', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1104, 0, 'vi', 'core/media/media', 'view_in', 'Chế độ xem', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1105, 0, 'vi', 'core/media/media', 'all_media', 'Tất cả tập tin', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1106, 0, 'vi', 'core/media/media', 'trash', 'Thùng rác', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1107, 0, 'vi', 'core/media/media', 'recent', 'Gần đây', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1108, 0, 'vi', 'core/media/media', 'favorites', 'Được gắn dấu sao', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1109, 0, 'vi', 'core/media/media', 'upload', 'Tải lên', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1110, 0, 'vi', 'core/media/media', 'create_folder', 'Tạo thư mục', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1111, 0, 'vi', 'core/media/media', 'refresh', 'Làm mới', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1112, 0, 'vi', 'core/media/media', 'empty_trash', 'Dọn thùng rác', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1113, 0, 'vi', 'core/media/media', 'search_file_and_folder', 'Tìm kiếm tập tin và thư mục', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1114, 0, 'vi', 'core/media/media', 'sort', 'Sắp xếp', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1115, 0, 'vi', 'core/media/media', 'file_name_asc', 'Tên tập tin - ASC', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1116, 0, 'vi', 'core/media/media', 'file_name_desc', 'Tên tập tin - DESC', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1117, 0, 'vi', 'core/media/media', 'uploaded_date_asc', 'Ngày tải lên - ASC', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1118, 0, 'vi', 'core/media/media', 'uploaded_date_desc', 'Ngày tải lên - DESC', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1119, 0, 'vi', 'core/media/media', 'size_asc', 'Kích thước - ASC', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1120, 0, 'vi', 'core/media/media', 'size_desc', 'Kích thước - DESC', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1121, 0, 'vi', 'core/media/media', 'actions', 'Hành động', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1122, 0, 'vi', 'core/media/media', 'nothing_is_selected', 'Không có tập tin nào được chọn', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1123, 0, 'vi', 'core/media/media', 'insert', 'Chèn', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1124, 0, 'vi', 'core/media/media', 'folder_name', 'Tên thư mục', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1125, 0, 'vi', 'core/media/media', 'create', 'Tạo', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1126, 0, 'vi', 'core/media/media', 'rename', 'Đổi tên', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1127, 0, 'vi', 'core/media/media', 'close', 'Đóng', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1128, 0, 'vi', 'core/media/media', 'save_changes', 'Lưu thay đổi', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1129, 0, 'vi', 'core/media/media', 'move_to_trash', 'Đưa vào thùng rác', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1130, 0, 'vi', 'core/media/media', 'confirm_trash', 'Bạn có chắc chắn muốn bỏ những tập tin này vào thùng rác?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1131, 0, 'vi', 'core/media/media', 'confirm', 'Xác nhận', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1132, 0, 'vi', 'core/media/media', 'confirm_delete', 'Xóa tập tin', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1133, 0, 'vi', 'core/media/media', 'confirm_delete_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn xóa các tập tin này?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1134, 0, 'vi', 'core/media/media', 'empty_trash_title', 'Dọn sạch thùng rác', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1135, 0, 'vi', 'core/media/media', 'empty_trash_description', 'Hành động này không thể khôi phục. Bạn có chắc chắn muốn dọn sạch thùng rác?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1136, 0, 'vi', 'core/media/media', 'up_level', 'Quay lại một cấp', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1137, 0, 'vi', 'core/media/media', 'upload_progress', 'Tiến trình tải lên', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1138, 0, 'vi', 'core/media/media', 'folder_created', 'Tạo thư mục thành công!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1139, 0, 'vi', 'core/media/media', 'gallery', 'Thư viện tập tin', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1140, 0, 'vi', 'core/media/media', 'trash_error', 'Có lỗi khi xóa tập tin/thư mục', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1141, 0, 'vi', 'core/media/media', 'trash_success', 'Xóa tập tin/thư mục thành công!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1142, 0, 'vi', 'core/media/media', 'restore_error', 'Có lỗi trong quá trình khôi phục', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1143, 0, 'vi', 'core/media/media', 'restore_success', 'Khôi phục thành công!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1144, 0, 'vi', 'core/media/media', 'copy_success', 'Sao chép thành công!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1145, 0, 'vi', 'core/media/media', 'delete_success', 'Xóa thành công!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1146, 0, 'vi', 'core/media/media', 'favorite_success', 'Thêm dấu sao thành công!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1147, 0, 'vi', 'core/media/media', 'remove_favorite_success', 'Bỏ dấu sao thành công!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1148, 0, 'vi', 'core/media/media', 'rename_error', 'Có lỗi trong quá trình đổi tên', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1149, 0, 'vi', 'core/media/media', 'rename_success', 'Đổi tên thành công!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1150, 0, 'vi', 'core/media/media', 'invalid_action', 'Hành động không hợp lệ!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1151, 0, 'vi', 'core/media/media', 'file_not_exists', 'Tập tin không tồn tại!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1152, 0, 'vi', 'core/media/media', 'download_file_error', 'Có lỗi trong quá trình tải xuống tập tin!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1153, 0, 'vi', 'core/media/media', 'missing_zip_archive_extension', 'Hãy bật ZipArchive extension để tải tập tin!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1154, 0, 'vi', 'core/media/media', 'can_not_download_file', 'Không thể tải tập tin!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1155, 0, 'vi', 'core/media/media', 'invalid_request', 'Yêu cầu không hợp lệ!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1156, 0, 'vi', 'core/media/media', 'add_success', 'Thêm thành công!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1157, 0, 'vi', 'core/media/media', 'file_too_big', 'Tập tin quá lớn. Giới hạn tải lên là :size bytes', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1158, 0, 'vi', 'core/media/media', 'can_not_detect_file_type', 'Loại tập tin không hợp lệ hoặc không thể xác định loại tập tin!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1159, 0, 'vi', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1160, 0, 'vi', 'core/media/media', 'menu_name', 'Quản lý tập tin', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1161, 0, 'vi', 'core/media/media', 'add', 'Thêm tập tin', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1162, 0, 'vi', 'core/media/media', 'javascript.name', 'Tên', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1163, 0, 'vi', 'core/media/media', 'javascript.url', 'Đường dẫn', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1164, 0, 'vi', 'core/media/media', 'javascript.full_url', 'Đường dẫn tuyệt đối', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1165, 0, 'vi', 'core/media/media', 'javascript.size', 'Kích thước', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1166, 0, 'vi', 'core/media/media', 'javascript.mime_type', 'Loại', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1167, 0, 'vi', 'core/media/media', 'javascript.created_at', 'Được tải lên lúc', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1168, 0, 'vi', 'core/media/media', 'javascript.updated_at', 'Được chỉnh sửa lúc', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1169, 0, 'vi', 'core/media/media', 'javascript.nothing_selected', 'Bạn chưa chọn tập tin nào', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1170, 0, 'vi', 'core/media/media', 'javascript.visit_link', 'Mở liên kết', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1171, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1172, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.title', 'Bạn có thể kéo thả tập tin vào đây để tải lên', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1173, 0, 'vi', 'core/media/media', 'javascript.no_item.all_media.message', 'Hoặc có thể bấm nút Tải lên ở phía trên', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1174, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1175, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.title', 'Hiện tại không có tập tin nào trong thùng rác', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1176, 0, 'vi', 'core/media/media', 'javascript.no_item.trash.message', 'Xóa tập tin sẽ đem tập tin lưu vào thùng rác. Xóa tập tin trong thùng rác sẽ xóa vĩnh viễn.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1177, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1178, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.title', 'Bạn chưa đặt tập tin nào vào mục yêu thích', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1179, 0, 'vi', 'core/media/media', 'javascript.no_item.favorites.message', 'Thêm tập tin vào mục yêu thích để tìm kiếm chúng dễ dàng sau này.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1180, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1181, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.title', 'Bạn chưa mở tập tin nào.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1182, 0, 'vi', 'core/media/media', 'javascript.no_item.recent.message', 'Mục này hiển thị các tập tin bạn đã xem gần đây.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1183, 0, 'vi', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1184, 0, 'vi', 'core/media/media', 'javascript.no_item.default.title', 'Thư mục trống', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1185, 0, 'vi', 'core/media/media', 'javascript.no_item.default.message', 'Thư mục này chưa có tập tin nào', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1186, 0, 'vi', 'core/media/media', 'javascript.clipboard.success', 'Đường dẫn của các tập tin đã được sao chép vào clipboard', '2022-04-20 19:52:53', '2022-04-20 19:53:11');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1187, 0, 'vi', 'core/media/media', 'javascript.message.error_header', 'Lỗi', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1188, 0, 'vi', 'core/media/media', 'javascript.message.success_header', 'Thành công', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1189, 0, 'vi', 'core/media/media', 'javascript.download.error', 'Bạn chưa chọn tập tin nào hoặc tập tin này không cho phép tải về', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1190, 0, 'vi', 'core/media/media', 'javascript.actions_list.basic.preview', 'Xem trước', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1191, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Sao chép đường dẫn', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1192, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.rename', 'Đổi tên', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1193, 0, 'vi', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Nhân bản', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1194, 0, 'vi', 'core/media/media', 'javascript.actions_list.user.favorite', 'Yêu thích', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1195, 0, 'vi', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Xóa khỏi mục yêu thích', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1196, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.download', 'Tải xuống', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1197, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.trash', 'Chuyển vào thùng rác', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1198, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.delete', 'Xóa hoàn toàn', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1199, 0, 'vi', 'core/media/media', 'javascript.actions_list.other.restore', 'Khôi phục', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1200, 0, 'vi', 'core/media/media', 'empty_trash_success', 'Dọn sạch thùng rác thành công', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1201, 0, 'vi', 'core/media/media', 'name_invalid', 'Tên thư mục chứa ký tự không hợp lệ', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1202, 0, 'vi', 'core/media/media', 'path_invalid', 'Vui lòng cung cấp 1 đường dẫn hợp lệ', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1203, 0, 'vi', 'core/media/media', 'url_invalid', 'Vui lòng cung cấp 1 đường dẫn hợp lệ', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1204, 0, 'vi', 'core/media/media', 'download_explain', 'Mỗi URL trên 1 dòng', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1205, 0, 'vi', 'core/media/media', 'download_link', 'Tải xuống', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1206, 0, 'vi', 'core/media/media', 'downloading', 'Đang tải xuống', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1207, 0, 'en', 'core/setting/setting', 'title', 'Settings', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1208, 0, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1209, 0, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1210, 0, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1211, 0, 'en', 'core/setting/setting', 'general.title', 'General', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1212, 0, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1213, 0, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1214, 0, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1215, 0, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1216, 0, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1217, 0, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1218, 0, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1219, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1220, 0, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1221, 0, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1222, 0, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1223, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1224, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1225, 0, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1226, 0, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1227, 0, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1228, 0, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1229, 0, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1230, 0, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1231, 0, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1232, 0, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1233, 0, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1234, 0, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1235, 0, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1236, 0, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1237, 0, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1238, 0, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1239, 0, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1240, 0, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1241, 0, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1242, 0, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1243, 0, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1244, 0, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1245, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1246, 0, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1247, 0, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1248, 0, 'en', 'core/setting/setting', 'general.no', 'No', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1249, 0, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1250, 0, 'en', 'core/setting/setting', 'general.select', '— Select —', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1251, 0, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1252, 0, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1253, 0, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1254, 0, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1255, 0, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1256, 0, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1257, 0, 'en', 'core/setting/setting', 'email.content', 'Content', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1258, 0, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1259, 0, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1260, 0, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1261, 0, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1262, 0, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1263, 0, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1264, 0, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1265, 0, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1266, 0, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1267, 0, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1268, 0, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1269, 0, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1270, 0, 'en', 'core/setting/setting', 'email.port', 'Port', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1271, 0, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1272, 0, 'en', 'core/setting/setting', 'email.host', 'Host', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1273, 0, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1274, 0, 'en', 'core/setting/setting', 'email.username', 'Username', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1275, 0, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1276, 0, 'en', 'core/setting/setting', 'email.password', 'Password', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1277, 0, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1278, 0, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1279, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1280, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1281, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1282, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1283, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1284, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1285, 0, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1286, 0, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1287, 0, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1288, 0, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1289, 0, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1290, 0, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1291, 0, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1292, 0, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1293, 0, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1294, 0, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1295, 0, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1296, 0, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1297, 0, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1298, 0, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1299, 0, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1300, 0, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1301, 0, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1302, 0, 'en', 'core/setting/setting', 'email.default', 'Default', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1303, 0, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1304, 0, 'en', 'core/setting/setting', 'media.title', 'Media', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1305, 0, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1306, 0, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1307, 0, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1308, 0, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1309, 0, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1310, 0, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1311, 0, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1312, 0, 'en', 'core/setting/setting', 'media.aws_endpoint', 'AWS Endpoint (Optional)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1313, 0, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1314, 0, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1315, 0, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1316, 0, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1317, 0, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1318, 0, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1319, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1320, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1321, 0, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1322, 0, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1323, 0, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1324, 0, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1325, 0, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1326, 0, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1327, 0, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1328, 0, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1329, 0, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1330, 0, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1331, 0, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1332, 0, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1333, 0, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1334, 0, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1335, 0, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1336, 0, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1337, 0, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1338, 0, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1339, 0, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1340, 0, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1341, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1342, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1343, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1344, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1345, 0, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1346, 0, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1347, 0, 'en', 'core/setting/setting', 'media.bunnycdn_hostname', 'Hostname', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1348, 0, 'en', 'core/setting/setting', 'media.bunnycdn_zone', 'Zone Name (The name of your storage zone)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1349, 0, 'en', 'core/setting/setting', 'media.bunnycdn_key', 'FTP & API Access Password (The storage zone API Access Password)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1350, 0, 'en', 'core/setting/setting', 'media.bunnycdn_region', 'Region (The storage zone region)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1351, 0, 'en', 'core/setting/setting', 'media.optional', 'Optional', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1352, 0, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1353, 0, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1354, 0, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1355, 0, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1356, 0, 'en', 'core/setting/setting', 'template', 'Template', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1357, 0, 'en', 'core/setting/setting', 'description', 'Description', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1358, 0, 'en', 'core/setting/setting', 'enable', 'Enable', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1359, 0, 'en', 'core/setting/setting', 'send', 'Send', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1360, 0, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1361, 0, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1362, 0, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1363, 0, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1364, 0, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1365, 0, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1366, 0, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1367, 0, 'en', 'core/setting/setting', 'saving', 'Saving...', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1368, 0, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1369, 0, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1370, 0, 'vi', 'core/setting/setting', 'title', 'Cài đặt', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1371, 0, 'vi', 'core/setting/setting', 'general.theme', 'Giao diện', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1372, 0, 'vi', 'core/setting/setting', 'general.description', 'Cấu hình những thông tin cài đặt website.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1373, 0, 'vi', 'core/setting/setting', 'general.title', 'Thông tin chung', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1374, 0, 'vi', 'core/setting/setting', 'general.general_block', 'Thông tin chung', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1375, 0, 'vi', 'core/setting/setting', 'general.site_title', 'Tên trang', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1376, 0, 'vi', 'core/setting/setting', 'general.admin_email', 'Email quản trị viên', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1377, 0, 'vi', 'core/setting/setting', 'general.seo_block', 'Cấu hình SEO', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1378, 0, 'vi', 'core/setting/setting', 'general.seo_title', 'Tiêu đề SEO', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1379, 0, 'vi', 'core/setting/setting', 'general.seo_description', 'Mô tả SEO', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1380, 0, 'vi', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1381, 0, 'vi', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1382, 0, 'vi', 'core/setting/setting', 'general.placeholder.site_title', 'Tên trang (tối đa 120 kí tự)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1383, 0, 'vi', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1384, 0, 'vi', 'core/setting/setting', 'general.placeholder.google_analytics', 'Ví dụ: UA-42767940-2', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1385, 0, 'vi', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Mã xác nhận trang web dùng cho Google Webmaster Tool', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1386, 0, 'vi', 'core/setting/setting', 'general.placeholder.seo_title', 'Tiêu đề SEO (tối đa 120 kí tự)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1387, 0, 'vi', 'core/setting/setting', 'general.placeholder.seo_description', 'Mô tả SEO (tối đa 120 kí tự)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1388, 0, 'vi', 'core/setting/setting', 'general.enable_change_admin_theme', 'Cho phép thay đổi giao diện quản trị?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1389, 0, 'vi', 'core/setting/setting', 'general.enable', 'Bật', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1390, 0, 'vi', 'core/setting/setting', 'general.disable', 'Tắt', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1391, 0, 'vi', 'core/setting/setting', 'general.enable_cache', 'Bật bộ nhớ đệm?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1392, 0, 'vi', 'core/setting/setting', 'general.cache_time', 'Thời gian lưu bộ nhớ đệm (phút)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1393, 0, 'vi', 'core/setting/setting', 'general.cache_time_site_map', 'Thời gian lưu sơ đồ trang trong bộ nhớ đệm', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1394, 0, 'vi', 'core/setting/setting', 'general.admin_logo', 'Logo trang quản trị', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1395, 0, 'vi', 'core/setting/setting', 'general.admin_title', 'Tiêu đề trang quản trị', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1396, 0, 'vi', 'core/setting/setting', 'general.admin_title_placeholder', 'Tiêu đề hiển thị trên thẻ trình duyệt', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1397, 0, 'vi', 'core/setting/setting', 'general.rich_editor', 'Bộ soạn thảo văn bản', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1398, 0, 'vi', 'core/setting/setting', 'general.cache_block', 'Bộ nhớ đệm', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1399, 0, 'vi', 'core/setting/setting', 'general.yes', 'Bật', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1400, 0, 'vi', 'core/setting/setting', 'general.no', 'Tắt', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1401, 0, 'vi', 'core/setting/setting', 'general.locale', 'Ngôn ngữ', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1402, 0, 'vi', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1403, 0, 'vi', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1404, 0, 'vi', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1405, 0, 'vi', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1406, 0, 'vi', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1407, 0, 'vi', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1408, 0, 'vi', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1409, 0, 'vi', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1410, 0, 'vi', 'core/setting/setting', 'general.locale_direction', 'Hướng chữ viết', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1411, 0, 'vi', 'core/setting/setting', 'general.select', '-- Lựa chọn --', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1412, 0, 'vi', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1413, 0, 'vi', 'core/setting/setting', 'general.show_on_front', 'Thiết lập trang chủ', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1414, 0, 'vi', 'core/setting/setting', 'general.show_site_name', 'Hiển thị tên trang web sau tiêu đề trang, tách biệt bằng \"-\"?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1415, 0, 'vi', 'core/setting/setting', 'general.time_zone', 'Múi giờ', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1416, 0, 'vi', 'core/setting/setting', 'general.webmaster_tools_description', 'Công cụ quản trị trang web của Google (GWT) là phần mềm miễn phí giúp bạn quản lý khía cạnh kỹ thuật của trang web của mình', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1417, 0, 'vi', 'core/setting/setting', 'email.subject', 'Tiêu đề', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1418, 0, 'vi', 'core/setting/setting', 'email.content', 'Nội dung', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1419, 0, 'vi', 'core/setting/setting', 'email.title', 'Cấu hình email template', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1420, 0, 'vi', 'core/setting/setting', 'email.description', 'Cấu trúc file template sử dụng HTML và các biến trong hệ thống.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1421, 0, 'vi', 'core/setting/setting', 'email.reset_to_default', 'Khôi phục về mặc định', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1422, 0, 'vi', 'core/setting/setting', 'email.back', 'Trở lại trang cài đặt', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1423, 0, 'vi', 'core/setting/setting', 'email.reset_success', 'Khôi phục mặc định thành công', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1424, 0, 'vi', 'core/setting/setting', 'email.confirm_reset', 'Xác nhận khôi phục mặc định?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1425, 0, 'vi', 'core/setting/setting', 'email.confirm_message', 'Bạn có chắc chắn muốn khôi phục về bản mặc định?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1426, 0, 'vi', 'core/setting/setting', 'email.continue', 'Tiếp tục', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1427, 0, 'vi', 'core/setting/setting', 'email.sender_name', 'Tên người gửi', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1428, 0, 'vi', 'core/setting/setting', 'email.sender_name_placeholder', 'Tên', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1429, 0, 'vi', 'core/setting/setting', 'email.sender_email', 'Email của người gửi', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1430, 0, 'vi', 'core/setting/setting', 'email.mailer', 'Loại', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1431, 0, 'vi', 'core/setting/setting', 'email.port', 'Cổng', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1432, 0, 'vi', 'core/setting/setting', 'email.port_placeholder', 'Ví dụ: 587', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1433, 0, 'vi', 'core/setting/setting', 'email.host', 'Máy chủ', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1434, 0, 'vi', 'core/setting/setting', 'email.host_placeholder', 'Ví dụ: smtp.gmail.com', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1435, 0, 'vi', 'core/setting/setting', 'email.username', 'Tên đăng nhập', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1436, 0, 'vi', 'core/setting/setting', 'email.username_placeholder', 'Tên đăng nhập vào máy chủ mail', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1437, 0, 'vi', 'core/setting/setting', 'email.password', 'Mật khẩu', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1438, 0, 'vi', 'core/setting/setting', 'email.password_placeholder', 'Mật khẩu đăng nhập vào máy chủ mail', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1439, 0, 'vi', 'core/setting/setting', 'email.encryption', 'Mã hoá', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1440, 0, 'vi', 'core/setting/setting', 'email.mail_gun_domain', 'Tên miền', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1441, 0, 'vi', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Tên miền', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1442, 0, 'vi', 'core/setting/setting', 'email.mail_gun_secret', 'Chuỗi bí mật', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1443, 0, 'vi', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Chuỗi bí mật', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1444, 0, 'vi', 'core/setting/setting', 'email.template_title', 'Mẫu giao diện email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1445, 0, 'vi', 'core/setting/setting', 'email.template_description', 'Giao diện mặc định cho tất cả email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1446, 0, 'vi', 'core/setting/setting', 'email.template_header', 'Mẫu cho phần trên của email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1447, 0, 'vi', 'core/setting/setting', 'email.template_header_description', 'Phần trên của tất cả email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1448, 0, 'vi', 'core/setting/setting', 'email.template_footer', 'Mẫu cho phần dưới của email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1449, 0, 'vi', 'core/setting/setting', 'email.template_footer_description', 'Phần dưới của tất cả email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1450, 0, 'vi', 'core/setting/setting', 'email.default', 'Mặc định', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1451, 0, 'vi', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1452, 0, 'vi', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1453, 0, 'vi', 'core/setting/setting', 'email.postmark_token', 'Token', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1454, 0, 'vi', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1455, 0, 'vi', 'core/setting/setting', 'email.encryption_placeholder', 'Kiểu mã hóa: ssl hoặc tls', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1456, 0, 'vi', 'core/setting/setting', 'email.log_channel', 'Phương thức log', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1457, 0, 'vi', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1458, 0, 'vi', 'core/setting/setting', 'email.ses_key', 'Key', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1459, 0, 'vi', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1460, 0, 'vi', 'core/setting/setting', 'email.ses_region', 'Region', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1461, 0, 'vi', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1462, 0, 'vi', 'core/setting/setting', 'email.ses_secret', 'Secret', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1463, 0, 'vi', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1464, 0, 'vi', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Sử dụng job queue để gửi email (Trước tiên phải thiết lập Queue https://laravel.com/docs/queues#supervisor-configuration)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1465, 0, 'vi', 'core/setting/setting', 'save_settings', 'Lưu cài đặt', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1466, 0, 'vi', 'core/setting/setting', 'template', 'Mẫu', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1467, 0, 'vi', 'core/setting/setting', 'description', 'Mô tả', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1468, 0, 'vi', 'core/setting/setting', 'enable', 'Bật', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1469, 0, 'vi', 'core/setting/setting', 'test_send_mail', 'Gửi thử nghiệm', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1470, 0, 'vi', 'core/setting/setting', 'email_setting_title', 'Cấu hình email', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1471, 0, 'vi', 'core/setting/setting', 'field_type_not_exists', 'Loại field này không được hỗ trợ', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1472, 0, 'vi', 'core/setting/setting', 'test_email_description', 'Để gửi email thử nghiệm, hãy đảm bảo rằng bạn đã cập nhật cấu hình để gửi thư!', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1473, 0, 'vi', 'core/setting/setting', 'test_email_input_placeholder', 'Nhập email mà bạn muốn gửi email thử nghiệm.', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1474, 0, 'vi', 'core/setting/setting', 'test_email_modal_title', 'Gửi một email thử nghiệm', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1475, 0, 'vi', 'core/setting/setting', 'test_email_send_success', 'Gửi email thành công!', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1476, 0, 'vi', 'core/setting/setting', 'send', 'Gửi', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1477, 0, 'vi', 'core/setting/setting', 'license.buyer', 'Tên đăng nhập', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1478, 0, 'vi', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1479, 0, 'vi', 'core/setting/setting', 'locale_direction_ltr', 'Trái sang phải', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1480, 0, 'vi', 'core/setting/setting', 'locale_direction_rtl', 'Phải sang trái', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1481, 0, 'vi', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1482, 0, 'vi', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1483, 0, 'vi', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1484, 0, 'vi', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1485, 0, 'vi', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1486, 0, 'vi', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1487, 0, 'vi', 'core/setting/setting', 'media.chunk_size_placeholder', 'Mặc định: 1048576 ~ 1MB', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1488, 0, 'vi', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1489, 0, 'vi', 'core/setting/setting', 'media.description', 'Cài đặt cho media', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1490, 0, 'vi', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1491, 0, 'vi', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Bật DO Spaces CDN?', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1492, 0, 'vi', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1493, 0, 'vi', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1494, 0, 'vi', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1495, 0, 'vi', 'core/setting/setting', 'media.driver', 'Driver', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1496, 0, 'vi', 'core/setting/setting', 'media.enable_chunk', 'Bật chunk size upload?', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1497, 0, 'vi', 'core/setting/setting', 'media.enable_watermark', 'Bật watermark?', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1498, 0, 'vi', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1499, 0, 'vi', 'core/setting/setting', 'media.max_file_size_placeholder', 'Mặc định: 1048576 ~ 1GB', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1500, 0, 'vi', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1501, 0, 'vi', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://ten-mien-cua-ban.com', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1502, 0, 'vi', 'core/setting/setting', 'media.title', 'Media', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1503, 0, 'vi', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1504, 0, 'vi', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Mặc định: 70 (%)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1505, 0, 'vi', 'core/setting/setting', 'media.watermark_position', 'Vị trí watermark', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1506, 0, 'vi', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bên trái dưới cùng', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1507, 0, 'vi', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bên phải dưới cùng', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1508, 0, 'vi', 'core/setting/setting', 'media.watermark_position_center', 'Chính giữa', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1509, 0, 'vi', 'core/setting/setting', 'media.watermark_position_top_left', 'Bên trái trên cùng', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1510, 0, 'vi', 'core/setting/setting', 'media.watermark_position_top_right', 'Bên phải trên cùng', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1511, 0, 'vi', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1512, 0, 'vi', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1513, 0, 'vi', 'core/setting/setting', 'media.watermark_size', 'Kích thước của watermark (%)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1514, 0, 'vi', 'core/setting/setting', 'media.watermark_size_placeholder', 'Mặc định: 10 (%)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1515, 0, 'vi', 'core/setting/setting', 'media.watermark_source', 'Hình ảnh watermark', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1516, 0, 'en', 'core/table/table', 'operations', 'Operations', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1517, 0, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1518, 0, 'en', 'core/table/table', 'display', 'Display', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1519, 0, 'en', 'core/table/table', 'all', 'All', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1520, 0, 'en', 'core/table/table', 'edit_entry', 'Edit', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1521, 0, 'en', 'core/table/table', 'delete_entry', 'Delete', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1522, 0, 'en', 'core/table/table', 'show_from', 'Showing from', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1523, 0, 'en', 'core/table/table', 'to', 'to', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1524, 0, 'en', 'core/table/table', 'in', 'in', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1525, 0, 'en', 'core/table/table', 'records', 'records', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1526, 0, 'en', 'core/table/table', 'no_data', 'No data to display', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1527, 0, 'en', 'core/table/table', 'no_record', 'No record', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1528, 0, 'en', 'core/table/table', 'loading', 'Loading data from server', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1529, 0, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1530, 0, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1531, 0, 'en', 'core/table/table', 'cancel', 'Cancel', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1532, 0, 'en', 'core/table/table', 'delete', 'Delete', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1533, 0, 'en', 'core/table/table', 'close', 'Close', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1534, 0, 'en', 'core/table/table', 'contains', 'Contains', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1535, 0, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1536, 0, 'en', 'core/table/table', 'greater_than', 'Greater than', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1537, 0, 'en', 'core/table/table', 'less_than', 'Less than', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1538, 0, 'en', 'core/table/table', 'value', 'Value', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1539, 0, 'en', 'core/table/table', 'select_field', 'Select field', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1540, 0, 'en', 'core/table/table', 'reset', 'Reset', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1541, 0, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1542, 0, 'en', 'core/table/table', 'apply', 'Apply', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1543, 0, 'en', 'core/table/table', 'filters', 'Filters', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1544, 0, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1545, 0, 'en', 'core/table/table', 'select_option', 'Select option', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1546, 0, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1547, 0, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1548, 0, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1549, 0, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1550, 0, 'en', 'core/table/table', 'search', 'Search...', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1551, 0, 'vi', 'core/table/table', 'operations', 'Hành động', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1552, 0, 'vi', 'core/table/table', 'loading_data', 'Đang tải dữ liệu từ hệ thống', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1553, 0, 'vi', 'core/table/table', 'display', 'Hiển thị', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1554, 0, 'vi', 'core/table/table', 'all', 'Tất cả', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1555, 0, 'vi', 'core/table/table', 'edit_entry', 'Sửa', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1556, 0, 'vi', 'core/table/table', 'delete_entry', 'Xoá', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1557, 0, 'vi', 'core/table/table', 'show_from', 'Hiển thị từ', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1558, 0, 'vi', 'core/table/table', 'to', 'đến', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1559, 0, 'vi', 'core/table/table', 'in', 'trong tổng số', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1560, 0, 'vi', 'core/table/table', 'records', 'bản ghi', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1561, 0, 'vi', 'core/table/table', 'no_data', 'Không có dữ liệu để hiển thị', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1562, 0, 'vi', 'core/table/table', 'no_record', 'không có bản ghi nào', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1563, 0, 'vi', 'core/table/table', 'loading', 'Đang tải dữ liệu từ hệ thống', '2022-04-20 19:52:54', '2022-04-20 19:53:11');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1564, 0, 'vi', 'core/table/table', 'confirm_delete', 'Xác nhận xoá', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1565, 0, 'vi', 'core/table/table', 'confirm_delete_msg', 'Bạn có chắc chắn muốn xoá bản ghi này?', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1566, 0, 'vi', 'core/table/table', 'cancel', 'Huỷ bỏ', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1567, 0, 'vi', 'core/table/table', 'delete', 'Xoá', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1568, 0, 'vi', 'core/table/table', 'close', 'Đóng', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1569, 0, 'vi', 'core/table/table', 'is_equal_to', 'Bằng với', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1570, 0, 'vi', 'core/table/table', 'greater_than', 'Lớn hơn', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1571, 0, 'vi', 'core/table/table', 'less_than', 'Nhỏ hơn', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1572, 0, 'vi', 'core/table/table', 'value', 'Giá trị', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1573, 0, 'vi', 'core/table/table', 'select_field', 'Chọn trường', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1574, 0, 'vi', 'core/table/table', 'reset', 'Làm mới', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1575, 0, 'vi', 'core/table/table', 'add_additional_filter', 'Thêm bộ lọc', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1576, 0, 'vi', 'core/table/table', 'apply', 'Áp dụng', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1577, 0, 'vi', 'core/table/table', 'select_option', 'Lựa chọn', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1578, 0, 'vi', 'core/table/table', 'filters', 'Lọc dữ liệu', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1579, 0, 'vi', 'core/table/table', 'bulk_change', 'Thay đổi hàng loạt', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1580, 0, 'vi', 'core/table/table', 'bulk_actions', 'Hành động', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1581, 0, 'vi', 'core/table/table', 'contains', 'Bao gồm', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1582, 0, 'vi', 'core/table/table', 'filtered', '(đã được lọc từ _MAX_ bản ghi)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1583, 0, 'vi', 'core/table/table', 'please_select_record', 'Vui lòng chọn ít nhất 1 bản ghi để thực hiện hành động này!', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1584, 0, 'vi', 'core/table/table', 'save_bulk_change_success', 'Cập nhật dữ liệu cho các bản ghi thành công!', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1585, 0, 'vi', 'core/table/table', 'search', 'Tìm kiếm...', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1586, 0, 'en', 'packages/menu/menu', 'name', 'Menus', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1587, 0, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1588, 0, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1589, 0, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1590, 0, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1591, 0, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1592, 0, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1593, 0, 'en', 'packages/menu/menu', 'remove', 'Remove', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1594, 0, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1595, 0, 'en', 'packages/menu/menu', 'title', 'Title', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1596, 0, 'en', 'packages/menu/menu', 'icon', 'Icon', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1597, 0, 'en', 'packages/menu/menu', 'url', 'URL', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1598, 0, 'en', 'packages/menu/menu', 'target', 'Target', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1599, 0, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1600, 0, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1601, 0, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1602, 0, 'en', 'packages/menu/menu', 'create', 'Create menu', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1603, 0, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1604, 0, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1605, 0, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1606, 0, 'vi', 'packages/menu/menu', 'name', 'Trình đơn', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1607, 0, 'vi', 'packages/menu/menu', 'cancel', 'Hủy bỏ', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1608, 0, 'vi', 'packages/menu/menu', 'add_link', 'Thêm liên kết', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1609, 0, 'vi', 'packages/menu/menu', 'add_to_menu', 'Thêm vào trình đơn', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1610, 0, 'vi', 'packages/menu/menu', 'basic_info', 'Thông tin cơ bản', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1611, 0, 'vi', 'packages/menu/menu', 'blank_open_link', 'Mở liên kết trong tab mới', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1612, 0, 'vi', 'packages/menu/menu', 'css_class', 'CSS class', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1613, 0, 'vi', 'packages/menu/menu', 'custom_link', 'Liên kết tùy chọn', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1614, 0, 'vi', 'packages/menu/menu', 'icon', 'Biểu tượng', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1615, 0, 'vi', 'packages/menu/menu', 'key_name', 'Tên menu (key::key)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1616, 0, 'vi', 'packages/menu/menu', 'remove', 'Xóa', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1617, 0, 'vi', 'packages/menu/menu', 'self_open_link', 'Mở liên kết trong tab hiện tại', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1618, 0, 'vi', 'packages/menu/menu', 'structure', 'Cấu trúc trình đơn', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1619, 0, 'vi', 'packages/menu/menu', 'target', 'Target', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1620, 0, 'vi', 'packages/menu/menu', 'title', 'Tiêu đề', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1621, 0, 'vi', 'packages/menu/menu', 'url', 'URL', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1622, 0, 'vi', 'packages/menu/menu', 'create', 'Tạo trình đơn', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1623, 0, 'vi', 'packages/menu/menu', 'edit', 'Sửa trình đơn', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1624, 0, 'vi', 'packages/menu/menu', 'display_location', 'Vị trí hiển thị', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1625, 0, 'vi', 'packages/menu/menu', 'menu_settings', 'Cấu hình menu', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1626, 0, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1627, 0, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1628, 0, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1629, 0, 'vi', 'packages/optimize/optimize', 'settings.title', 'Tối ưu tốc độ', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1630, 0, 'vi', 'packages/optimize/optimize', 'settings.description', 'Nén HTML output, inline CSS, xóa chú thích...', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1631, 0, 'vi', 'packages/optimize/optimize', 'settings.enable', 'Bật tối ưu tốc độ?', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1632, 0, 'en', 'packages/page/pages', 'create', 'Create new page', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1633, 0, 'en', 'packages/page/pages', 'edit', 'Edit page', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1634, 0, 'en', 'packages/page/pages', 'form.name', 'Name', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1635, 0, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1636, 0, 'en', 'packages/page/pages', 'form.content', 'Content', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1637, 0, 'en', 'packages/page/pages', 'form.note', 'Note content', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1638, 0, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1639, 0, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1640, 0, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1641, 0, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1642, 0, 'en', 'packages/page/pages', 'pages', 'Pages', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1643, 0, 'en', 'packages/page/pages', 'menu', 'Pages', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1644, 0, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1645, 0, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1646, 0, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1647, 0, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1648, 0, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1649, 0, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1650, 0, 'vi', 'packages/page/pages', 'create', 'Thêm trang', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1651, 0, 'vi', 'packages/page/pages', 'edit', 'Sửa trang', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1652, 0, 'vi', 'packages/page/pages', 'form.name', 'Tiêu đề trang', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1653, 0, 'vi', 'packages/page/pages', 'form.note', 'Nội dung ghi chú', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1654, 0, 'vi', 'packages/page/pages', 'form.name_placeholder', 'Tên trang (tối đa 120 kí tự)', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1655, 0, 'vi', 'packages/page/pages', 'form.content', 'Nội dung', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1656, 0, 'vi', 'packages/page/pages', 'notices.no_select', 'Chọn ít nhất 1 trang để thực hiện hành động này!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1657, 0, 'vi', 'packages/page/pages', 'notices.update_success_message', 'Cập nhật thành công', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1658, 0, 'vi', 'packages/page/pages', 'deleted', 'Xóa trang thành công', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1659, 0, 'vi', 'packages/page/pages', 'cannot_delete', 'Không thể xóa trang', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1660, 0, 'vi', 'packages/page/pages', 'menu', 'Trang', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1661, 0, 'vi', 'packages/page/pages', 'menu_name', 'Trang', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1662, 0, 'vi', 'packages/page/pages', 'edit_this_page', 'Sửa trang này', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1663, 0, 'vi', 'packages/page/pages', 'pages', 'Trang', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1664, 0, 'vi', 'packages/page/pages', 'front_page', 'Trang chủ', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1665, 0, 'vi', 'packages/page/pages', 'settings.select', '-- Lựa chọn --', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1666, 0, 'vi', 'packages/page/pages', 'settings.show_on_front', 'Lựa chọn trang chủ', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1667, 0, 'vi', 'packages/page/pages', 'total_pages', 'Tổng số trang', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1668, 0, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1669, 0, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1670, 0, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1671, 0, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1672, 0, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1673, 0, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1674, 0, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1675, 0, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1676, 0, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1677, 0, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1678, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1679, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1680, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1681, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1682, 0, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1683, 0, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1684, 0, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1685, 0, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1686, 0, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1687, 0, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1688, 0, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1689, 0, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1690, 0, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1691, 0, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1692, 0, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1693, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1694, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1695, 0, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1696, 0, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1697, 0, 'vi', 'packages/plugin-management/plugin', 'activate', 'Kích hoạt', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1698, 0, 'vi', 'packages/plugin-management/plugin', 'author', 'Tác giả', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1699, 0, 'vi', 'packages/plugin-management/plugin', 'version', 'Phiên bản', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1700, 0, 'vi', 'packages/plugin-management/plugin', 'activated', 'Đã kích hoạt', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1701, 0, 'vi', 'packages/plugin-management/plugin', 'deactivate', 'Hủy kích hoạt', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1702, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated', 'Đã vô hiệu', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1703, 0, 'vi', 'packages/plugin-management/plugin', 'enabled', 'Kích hoạt', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1704, 0, 'vi', 'packages/plugin-management/plugin', 'invalid_plugin', 'Gói mở rộng không hợp lệ', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1705, 0, 'vi', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Cập nhật trạng thái gói mở rộng thành công', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1706, 0, 'vi', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Vui lòng kích hoạt các gói mở rộng :plugins trước khi kích hoạt gói này', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1707, 0, 'vi', 'packages/plugin-management/plugin', 'plugins', 'Gói mở rộng', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1708, 0, 'vi', 'packages/plugin-management/plugin', 'remove', 'Xoá', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1709, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Xoá thành công!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1710, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin', 'Xoá gói mở rộng', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1711, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Bạn có chắc chắn muốn xoá plugin này?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1712, 0, 'vi', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Có, xoá!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1713, 0, 'vi', 'packages/plugin-management/plugin', 'total_plugins', 'Tất cả plugins', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1714, 0, 'vi', 'packages/plugin-management/plugin', 'activate_success', 'Kích hoạt thành công!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1715, 0, 'vi', 'packages/plugin-management/plugin', 'activated_already', 'Gói mở rộng này đã được kích hoạt rồi!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1716, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated_already', 'Gói mở rộng này đã được hủy kích hoạt rồi!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1717, 0, 'vi', 'packages/plugin-management/plugin', 'deactivated_success', 'Hủy kích hoạt thành công!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1718, 0, 'vi', 'packages/plugin-management/plugin', 'invalid_json', 'Sai cấu hình plugin.json!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1719, 0, 'vi', 'packages/plugin-management/plugin', 'missing_json_file', 'Thiếu tập tin cấu hình plugin.json!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1720, 0, 'vi', 'packages/plugin-management/plugin', 'plugin_invalid', 'Gói mở rộng không hợp lệ!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1721, 0, 'vi', 'packages/plugin-management/plugin', 'plugin_not_exist', 'Gói mở rộng không tồn tại', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1722, 0, 'vi', 'packages/plugin-management/plugin', 'plugin_removed', 'Gói mở rộng đã bị xóa!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1723, 0, 'vi', 'packages/plugin-management/plugin', 'published_assets_success', 'Xuất bản assets cho gói mở rộng thành công!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1724, 0, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1725, 0, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1726, 0, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1727, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1728, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1729, 0, 'vi', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Tối ưu hoá bộ máy tìm kiếm (SEO)', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1730, 0, 'vi', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Chỉnh sửa SEO', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1731, 0, 'vi', 'packages/seo-helper/seo-helper', 'default_description', 'Thiết lập các thẻ mô tả giúp người dùng dễ dàng tìm thấy trên công cụ tìm kiếm như Google.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1732, 0, 'vi', 'packages/seo-helper/seo-helper', 'seo_title', 'Tiêu đề trang', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1733, 0, 'vi', 'packages/seo-helper/seo-helper', 'seo_description', 'Mô tả trang', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1734, 0, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1735, 0, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1736, 0, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1737, 0, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1738, 0, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1739, 0, 'en', 'packages/slug/slug', 'preview', 'Preview', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1740, 0, 'en', 'packages/slug/slug', 'prefix_for', 'Prefix for :name', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1741, 0, 'vi', 'packages/slug/slug', 'permalink_settings', 'Liên kết cố định', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1742, 0, 'vi', 'packages/slug/slug', 'preview', 'Xem trước', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1743, 0, 'vi', 'packages/slug/slug', 'settings.description', 'Quản lý liên kết cố định cho các module.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1744, 0, 'vi', 'packages/slug/slug', 'settings.preview', 'Xem trước', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1745, 0, 'vi', 'packages/slug/slug', 'settings.title', 'Cài đặt liên kết cố định', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1746, 0, 'en', 'packages/theme/theme', 'name', 'Themes', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1747, 0, 'en', 'packages/theme/theme', 'theme', 'Theme', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1748, 0, 'en', 'packages/theme/theme', 'author', 'Author', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1749, 0, 'en', 'packages/theme/theme', 'version', 'Version', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1750, 0, 'en', 'packages/theme/theme', 'description', 'Description', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1751, 0, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1752, 0, 'en', 'packages/theme/theme', 'active', 'Active', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1753, 0, 'en', 'packages/theme/theme', 'activated', 'Activated', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1754, 0, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1755, 0, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1756, 0, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1757, 0, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1758, 0, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1759, 0, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1760, 0, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1761, 0, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1762, 0, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1763, 0, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1764, 0, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1765, 0, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1766, 0, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1767, 0, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1768, 0, 'en', 'packages/theme/theme', 'remove', 'Remove', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1769, 0, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1770, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1771, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1772, 0, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1773, 0, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1774, 0, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1775, 0, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1776, 0, 'en', 'packages/theme/theme', 'settings.redirect_404_to_homepage', 'Redirect all not found requests to homepage?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1777, 0, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1778, 0, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1779, 0, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1780, 0, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1781, 0, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1782, 0, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1783, 0, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1784, 0, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1785, 0, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1786, 0, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1787, 0, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1788, 0, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1789, 0, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1790, 0, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1791, 0, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1792, 0, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1793, 0, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1794, 0, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1795, 0, 'vi', 'packages/theme/theme', 'name', 'Giao diện', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1796, 0, 'vi', 'packages/theme/theme', 'activated', 'Đã kích hoạt', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1797, 0, 'vi', 'packages/theme/theme', 'active', 'Kích hoạt', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1798, 0, 'vi', 'packages/theme/theme', 'active_success', 'Kích hoạt giao diện thành công!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1799, 0, 'vi', 'packages/theme/theme', 'author', 'Tác giả', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1800, 0, 'vi', 'packages/theme/theme', 'description', 'Mô tả', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1801, 0, 'vi', 'packages/theme/theme', 'appearance', 'Hiển thị', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1802, 0, 'vi', 'packages/theme/theme', 'theme', 'Giao diện', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1803, 0, 'vi', 'packages/theme/theme', 'theme_options', 'Tuỳ chọn giao diện', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1804, 0, 'vi', 'packages/theme/theme', 'version', 'Phiên bản', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1805, 0, 'vi', 'packages/theme/theme', 'save_changes', 'Lưu thay đổi', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1806, 0, 'vi', 'packages/theme/theme', 'developer_mode', 'Đang kích hoạt chế độ thử nghiệm', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1807, 0, 'vi', 'packages/theme/theme', 'custom_css', 'Tuỳ chỉnh CSS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1808, 0, 'vi', 'packages/theme/theme', 'remove', 'Xóa', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1809, 0, 'vi', 'packages/theme/theme', 'remove_theme', 'Xóa giao diện', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1810, 0, 'vi', 'packages/theme/theme', 'remove_theme_confirm_message', 'Bạn có chắc chắn muốn xóa giao diện này?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1811, 0, 'vi', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Vâng, xác nhận xóa!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1812, 0, 'vi', 'packages/theme/theme', 'remove_theme_success', 'Xóa giao diện thành công!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1813, 0, 'vi', 'packages/theme/theme', 'settings.description', 'Cài đặt giao diện', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1814, 0, 'vi', 'packages/theme/theme', 'settings.title', 'Giao diện', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1815, 0, 'vi', 'packages/theme/theme', 'show_admin_bar', 'Hiển thị admin bar (khi admin đã đăng nhập, vẫn hiển thị admin bar trên website)?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1816, 0, 'vi', 'packages/theme/theme', 'total_themes', 'Tổng số giao diện', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1817, 0, 'vi', 'packages/theme/theme', 'add_new', 'Thêm mới', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1818, 0, 'en', 'packages/widget/widget', 'name', 'Widgets', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1819, 0, 'en', 'packages/widget/widget', 'create', 'New widget', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1820, 0, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1821, 0, 'en', 'packages/widget/widget', 'delete', 'Delete', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1822, 0, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1823, 0, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1824, 0, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1825, 0, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1826, 0, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1827, 0, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1828, 0, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1829, 0, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1830, 0, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1831, 0, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1832, 0, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1833, 0, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1834, 0, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1835, 0, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1836, 0, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1837, 0, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1838, 0, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1839, 0, 'vi', 'packages/widget/widget', 'name', 'Widgets', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1840, 0, 'vi', 'packages/widget/widget', 'create', 'New widget', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1841, 0, 'vi', 'packages/widget/widget', 'edit', 'Edit widget', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1842, 0, 'vi', 'packages/widget/widget', 'available', 'Tiện ích có sẵn', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1843, 0, 'vi', 'packages/widget/widget', 'delete', 'Xóa', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1844, 0, 'vi', 'packages/widget/widget', 'instruction', 'Để kích hoạt tiện ích, hãy kéo nó vào sidebar hoặc nhấn vào nó. Để hủy kích hoạt tiện ích và xóa các thiết lập của tiện ích, kéo nó quay trở lại.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1845, 0, 'vi', 'packages/widget/widget', 'number_post_display', 'Số bài viết sẽ hiển thị', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1846, 0, 'vi', 'packages/widget/widget', 'number_tag_display', 'Số thẻ sẽ hiển thị', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1847, 0, 'vi', 'packages/widget/widget', 'select_menu', 'Lựa chọn trình đơn', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1848, 0, 'vi', 'packages/widget/widget', 'widget_custom_menu', 'Menu tùy chỉnh', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1849, 0, 'vi', 'packages/widget/widget', 'widget_custom_menu_description', 'Thêm menu tùy chỉnh vào khu vực tiện ích của bạn', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1850, 0, 'vi', 'packages/widget/widget', 'widget_recent_post', 'Bài viết gần đây', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1851, 0, 'vi', 'packages/widget/widget', 'widget_recent_post_description', 'Tiện ích bài viết gần đây', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1852, 0, 'vi', 'packages/widget/widget', 'widget_tag', 'Thẻ', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1853, 0, 'vi', 'packages/widget/widget', 'widget_tag_description', 'Thẻ phổ biến, sử dụng nhiều', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1854, 0, 'vi', 'packages/widget/widget', 'widget_text', 'Văn bản', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1855, 0, 'vi', 'packages/widget/widget', 'widget_text_description', 'Văn bản tùy ý hoặc HTML.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1856, 0, 'vi', 'packages/widget/widget', 'delete_success', 'Xoá tiện ích thành công', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1857, 0, 'vi', 'packages/widget/widget', 'save_success', 'Lưu tiện ích thành công!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1858, 0, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1859, 0, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1860, 0, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1861, 0, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1862, 0, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1863, 0, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1864, 0, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1865, 0, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1866, 0, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1867, 0, 'en', 'plugins/analytics/analytics', 'views', 'views', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1868, 0, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1869, 0, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1870, 0, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1871, 0, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1872, 0, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1873, 0, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1874, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1875, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1876, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1877, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1878, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1879, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1880, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1881, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1882, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1883, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1884, 0, 'vi', 'plugins/analytics/analytics', 'avg_duration', 'Trung bình', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1885, 0, 'vi', 'plugins/analytics/analytics', 'bounce_rate', 'Tỉ lệ thoát', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1886, 0, 'vi', 'plugins/analytics/analytics', 'page_session', 'Trang/Phiên', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1887, 0, 'vi', 'plugins/analytics/analytics', 'pageviews', 'Lượt xem', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1888, 0, 'vi', 'plugins/analytics/analytics', 'sessions', 'Phiên', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1889, 0, 'vi', 'plugins/analytics/analytics', 'views', 'lượt xem', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1890, 0, 'vi', 'plugins/analytics/analytics', 'visitors', 'Người truy cập', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1891, 0, 'vi', 'plugins/analytics/analytics', 'visits', 'lượt ghé thăm', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1892, 0, 'vi', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Thông tin cài đặt không hợp lệ. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1893, 0, 'vi', 'plugins/analytics/analytics', 'new_users', 'Lượt khách mới', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1894, 0, 'vi', 'plugins/analytics/analytics', 'percent_new_session', 'Tỉ lệ khách mới', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1895, 0, 'vi', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Ngày bắt đầu :start_date không thể sau ngày kết thúc :end_date', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1896, 0, 'vi', 'plugins/analytics/analytics', 'view_id_not_specified', 'Bạn phải cung cấp View ID hợp lê. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1897, 0, 'vi', 'plugins/analytics/analytics', 'wrong_configuration', 'Để xem dữ liệu thống kê Google Analytics, bạn cần lấy thông tin Client ID và thêm nó vào trong phần cài đặt. Bạn cũng cần thông tin xác thực dạng JSON. Tài liệu hướng dẫn tại đây: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1898, 0, 'vi', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1899, 0, 'vi', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1900, 0, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking Code', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1901, 0, 'vi', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1902, 0, 'vi', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1903, 0, 'vi', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1904, 0, 'vi', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1905, 0, 'vi', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1906, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Trình duyệt truy cập nhiều', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1907, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_general', 'Thống kê truy cập', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1908, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_page', 'Trang được xem nhiều nhất', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1909, 0, 'vi', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Trang giới thiệu nhiều', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1910, 0, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1911, 0, 'en', 'plugins/audit-log/history', 'created', 'created', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1912, 0, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1913, 0, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1914, 0, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1915, 0, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1916, 0, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1917, 0, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1918, 0, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1919, 0, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1920, 0, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1921, 0, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1922, 0, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1923, 0, 'en', 'plugins/audit-log/history', 'post', 'post', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1924, 0, 'en', 'plugins/audit-log/history', 'page', 'page', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1925, 0, 'en', 'plugins/audit-log/history', 'category', 'category', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1926, 0, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1927, 0, 'en', 'plugins/audit-log/history', 'user', 'user', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1928, 0, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1929, 0, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1930, 0, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1931, 0, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1932, 0, 'en', 'plugins/audit-log/history', 'action', 'Action', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1933, 0, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1934, 0, 'en', 'plugins/audit-log/history', 'system', 'System', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1935, 0, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1936, 0, 'vi', 'plugins/audit-log/history', 'name', 'Lịch sử hoạt động', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1937, 0, 'vi', 'plugins/audit-log/history', 'created', ' đã tạo', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1938, 0, 'vi', 'plugins/audit-log/history', 'updated', ' đã cập nhật', '2022-04-20 19:52:55', '2022-04-20 19:53:12');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1939, 0, 'vi', 'plugins/audit-log/history', 'deleted', ' đã xóa', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1940, 0, 'vi', 'plugins/audit-log/history', 'attached', 'đính kèm', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1941, 0, 'vi', 'plugins/audit-log/history', 'backup', 'sao lưu', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1942, 0, 'vi', 'plugins/audit-log/history', 'category', 'danh mục', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1943, 0, 'vi', 'plugins/audit-log/history', 'changed password', 'thay đổi mật khẩu', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1944, 0, 'vi', 'plugins/audit-log/history', 'contact', 'liên hệ', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1945, 0, 'vi', 'plugins/audit-log/history', 'custom-field', 'khung mở rộng', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1946, 0, 'vi', 'plugins/audit-log/history', 'logged in', 'đăng nhập', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1947, 0, 'vi', 'plugins/audit-log/history', 'logged out', 'đăng xuất', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1948, 0, 'vi', 'plugins/audit-log/history', 'menu', 'trình đơn', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1949, 0, 'vi', 'plugins/audit-log/history', 'of the system', 'khỏi hệ thống', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1950, 0, 'vi', 'plugins/audit-log/history', 'page', 'trang', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1951, 0, 'vi', 'plugins/audit-log/history', 'post', 'bài viết', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1952, 0, 'vi', 'plugins/audit-log/history', 'shared', 'đã chia sẻ', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1953, 0, 'vi', 'plugins/audit-log/history', 'tag', 'thẻ', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1954, 0, 'vi', 'plugins/audit-log/history', 'to the system', 'vào hệ thống', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1955, 0, 'vi', 'plugins/audit-log/history', 'updated profile', 'cập nhật tài khoản', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1956, 0, 'vi', 'plugins/audit-log/history', 'user', 'thành viên', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1957, 0, 'vi', 'plugins/audit-log/history', 'widget_audit_logs', 'Lịch sử hoạt động', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1958, 0, 'vi', 'plugins/audit-log/history', 'system', 'Hệ thống', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1959, 0, 'vi', 'plugins/audit-log/history', 'action', 'Hành động', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1960, 0, 'vi', 'plugins/audit-log/history', 'delete_all', 'Xóa tất cả bản ghi', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1961, 0, 'vi', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1962, 0, 'en', 'plugins/backup/backup', 'name', 'Backup', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1963, 0, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1964, 0, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1965, 0, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1966, 0, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1967, 0, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1968, 0, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1969, 0, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1970, 0, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1971, 0, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1972, 0, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1973, 0, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1974, 0, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1975, 0, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1976, 0, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1977, 0, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1978, 0, 'en', 'plugins/backup/backup', 'size', 'Size', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1979, 0, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1980, 0, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1981, 0, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1982, 0, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1983, 0, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1984, 0, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1985, 0, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1986, 0, 'en', 'plugins/backup/backup', 'important_message4', 'It is not a full backup, it is just back up uploaded files and your database.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1987, 0, 'en', 'plugins/backup/backup', 'cannot_restore_database', 'Cannot restore database. The database backup is missing!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1988, 0, 'vi', 'plugins/backup/backup', 'backup_description', 'Sao lưu cơ sở dữ liệu và thư mục /uploads', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1989, 0, 'vi', 'plugins/backup/backup', 'create', 'Tạo bản sao lưu', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1990, 0, 'vi', 'plugins/backup/backup', 'create_backup_success', 'Tạo bản sao lưu thành công!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1991, 0, 'vi', 'plugins/backup/backup', 'create_btn', 'Tạo', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1992, 0, 'vi', 'plugins/backup/backup', 'delete_backup_success', 'Xóa bản sao lưu thành công!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1993, 0, 'vi', 'plugins/backup/backup', 'generate_btn', 'Tạo sao lưu', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1994, 0, 'vi', 'plugins/backup/backup', 'name', 'Sao lưu', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1995, 0, 'vi', 'plugins/backup/backup', 'restore', 'Khôi phục bản sao lưu', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1996, 0, 'vi', 'plugins/backup/backup', 'restore_backup_success', 'Khôi phục bản sao lưu thành công', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1997, 0, 'vi', 'plugins/backup/backup', 'restore_btn', 'Khôi phục', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1998, 0, 'vi', 'plugins/backup/backup', 'restore_confirm_msg', 'Bạn có chắc chắn muốn khôi phục hệ thống về thời điểm tạo bản sao lưu này?', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1999, 0, 'vi', 'plugins/backup/backup', 'restore_tooltip', 'Khôi phục bản sao lưu này', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2000, 0, 'vi', 'plugins/backup/backup', 'download_database', 'Tải về bản sao lưu CSDL', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2001, 0, 'vi', 'plugins/backup/backup', 'download_uploads_folder', 'Tải về bản sao lưu thư mục uploads', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2002, 0, 'vi', 'plugins/backup/backup', 'menu_name', 'Sao lưu', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2003, 0, 'vi', 'plugins/backup/backup', 'demo_alert', 'Chào khách, nếu bạn thấy trang demo bị phá hoại, hãy tới <a href=\":link\">trang sao lưu</a> và khôi phục bản sao lưu cuối cùng. Cảm ơn bạn nhiều!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2004, 0, 'en', 'plugins/block/block', 'name', 'Block', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2005, 0, 'en', 'plugins/block/block', 'create', 'New block', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2006, 0, 'en', 'plugins/block/block', 'edit', 'Edit block', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2007, 0, 'en', 'plugins/block/block', 'menu', 'Static Blocks', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2008, 0, 'en', 'plugins/block/block', 'static_block_short_code_name', 'Static Block', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2009, 0, 'en', 'plugins/block/block', 'static_block_short_code_description', 'Add a custom static block', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2010, 0, 'en', 'plugins/block/block', 'alias', 'Alias', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2011, 0, 'vi', 'plugins/block/block', 'name', 'Nội dung tĩnh', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2012, 0, 'vi', 'plugins/block/block', 'create', 'Thêm nội dung tĩnh', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2013, 0, 'vi', 'plugins/block/block', 'edit', 'Sửa nội dung tĩnh', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2014, 0, 'vi', 'plugins/block/block', 'menu', 'Nội dung tĩnh', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2015, 0, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2016, 0, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2017, 0, 'en', 'plugins/blog/base', 'select', '-- Select --', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2018, 0, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2019, 0, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2020, 0, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2021, 0, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2022, 0, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2023, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2024, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2025, 0, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2026, 0, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2027, 0, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2028, 0, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2029, 0, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2030, 0, 'en', 'plugins/blog/categories', 'none', 'None', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2031, 0, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2032, 0, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2033, 0, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2034, 0, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2035, 0, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2036, 0, 'en', 'plugins/blog/member', 'posts', 'Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2037, 0, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2038, 0, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2039, 0, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2040, 0, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2041, 0, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2042, 0, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2043, 0, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2044, 0, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2045, 0, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2046, 0, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2047, 0, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2048, 0, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2049, 0, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2050, 0, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2051, 0, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2052, 0, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2053, 0, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2054, 0, 'en', 'plugins/blog/posts', 'post', 'Post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2055, 0, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2056, 0, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2057, 0, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2058, 0, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2059, 0, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2060, 0, 'en', 'plugins/blog/posts', 'category', 'Category', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2061, 0, 'en', 'plugins/blog/posts', 'author', 'Author', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2062, 0, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2063, 0, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2064, 0, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2065, 0, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2066, 0, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2067, 0, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2068, 0, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2069, 0, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2070, 0, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2071, 0, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2072, 0, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2073, 0, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2074, 0, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2075, 0, 'vi', 'plugins/blog/base', 'menu_name', 'Blog', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2076, 0, 'vi', 'plugins/blog/base', 'blog_page', 'Trang Blog', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2077, 0, 'vi', 'plugins/blog/base', 'select', '-- Lựa chọn --', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2078, 0, 'vi', 'plugins/blog/base', 'blog_page_id', 'Trang Blog', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2079, 0, 'vi', 'plugins/blog/categories', 'create', 'Thêm danh mục mới', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2080, 0, 'vi', 'plugins/blog/categories', 'edit', 'Sửa danh mục', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2081, 0, 'vi', 'plugins/blog/categories', 'menu', 'Danh mục', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2082, 0, 'vi', 'plugins/blog/categories', 'edit_this_category', 'Sửa danh mục này', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2083, 0, 'vi', 'plugins/blog/categories', 'menu_name', 'Danh mục', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2084, 0, 'vi', 'plugins/blog/categories', 'none', 'Không', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2085, 0, 'vi', 'plugins/blog/member', 'dob', 'Born :date', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2086, 0, 'vi', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2087, 0, 'vi', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2088, 0, 'vi', 'plugins/blog/member', 'published_posts', 'Published Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2089, 0, 'vi', 'plugins/blog/member', 'posts', 'Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2090, 0, 'vi', 'plugins/blog/member', 'write_post', 'Write a post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2091, 0, 'vi', 'plugins/blog/posts', 'create', 'Thêm bài viết', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2092, 0, 'vi', 'plugins/blog/posts', 'edit', 'Sửa bài viết', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2093, 0, 'vi', 'plugins/blog/posts', 'form.name', 'Tên', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2094, 0, 'vi', 'plugins/blog/posts', 'form.name_placeholder', 'Tên bài viết (Tối đa 120 kí tự)', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2095, 0, 'vi', 'plugins/blog/posts', 'form.description', 'Mô tả', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2096, 0, 'vi', 'plugins/blog/posts', 'form.description_placeholder', 'Mô tả ngắn cho bài viết (Tối đa 400 kí tự)', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2097, 0, 'vi', 'plugins/blog/posts', 'form.categories', 'Chuyên mục', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2098, 0, 'vi', 'plugins/blog/posts', 'form.tags', 'Từ khóa', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2099, 0, 'vi', 'plugins/blog/posts', 'form.tags_placeholder', 'Thêm từ khóa', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2100, 0, 'vi', 'plugins/blog/posts', 'form.content', 'Nội dung', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2101, 0, 'vi', 'plugins/blog/posts', 'form.is_featured', 'Bài viết nổi bật?', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2102, 0, 'vi', 'plugins/blog/posts', 'form.note', 'Nội dung ghi chú', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2103, 0, 'vi', 'plugins/blog/posts', 'form.format_type', 'Định dạng', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2104, 0, 'vi', 'plugins/blog/posts', 'post_deleted', 'Xóa bài viết thành công', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2105, 0, 'vi', 'plugins/blog/posts', 'cannot_delete', 'Không thể xóa bài viết', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2106, 0, 'vi', 'plugins/blog/posts', 'menu_name', 'Bài viết', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2107, 0, 'vi', 'plugins/blog/posts', 'edit_this_post', 'Sửa bài viết này', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2108, 0, 'vi', 'plugins/blog/posts', 'no_new_post_now', 'Hiện tại không có bài viết mới!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2109, 0, 'vi', 'plugins/blog/posts', 'posts', 'Bài viết', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2110, 0, 'vi', 'plugins/blog/posts', 'post', 'Bài viết', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2111, 0, 'vi', 'plugins/blog/posts', 'widget_posts_recent', 'Bài viết gần đây', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2112, 0, 'vi', 'plugins/blog/posts', 'author', 'Tác giả', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2113, 0, 'vi', 'plugins/blog/posts', 'categories', 'Danh mục', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2114, 0, 'vi', 'plugins/blog/posts', 'category', 'Danh mục', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2115, 0, 'vi', 'plugins/blog/tags', 'create', 'Thêm thẻ mới', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2116, 0, 'vi', 'plugins/blog/tags', 'edit', 'Sửa thẻ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2117, 0, 'vi', 'plugins/blog/tags', 'form.name', 'Tên', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2118, 0, 'vi', 'plugins/blog/tags', 'form.name_placeholder', 'Tên thẻ (Tối đa 120 kí tự)', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2119, 0, 'vi', 'plugins/blog/tags', 'form.description', 'Mô tả', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2120, 0, 'vi', 'plugins/blog/tags', 'form.description_placeholder', 'Mô tả ngắn cho tag (Tối đa 400 kí tự)', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2121, 0, 'vi', 'plugins/blog/tags', 'form.categories', 'Chuyên mục', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2122, 0, 'vi', 'plugins/blog/tags', 'notices.no_select', 'Chọn ít nhất 1 bài viết để thực hiện hành động này!', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2123, 0, 'vi', 'plugins/blog/tags', 'cannot_delete', 'Không thể xóa thẻ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2124, 0, 'vi', 'plugins/blog/tags', 'deleted', 'Xóa thẻ thành công', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2125, 0, 'vi', 'plugins/blog/tags', 'menu_name', 'Thẻ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2126, 0, 'vi', 'plugins/blog/tags', 'edit_this_tag', 'Sửa thẻ này', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2127, 0, 'vi', 'plugins/blog/tags', 'menu', 'Thẻ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2128, 0, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2129, 0, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2130, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2131, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2132, 0, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2133, 0, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2134, 0, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2135, 0, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2136, 0, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2137, 0, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2138, 0, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2139, 0, 'vi', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2140, 0, 'vi', 'plugins/captcha/captcha', 'settings.description', 'Cài đặt cho Google Captcha', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2141, 0, 'vi', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2142, 0, 'vi', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2143, 0, 'vi', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Bật Captcha?', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2144, 0, 'vi', 'plugins/captcha/captcha', 'settings.helper', 'Truy cập https://www.google.com/recaptcha/admin#list để lấy thông tin về Site key và Secret.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2145, 0, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2146, 0, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2147, 0, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2148, 0, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2149, 0, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2150, 0, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2151, 0, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2152, 0, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2153, 0, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2154, 0, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2155, 0, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2156, 0, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2157, 0, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2158, 0, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2159, 0, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2160, 0, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2161, 0, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2162, 0, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2163, 0, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2164, 0, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2165, 0, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2166, 0, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2167, 0, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2168, 0, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2169, 0, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2170, 0, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2171, 0, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2172, 0, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2173, 0, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2174, 0, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2175, 0, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2176, 0, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2177, 0, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2178, 0, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2179, 0, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2180, 0, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2181, 0, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2182, 0, 'en', 'plugins/contact/contact', 'address', 'Address', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2183, 0, 'en', 'plugins/contact/contact', 'message', 'Message', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2184, 0, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2185, 0, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2186, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2187, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2188, 0, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2189, 0, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2190, 0, 'en', 'plugins/contact/contact', 'send', 'Send', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2191, 0, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2192, 0, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2193, 0, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2194, 0, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2195, 0, 'vi', 'plugins/contact/contact', 'menu', 'Liên hệ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2196, 0, 'vi', 'plugins/contact/contact', 'edit', 'Xem liên hệ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2197, 0, 'vi', 'plugins/contact/contact', 'tables.phone', 'Điện thoại', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2198, 0, 'vi', 'plugins/contact/contact', 'tables.email', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2199, 0, 'vi', 'plugins/contact/contact', 'tables.full_name', 'Họ tên', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2200, 0, 'vi', 'plugins/contact/contact', 'tables.time', 'Thời gian', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2201, 0, 'vi', 'plugins/contact/contact', 'tables.address', 'Địa địa chỉ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2202, 0, 'vi', 'plugins/contact/contact', 'tables.subject', 'Tiêu đề', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2203, 0, 'vi', 'plugins/contact/contact', 'tables.content', 'Nội dung', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2204, 0, 'vi', 'plugins/contact/contact', 'contact_information', 'Thông tin liên hệ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2205, 0, 'vi', 'plugins/contact/contact', 'email.title', 'Thông tin liên hệ mới', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2206, 0, 'vi', 'plugins/contact/contact', 'email.header', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2207, 0, 'vi', 'plugins/contact/contact', 'form.name.required', 'Tên là bắt buộc', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2208, 0, 'vi', 'plugins/contact/contact', 'form.email.required', 'Email là bắt buộc', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2209, 0, 'vi', 'plugins/contact/contact', 'form.email.email', 'Địa chỉ email không hợp lệ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2210, 0, 'vi', 'plugins/contact/contact', 'form.content.required', 'Nội dung là bắt buộc', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2211, 0, 'vi', 'plugins/contact/contact', 'contact_sent_from', 'Liên hệ này được gửi từ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2212, 0, 'vi', 'plugins/contact/contact', 'form_address', 'Địa chỉ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2213, 0, 'vi', 'plugins/contact/contact', 'form_email', 'Thư điện tử', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2214, 0, 'vi', 'plugins/contact/contact', 'form_message', 'Thông điệp', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2215, 0, 'vi', 'plugins/contact/contact', 'form_name', 'Họ tên', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2216, 0, 'vi', 'plugins/contact/contact', 'form_phone', 'Số điện thoại', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2217, 0, 'vi', 'plugins/contact/contact', 'message_content', 'Nội dung thông điệp', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2218, 0, 'vi', 'plugins/contact/contact', 'required_field', 'Những trường có dấu (<span style=\"color: red\">*</span>) là bắt buộc.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2219, 0, 'vi', 'plugins/contact/contact', 'send_btn', 'Gửi tin nhắn', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2220, 0, 'vi', 'plugins/contact/contact', 'sender', 'Người gửi', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2221, 0, 'vi', 'plugins/contact/contact', 'sender_address', 'Địa chỉ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2222, 0, 'vi', 'plugins/contact/contact', 'sender_email', 'Thư điện tử', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2223, 0, 'vi', 'plugins/contact/contact', 'sender_phone', 'Số điện thoại', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2224, 0, 'vi', 'plugins/contact/contact', 'sent_from', 'Thư được gửi từ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2225, 0, 'vi', 'plugins/contact/contact', 'address', 'Địa chỉ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2226, 0, 'vi', 'plugins/contact/contact', 'message', 'Liên hệ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2227, 0, 'vi', 'plugins/contact/contact', 'new_msg_notice', 'Bạn có <span class=\"bold\">:count</span> tin nhắn mới', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2228, 0, 'vi', 'plugins/contact/contact', 'phone', 'Điện thoại', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2229, 0, 'vi', 'plugins/contact/contact', 'statuses.read', 'Đã đọc', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2230, 0, 'vi', 'plugins/contact/contact', 'statuses.unread', 'Chưa đọc', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2231, 0, 'vi', 'plugins/contact/contact', 'view_all', 'Xem tất cả', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2232, 0, 'vi', 'plugins/contact/contact', 'settings.email.title', 'Liên hệ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2233, 0, 'vi', 'plugins/contact/contact', 'settings.email.description', 'Cấu hình thông tin cho mục liên hệ', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2234, 0, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Thông báo tới admin', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2235, 0, 'vi', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Mẫu nội dung email gửi tới admin khi có liên hệ mới', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2236, 0, 'vi', 'plugins/contact/contact', 'replies', 'Trả lời', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2237, 0, 'vi', 'plugins/contact/contact', 'form_subject', 'Tiêu đề', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2238, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2239, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2240, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2241, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2242, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2243, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2244, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2245, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2246, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2247, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2248, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.style', 'Style', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2249, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.full_width', 'Full width', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2250, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.minimal', 'Minimal', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2251, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2252, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2253, 0, 'en', 'plugins/custom-field/base', 'admin_menu.title', 'Custom Fields', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2254, 0, 'en', 'plugins/custom-field/base', 'page_title', 'Custom Fields', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2255, 0, 'en', 'plugins/custom-field/base', 'all_field_groups', 'All field groups', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2256, 0, 'en', 'plugins/custom-field/base', 'form.create_field_group', 'Create field group', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2257, 0, 'en', 'plugins/custom-field/base', 'form.edit_field_group', 'Edit field group', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2258, 0, 'en', 'plugins/custom-field/base', 'form.field_items_information', 'Field items information', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2259, 0, 'en', 'plugins/custom-field/base', 'form.repeater_fields', 'Repeater', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2260, 0, 'en', 'plugins/custom-field/base', 'form.add_field', 'Add field', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2261, 0, 'en', 'plugins/custom-field/base', 'form.remove_field', 'Remove field', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2262, 0, 'en', 'plugins/custom-field/base', 'form.close_field', 'Close field', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2263, 0, 'en', 'plugins/custom-field/base', 'form.new_field', 'New field', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2264, 0, 'en', 'plugins/custom-field/base', 'form.field_label', 'Label', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2265, 0, 'en', 'plugins/custom-field/base', 'form.field_label_helper', 'This is the title of field item. It will be shown on edit pages.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2266, 0, 'en', 'plugins/custom-field/base', 'form.field_name', 'Field name', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2267, 0, 'en', 'plugins/custom-field/base', 'form.field_name_helper', 'The alias of field item. Accepted numbers, characters and underscore.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2268, 0, 'en', 'plugins/custom-field/base', 'form.field_type', 'Field type', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2269, 0, 'en', 'plugins/custom-field/base', 'form.field_type_helper', 'Please select the type of this field.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2270, 0, 'en', 'plugins/custom-field/base', 'form.field_instructions', 'Field instructions', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2271, 0, 'en', 'plugins/custom-field/base', 'form.field_instructions_helper', 'The instructions guide for user easier know what they need to input.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2272, 0, 'en', 'plugins/custom-field/base', 'form.default_value', 'Default value', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2273, 0, 'en', 'plugins/custom-field/base', 'form.default_value_helper', 'The default value of field when leave it blank', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2274, 0, 'en', 'plugins/custom-field/base', 'form.placeholder', 'Placeholder', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2275, 0, 'en', 'plugins/custom-field/base', 'form.placeholder_helper', 'Placeholder text', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2276, 0, 'en', 'plugins/custom-field/base', 'form.rows', 'Rows', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2277, 0, 'en', 'plugins/custom-field/base', 'form.rows_helper', 'Rows of this textarea', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2278, 0, 'en', 'plugins/custom-field/base', 'form.choices', 'Choices', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2279, 0, 'en', 'plugins/custom-field/base', 'form.choices_helper', 'Enter each choice on a new line.<br>For more control, you may specify both a value and label like this:<br>red: Red<br>blue: Blue', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2280, 0, 'en', 'plugins/custom-field/base', 'form.button_label', 'Button for repeater', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2281, 0, 'en', 'plugins/custom-field/base', 'form.groups.basic', 'Basic', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2282, 0, 'en', 'plugins/custom-field/base', 'form.groups.content', 'Content', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2283, 0, 'en', 'plugins/custom-field/base', 'form.groups.choice', 'Choices', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2284, 0, 'en', 'plugins/custom-field/base', 'form.groups.other', 'Other', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2285, 0, 'en', 'plugins/custom-field/base', 'form.types.text', 'Text field', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2286, 0, 'en', 'plugins/custom-field/base', 'form.types.textarea', 'Textarea', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2287, 0, 'en', 'plugins/custom-field/base', 'form.types.number', 'Number', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2288, 0, 'en', 'plugins/custom-field/base', 'form.types.email', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2289, 0, 'en', 'plugins/custom-field/base', 'form.types.password', 'Password', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2290, 0, 'en', 'plugins/custom-field/base', 'form.types.wysiwyg', 'WYSIWYG editor', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2291, 0, 'en', 'plugins/custom-field/base', 'form.types.image', 'Image', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2292, 0, 'en', 'plugins/custom-field/base', 'form.types.file', 'File', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2293, 0, 'en', 'plugins/custom-field/base', 'form.types.select', 'Select', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2294, 0, 'en', 'plugins/custom-field/base', 'form.types.checkbox', 'Checkbox', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2295, 0, 'en', 'plugins/custom-field/base', 'form.types.radio', 'Radio', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2296, 0, 'en', 'plugins/custom-field/base', 'form.types.repeater', 'Repeater', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2297, 0, 'en', 'plugins/custom-field/base', 'form.rules.rules', 'Display rules', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2298, 0, 'en', 'plugins/custom-field/base', 'form.rules.rules_helper', 'Show this field group if', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2299, 0, 'en', 'plugins/custom-field/base', 'form.rules.add_rule_group', 'Add rule group', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2300, 0, 'en', 'plugins/custom-field/base', 'form.rules.is_equal_to', 'Equal to', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2301, 0, 'en', 'plugins/custom-field/base', 'form.rules.is_not_equal_to', 'Not equal to', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2302, 0, 'en', 'plugins/custom-field/base', 'form.rules.and', 'And', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2303, 0, 'en', 'plugins/custom-field/base', 'form.rules.or', 'Or', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2304, 0, 'en', 'plugins/custom-field/base', 'import', 'Import', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2305, 0, 'en', 'plugins/custom-field/base', 'export', 'Export', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2306, 0, 'en', 'plugins/custom-field/base', 'publish', 'Publish', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2307, 0, 'en', 'plugins/custom-field/base', 'remove_this_line', 'Remove this line', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2308, 0, 'en', 'plugins/custom-field/base', 'collapse_this_line', 'Collapse this line', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2309, 0, 'en', 'plugins/custom-field/base', 'error_occurred', 'Error occurred', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2310, 0, 'en', 'plugins/custom-field/base', 'request_completed', 'Request completed', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2311, 0, 'en', 'plugins/custom-field/base', 'item_not_existed', 'Item is not exists', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2312, 0, 'en', 'plugins/custom-field/rules', 'groups.basic', 'Basic', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2313, 0, 'en', 'plugins/custom-field/rules', 'groups.other', 'Other', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2314, 0, 'en', 'plugins/custom-field/rules', 'groups.blog', 'Blog', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2315, 0, 'en', 'plugins/custom-field/rules', 'logged_in_user', 'Logged in user', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2316, 0, 'en', 'plugins/custom-field/rules', 'logged_in_user_has_role', 'Logged in has role', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2317, 0, 'en', 'plugins/custom-field/rules', 'page_template', 'Page template', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2318, 0, 'en', 'plugins/custom-field/rules', 'page', 'Page', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2319, 0, 'en', 'plugins/custom-field/rules', 'model_name', 'Model name', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2320, 0, 'en', 'plugins/custom-field/rules', 'model_name_page', 'Page', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2321, 0, 'en', 'plugins/custom-field/rules', 'category', 'Category', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2322, 0, 'en', 'plugins/custom-field/rules', 'post_with_related_category', 'Post with related category', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2323, 0, 'en', 'plugins/custom-field/rules', 'model_name_post', 'Post (blog)', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2324, 0, 'en', 'plugins/custom-field/rules', 'model_name_category', 'Category (blog)', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2325, 0, 'en', 'plugins/custom-field/rules', 'post_format', 'Post format', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2326, 0, 'vi', 'plugins/custom-field/base', 'admin_menu.title', 'Trường tùy chỉnh', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2327, 0, 'vi', 'plugins/custom-field/base', 'page_title', 'Trường tùy chỉnh', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2328, 0, 'vi', 'plugins/custom-field/base', 'all_field_groups', 'Tất cả nhóm trường tùy chỉnh', '2022-04-20 19:52:58', '2022-04-20 19:53:12');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2329, 0, 'vi', 'plugins/custom-field/base', 'form.create_field_group', 'Thêm nhóm trường mới', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2330, 0, 'vi', 'plugins/custom-field/base', 'form.edit_field_group', 'Chỉnh sửa trường tùy chỉnh', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2331, 0, 'vi', 'plugins/custom-field/base', 'form.field_items_information', 'Thiết đặt các mục con của trường này', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2332, 0, 'vi', 'plugins/custom-field/base', 'form.repeater_fields', 'Bộ lặp', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2333, 0, 'vi', 'plugins/custom-field/base', 'form.add_field', 'Thêm trường', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2334, 0, 'vi', 'plugins/custom-field/base', 'form.remove_field', 'Xóa trường này', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2335, 0, 'vi', 'plugins/custom-field/base', 'form.close_field', 'Thu nhỏ trường này lại', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2336, 0, 'vi', 'plugins/custom-field/base', 'form.field_label', 'Nhãn', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2337, 0, 'vi', 'plugins/custom-field/base', 'form.field_label_helper', 'Đây là tiêu đề của từng trường, xuất hiện ở các trang chỉnh sửa', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2338, 0, 'vi', 'plugins/custom-field/base', 'form.field_name', 'Tên truy nhập trường', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2339, 0, 'vi', 'plugins/custom-field/base', 'form.field_name_helper', 'Tên truy nhập của trường. Chỉ chấp nhận ký tự thường và dấu gạch dưới', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2340, 0, 'vi', 'plugins/custom-field/base', 'form.field_type', 'Kiểu trường', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2341, 0, 'vi', 'plugins/custom-field/base', 'form.field_type_helper', 'Vui lòng chọn một kiểu phù hợp cho bạn', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2342, 0, 'vi', 'plugins/custom-field/base', 'form.field_instructions', 'Hướng dẫn nhập liệu cho trường', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2343, 0, 'vi', 'plugins/custom-field/base', 'form.field_instructions_helper', 'Hướng dẫn nhập liệu từng trường cho người nhập liệu. Hiển thị ở các trang chỉnh sửa', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2344, 0, 'vi', 'plugins/custom-field/base', 'form.default_value', 'Giá trị mặc định', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2345, 0, 'vi', 'plugins/custom-field/base', 'form.default_value_helper', 'Tự động khởi tạo khi trường bị để trống', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2346, 0, 'vi', 'plugins/custom-field/base', 'form.placeholder', 'Mô tả trường', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2347, 0, 'vi', 'plugins/custom-field/base', 'form.placeholder_helper', 'Xuất hiện ngay bên trong mục nhập khi trường bị để trống', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2348, 0, 'vi', 'plugins/custom-field/base', 'form.rows', 'Số dòng', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2349, 0, 'vi', 'plugins/custom-field/base', 'form.rows_helper', 'Số dòng được khởi tạo khi sử dụng trường textarea', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2354, 0, 'vi', 'plugins/custom-field/base', 'form.choices', 'Các mục lựa chọn', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2355, 0, 'vi', 'plugins/custom-field/base', 'form.choices_helper', 'Nhập mỗi lựa chọn trên một dòng mới. <br> Để quản lý tốt hơn, bạn có thể cần phải xác định rõ cả nhãn và giá trị lựa chọn như sau: <br> red: Red <br> blue: Blue', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2356, 0, 'vi', 'plugins/custom-field/base', 'form.button_label', 'Nhãn cho nút thêm mới bộ lặp', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2357, 0, 'vi', 'plugins/custom-field/base', 'form.groups.basic', 'Cơ bản', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2358, 0, 'vi', 'plugins/custom-field/base', 'form.groups.content', 'Nội dung', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2359, 0, 'vi', 'plugins/custom-field/base', 'form.groups.choice', 'Lựa chọn', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2360, 0, 'vi', 'plugins/custom-field/base', 'form.groups.other', 'Khác', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2361, 0, 'vi', 'plugins/custom-field/base', 'form.types.text', 'Văn bản', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2362, 0, 'vi', 'plugins/custom-field/base', 'form.types.textarea', 'Văn bản nhiều dòng', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2363, 0, 'vi', 'plugins/custom-field/base', 'form.types.number', 'Số', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2364, 0, 'vi', 'plugins/custom-field/base', 'form.types.email', 'Thư điện tử', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2365, 0, 'vi', 'plugins/custom-field/base', 'form.types.password', 'Mật khẩu', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2366, 0, 'vi', 'plugins/custom-field/base', 'form.types.wysiwyg', 'Trình nhập liệu', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2367, 0, 'vi', 'plugins/custom-field/base', 'form.types.image', 'Hình ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2368, 0, 'vi', 'plugins/custom-field/base', 'form.types.file', 'Tập tin', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2369, 0, 'vi', 'plugins/custom-field/base', 'form.types.select', 'Thanh lựa chọn', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2370, 0, 'vi', 'plugins/custom-field/base', 'form.types.checkbox', 'Checkbox', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2371, 0, 'vi', 'plugins/custom-field/base', 'form.types.radio', 'Radio', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2372, 0, 'vi', 'plugins/custom-field/base', 'form.types.repeater', 'Bộ lặp', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2373, 0, 'vi', 'plugins/custom-field/base', 'form.rules.rules', 'Luật hiển thị', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2374, 0, 'vi', 'plugins/custom-field/base', 'form.rules.rules_helper', 'Hiển thị nhóm trường này nếu', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2375, 0, 'vi', 'plugins/custom-field/base', 'form.rules.add_rule_group', 'Thêm nhóm luật mới', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2376, 0, 'vi', 'plugins/custom-field/base', 'form.rules.is_equal_to', 'Tương đương', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2377, 0, 'vi', 'plugins/custom-field/base', 'form.rules.is_not_equal_to', 'Khác với', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2378, 0, 'vi', 'plugins/custom-field/base', 'form.rules.and', 'Và', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2379, 0, 'vi', 'plugins/custom-field/base', 'form.rules.or', 'Hoặc', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2380, 0, 'vi', 'plugins/custom-field/base', 'import', 'Nhập dữ liệu', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2381, 0, 'vi', 'plugins/custom-field/base', 'export', 'Xuất dữ liệu', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2382, 0, 'vi', 'plugins/custom-field/rules', 'groups.basic', 'Cơ bản', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2383, 0, 'vi', 'plugins/custom-field/rules', 'groups.other', 'Khác', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2384, 0, 'vi', 'plugins/custom-field/rules', 'groups.blog', 'Blog', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2385, 0, 'vi', 'plugins/custom-field/rules', 'logged_in_user', 'Người đăng nhập hiện tại', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2386, 0, 'vi', 'plugins/custom-field/rules', 'logged_in_user_has_role', 'Người đăng nhập hiện tại có vai trò', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2387, 0, 'vi', 'plugins/custom-field/rules', 'page_template', 'Giao diện trang tĩnh', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2388, 0, 'vi', 'plugins/custom-field/rules', 'page', 'Trang tĩnh', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2389, 0, 'vi', 'plugins/custom-field/rules', 'model_name', 'Tên model', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2390, 0, 'vi', 'plugins/custom-field/rules', 'model_name_page', 'Trang tĩnh', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2391, 0, 'vi', 'plugins/custom-field/rules', 'category', 'Danh mục bài viết', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2392, 0, 'vi', 'plugins/custom-field/rules', 'post_with_related_category', 'Bài viết có danh mục', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2393, 0, 'vi', 'plugins/custom-field/rules', 'model_name_post', 'Bài viết (blog)', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2394, 0, 'vi', 'plugins/custom-field/rules', 'model_name_category', 'Danh mục (blog)', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2395, 0, 'vi', 'plugins/custom-field/rules', 'post_format', 'Định dạng bài viết', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2396, 0, 'en', 'plugins/gallery/gallery', 'create', 'Create new gallery', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2397, 0, 'en', 'plugins/gallery/gallery', 'edit', 'Edit gallery', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2398, 0, 'en', 'plugins/gallery/gallery', 'galleries', 'Galleries', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2399, 0, 'en', 'plugins/gallery/gallery', 'item', 'Gallery item', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2400, 0, 'en', 'plugins/gallery/gallery', 'select_image', 'Select images', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2401, 0, 'en', 'plugins/gallery/gallery', 'reset', 'Reset gallery', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2402, 0, 'en', 'plugins/gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2403, 0, 'en', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2404, 0, 'en', 'plugins/gallery/gallery', 'delete_photo', 'Delete this photo', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2405, 0, 'en', 'plugins/gallery/gallery', 'gallery_box', 'Gallery images', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2406, 0, 'en', 'plugins/gallery/gallery', 'by', 'By', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2407, 0, 'en', 'plugins/gallery/gallery', 'menu_name', 'Galleries', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2408, 0, 'en', 'plugins/gallery/gallery', 'gallery_images', 'Gallery images', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2409, 0, 'en', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Add a gallery', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2410, 0, 'en', 'plugins/gallery/gallery', 'shortcode_name', 'Gallery images', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2411, 0, 'en', 'plugins/gallery/gallery', 'limit_display', 'Limit number display', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2412, 0, 'vi', 'plugins/gallery/gallery', 'create', 'Tạo mới thư viện ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2413, 0, 'vi', 'plugins/gallery/gallery', 'edit', 'Sửa thư viện ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2414, 0, 'vi', 'plugins/gallery/gallery', 'delete_photo', 'Xóa ảnh này', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2415, 0, 'vi', 'plugins/gallery/gallery', 'galleries', 'Thư viện ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2416, 0, 'vi', 'plugins/gallery/gallery', 'item', 'Ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2417, 0, 'vi', 'plugins/gallery/gallery', 'reset', 'Làm mới thư viện', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2418, 0, 'vi', 'plugins/gallery/gallery', 'select_image', 'Lựa chọn hình ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2419, 0, 'vi', 'plugins/gallery/gallery', 'update_photo_description', 'Cập nhật mô tả cho hình ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2420, 0, 'vi', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Mô tả của hình ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2421, 0, 'vi', 'plugins/gallery/gallery', 'by', 'Bởi', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2422, 0, 'vi', 'plugins/gallery/gallery', 'gallery_box', 'Thư viện ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2423, 0, 'vi', 'plugins/gallery/gallery', 'menu_name', 'Thư viện ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2424, 0, 'vi', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Thêm thư viện ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2425, 0, 'vi', 'plugins/gallery/gallery', 'gallery_images', 'Thư viện ảnh', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2426, 0, 'en', 'plugins/language/language', 'name', 'Languages', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2427, 0, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2428, 0, 'en', 'plugins/language/language', 'select_language', 'Select language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2429, 0, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2430, 0, 'en', 'plugins/language/language', 'language_name', 'Language name', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2431, 0, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2432, 0, 'en', 'plugins/language/language', 'locale', 'Locale', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2433, 0, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2434, 0, 'en', 'plugins/language/language', 'language_code', 'Language code', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2435, 0, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2436, 0, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2437, 0, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2438, 0, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2439, 0, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2440, 0, 'en', 'plugins/language/language', 'flag', 'Flag', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2441, 0, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2442, 0, 'en', 'plugins/language/language', 'order', 'Order', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2443, 0, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2444, 0, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2445, 0, 'en', 'plugins/language/language', 'code', 'Code', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2446, 0, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2447, 0, 'en', 'plugins/language/language', 'actions', 'Actions', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2448, 0, 'en', 'plugins/language/language', 'translations', 'Translations', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2449, 0, 'en', 'plugins/language/language', 'edit', 'Edit', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2450, 0, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2451, 0, 'en', 'plugins/language/language', 'delete', 'Delete', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2452, 0, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2453, 0, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2454, 0, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2455, 0, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2456, 0, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2457, 0, 'en', 'plugins/language/language', 'settings', 'Settings', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2458, 0, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2459, 0, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2460, 0, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2461, 0, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2462, 0, 'en', 'plugins/language/language', 'language_display', 'Language display', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2463, 0, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2464, 0, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2465, 0, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2466, 0, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2467, 0, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2468, 0, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2469, 0, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2470, 0, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2471, 0, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2472, 0, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2473, 0, 'en', 'plugins/language/language', 'show_all', 'Show all', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2474, 0, 'en', 'plugins/language/language', 'change_language', 'Language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2475, 0, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2476, 0, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2477, 0, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2478, 0, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2479, 0, 'en', 'plugins/language/language', 'language_auto_detect_user_language', 'Auto detect user language?', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2480, 0, 'vi', 'plugins/language/language', 'name', 'Ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2481, 0, 'vi', 'plugins/language/language', 'choose_language', 'Chọn một ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2482, 0, 'vi', 'plugins/language/language', 'select_language', 'Chọn ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2483, 0, 'vi', 'plugins/language/language', 'choose_language_helper', 'Bạn có thể chọn 1 ngôn ngữ trong danh sách hoặc nhập trực tiếp nội dung xuống các mục dưới', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2484, 0, 'vi', 'plugins/language/language', 'language_name', 'Tên đầy đủ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2485, 0, 'vi', 'plugins/language/language', 'language_name_helper', 'Tên ngôn ngữ sẽ được hiển thị trên website (ví dụ: Tiếng Anh).', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2486, 0, 'vi', 'plugins/language/language', 'locale', 'Locale', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2487, 0, 'vi', 'plugins/language/language', 'locale_helper', 'Laravel Locale cho ngôn ngữ này (ví dụ: <code>en</code>).', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2488, 0, 'vi', 'plugins/language/language', 'language_code', 'Mã ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2489, 0, 'vi', 'plugins/language/language', 'language_code_helper', 'Mã ngôn ngữ - ưu tiên dạng 2-kí tự theo chuẩn ISO 639-1 (ví dụ: en)', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2490, 0, 'vi', 'plugins/language/language', 'text_direction', 'Hướng viết chữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2491, 0, 'vi', 'plugins/language/language', 'text_direction_helper', 'Chọn hướng viết chữ cho ngôn ngữ này', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2492, 0, 'vi', 'plugins/language/language', 'left_to_right', 'Trái qua phải', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2493, 0, 'vi', 'plugins/language/language', 'right_to_left', 'Phải qua trái', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2494, 0, 'vi', 'plugins/language/language', 'flag', 'Cờ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2495, 0, 'vi', 'plugins/language/language', 'flag_helper', 'Chọn 1 cờ cho ngôn ngữ này', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2496, 0, 'vi', 'plugins/language/language', 'order', 'Sắp xếp', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2497, 0, 'vi', 'plugins/language/language', 'order_helper', 'Vị trí của ngôn ngữ hiển thị trong mục chuyển đổi ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2498, 0, 'vi', 'plugins/language/language', 'add_new_language', 'Thêm ngôn ngữ mới', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2499, 0, 'vi', 'plugins/language/language', 'code', 'Mã', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2500, 0, 'vi', 'plugins/language/language', 'default_language', 'Ngôn ngữ mặc định', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2501, 0, 'vi', 'plugins/language/language', 'actions', 'Hành động', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2502, 0, 'vi', 'plugins/language/language', 'translations', 'Dịch', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2503, 0, 'vi', 'plugins/language/language', 'edit', 'Sửa', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2504, 0, 'vi', 'plugins/language/language', 'edit_tooltip', 'Sửa ngôn ngữ này', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2505, 0, 'vi', 'plugins/language/language', 'delete', 'Xóa', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2506, 0, 'vi', 'plugins/language/language', 'delete_tooltip', 'Xóa ngôn ngữ này và các dữ liệu liên quan', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2507, 0, 'vi', 'plugins/language/language', 'choose_default_language', 'Chọn :language làm ngôn ngữ mặc định', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2508, 0, 'vi', 'plugins/language/language', 'add_language_for_item', 'Thêm ngôn ngữ khác cho bản ghi này', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2509, 0, 'vi', 'plugins/language/language', 'current_language', 'Ngôn ngữ hiện tại của bản ghi', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2510, 0, 'vi', 'plugins/language/language', 'edit_related', 'Sửa bản ngôn ngữ khác của bản ghi này', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2511, 0, 'vi', 'plugins/language/language', 'confirm-change-language', 'Xác nhận thay đổi ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2512, 0, 'vi', 'plugins/language/language', 'confirm-change-language-btn', 'Xác nhận thay đổi', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2513, 0, 'vi', 'plugins/language/language', 'confirm-change-language-message', 'Bạn có chắc chắn muốn thay đổi ngôn ngữ sang tiếng \"<strong class=\"change_to_language_text\"></strong>\" ? Điều này sẽ ghi đè bản ghi tiếng \"<strong class=\"change_to_language_text\"></strong>\" nếu nó đã tồn tại!', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2514, 0, 'vi', 'plugins/language/language', 'current_language_edit_notification', 'Bạn đang chỉnh sửa phiên bản tiếng \"<strong class=\"current_language_text\">:language</strong>\"', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2515, 0, 'vi', 'plugins/language/language', 'hide_languages', 'Ẩn ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2516, 0, 'vi', 'plugins/language/language', 'hide_languages_description', 'Bạn có thể hoàn toàn ẩn ngôn ngữ cụ thể đối với người truy cập và công cụ tìm kiếm, nhưng sẽ vẫn hiển thị trong trang quản trị. Điều này cho phép bạn biết những ngôn ngữ nào đang được xử lý.', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2517, 0, 'vi', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} Tất cả ngôn ngữ đang được hiển thị.|{1} :language đang bị ẩn đối với người truy cập.|[2, Inf]  :language đang bị ẩn đối với người truy cập.', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2518, 0, 'vi', 'plugins/language/language', 'language_display', 'Hiển thị ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2519, 0, 'vi', 'plugins/language/language', 'language_display_all', 'Hiển thị cả cờ và tên ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2520, 0, 'vi', 'plugins/language/language', 'language_display_flag_only', 'Chỉ hiển thị cờ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2521, 0, 'vi', 'plugins/language/language', 'language_display_name_only', 'Chỉ hiển thị tên', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2522, 0, 'vi', 'plugins/language/language', 'language_hide_default', 'Ẩn ngôn ngữ mặc định trên URL', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2523, 0, 'vi', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2524, 0, 'vi', 'plugins/language/language', 'language_switcher_display_list', 'Danh sách', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2525, 0, 'vi', 'plugins/language/language', 'settings', 'Cài đặt', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2526, 0, 'vi', 'plugins/language/language', 'switcher_display', 'Hiển thị bộ chuyển đổi ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2527, 0, 'vi', 'plugins/language/language', 'change_language', 'Ngôn ngữ', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2528, 0, 'vi', 'plugins/language/language', 'show_all', 'Hiển thị tất cả', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2529, 0, 'vi', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Hiển thị bản ghi ở ngôn ngữ mặc định nếu phiên bản cho ngôn ngữ hiện tại chưa có', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2530, 0, 'en', 'plugins/member/dashboard', 'joined_on', 'Joined :date', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2531, 0, 'en', 'plugins/member/dashboard', 'dob', 'Born :date', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2532, 0, 'en', 'plugins/member/dashboard', 'email', 'Email', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2533, 0, 'en', 'plugins/member/dashboard', 'password', 'Password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2534, 0, 'en', 'plugins/member/dashboard', 'password-confirmation', 'Confirm Password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2535, 0, 'en', 'plugins/member/dashboard', 'remember-me', 'Remember Me', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2536, 0, 'en', 'plugins/member/dashboard', 'login-title', 'Login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2537, 0, 'en', 'plugins/member/dashboard', 'login-cta', 'Login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2538, 0, 'en', 'plugins/member/dashboard', 'register-title', 'Register', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2539, 0, 'en', 'plugins/member/dashboard', 'register-cta', 'Register', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2540, 0, 'en', 'plugins/member/dashboard', 'forgot-password-cta', 'Forgot Your Password?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2541, 0, 'en', 'plugins/member/dashboard', 'name', 'Name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2542, 0, 'en', 'plugins/member/dashboard', 'reset-password-title', 'Reset Password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2543, 0, 'en', 'plugins/member/dashboard', 'reset-password-cta', 'Reset Password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2544, 0, 'en', 'plugins/member/dashboard', 'cancel-link', 'Cancel', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2545, 0, 'en', 'plugins/member/dashboard', 'logout-cta', 'Logout', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2546, 0, 'en', 'plugins/member/dashboard', 'header_profile_link', 'Profile', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2547, 0, 'en', 'plugins/member/dashboard', 'header_settings_link', 'Settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2548, 0, 'en', 'plugins/member/dashboard', 'header_logout_link', 'Logout', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2549, 0, 'en', 'plugins/member/dashboard', 'unknown_state', 'Unknown', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2550, 0, 'en', 'plugins/member/dashboard', 'close', 'Close', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2551, 0, 'en', 'plugins/member/dashboard', 'save', 'Save', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2552, 0, 'en', 'plugins/member/dashboard', 'loading', 'Loading...', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2553, 0, 'en', 'plugins/member/dashboard', 'new_image', 'New image', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2554, 0, 'en', 'plugins/member/dashboard', 'change_profile_image', 'Change avatar', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2555, 0, 'en', 'plugins/member/dashboard', 'save_cropped_image_failed', 'Save cropped image failed!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2556, 0, 'en', 'plugins/member/dashboard', 'failed_to_crop_image', 'Failed to crop image', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2557, 0, 'en', 'plugins/member/dashboard', 'failed_to_load_data', 'Failed to load data', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2558, 0, 'en', 'plugins/member/dashboard', 'read_image_failed', 'Read image failed', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2559, 0, 'en', 'plugins/member/dashboard', 'update_avatar_success', 'Update avatar successfully!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2560, 0, 'en', 'plugins/member/dashboard', 'change_avatar_description', 'Click on image to change avatar', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2561, 0, 'en', 'plugins/member/dashboard', 'notices.error', 'Error!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2562, 0, 'en', 'plugins/member/dashboard', 'notices.success', 'Success!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2563, 0, 'en', 'plugins/member/dashboard', 'sidebar_title', 'Personal settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2564, 0, 'en', 'plugins/member/dashboard', 'sidebar_information', 'Account Information', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2565, 0, 'en', 'plugins/member/dashboard', 'sidebar_security', 'Security', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2566, 0, 'en', 'plugins/member/dashboard', 'account_field_title', 'Account Information', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2567, 0, 'en', 'plugins/member/dashboard', 'profile-picture', 'Profile picture', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2568, 0, 'en', 'plugins/member/dashboard', 'uploading', 'Uploading...', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2569, 0, 'en', 'plugins/member/dashboard', 'phone', 'Phone', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2570, 0, 'en', 'plugins/member/dashboard', 'first_name', 'First name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2571, 0, 'en', 'plugins/member/dashboard', 'last_name', 'Last name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2572, 0, 'en', 'plugins/member/dashboard', 'description', 'Short description', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2573, 0, 'en', 'plugins/member/dashboard', 'description_placeholder', 'Tell something about yourself...', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2574, 0, 'en', 'plugins/member/dashboard', 'verified', 'Verified', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2575, 0, 'en', 'plugins/member/dashboard', 'verify_require_desc', 'Please verify email by link we sent to you.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2576, 0, 'en', 'plugins/member/dashboard', 'birthday', 'Birthday', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2577, 0, 'en', 'plugins/member/dashboard', 'year_lc', 'year', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2578, 0, 'en', 'plugins/member/dashboard', 'month_lc', 'month', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2579, 0, 'en', 'plugins/member/dashboard', 'day_lc', 'day', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2580, 0, 'en', 'plugins/member/dashboard', 'gender', 'Gender', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2581, 0, 'en', 'plugins/member/dashboard', 'gender_male', 'Male', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2582, 0, 'en', 'plugins/member/dashboard', 'gender_female', 'Female', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2583, 0, 'en', 'plugins/member/dashboard', 'gender_other', 'Other', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2584, 0, 'en', 'plugins/member/dashboard', 'security_title', 'Security', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2585, 0, 'en', 'plugins/member/dashboard', 'current_password', 'Current password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2586, 0, 'en', 'plugins/member/dashboard', 'password_new', 'New password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2587, 0, 'en', 'plugins/member/dashboard', 'password_new_confirmation', 'Confirmation password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2588, 0, 'en', 'plugins/member/dashboard', 'password_update_btn', 'Update password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2589, 0, 'en', 'plugins/member/dashboard', 'activity_logs', 'Activity Logs', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2590, 0, 'en', 'plugins/member/dashboard', 'oops', 'Oops!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2591, 0, 'en', 'plugins/member/dashboard', 'no_activity_logs', 'You have no activity logs yet', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2592, 0, 'en', 'plugins/member/dashboard', 'actions.create_post', 'You have created post \":name\"', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2593, 0, 'en', 'plugins/member/dashboard', 'actions.update_post', 'You have updated post \":name\"', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2594, 0, 'en', 'plugins/member/dashboard', 'actions.delete_post', 'You have deleted post \":name\"', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2595, 0, 'en', 'plugins/member/dashboard', 'actions.update_setting', 'You have updated your settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2596, 0, 'en', 'plugins/member/dashboard', 'actions.update_security', 'You have updated your security settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2597, 0, 'en', 'plugins/member/dashboard', 'actions.your_post_updated_by_admin', 'Your post \":name\" is updated by administrator', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2598, 0, 'en', 'plugins/member/dashboard', 'actions.changed_avatar', 'You have changed your avatar', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2599, 0, 'en', 'plugins/member/dashboard', 'load_more', 'Load more', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2600, 0, 'en', 'plugins/member/dashboard', 'loading_more', 'Loading...', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2601, 0, 'en', 'plugins/member/dashboard', 'back-to-login', 'Back to login page', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2602, 0, 'en', 'plugins/member/member', 'create', 'New member', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2603, 0, 'en', 'plugins/member/member', 'edit', 'Edit member', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2604, 0, 'en', 'plugins/member/member', 'menu_name', 'Members', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2605, 0, 'en', 'plugins/member/member', 'confirmation_subject', 'Email verification', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2606, 0, 'en', 'plugins/member/member', 'confirmation_subject_title', 'Verify your email', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2607, 0, 'en', 'plugins/member/member', 'not_confirmed', 'The given email address has not been confirmed. <a href=\":resend_link\">Resend confirmation link.</a>', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2608, 0, 'en', 'plugins/member/member', 'confirmation_successful', 'You successfully confirmed your email address.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2609, 0, 'en', 'plugins/member/member', 'confirmation_info', 'Please confirm your email address.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2610, 0, 'en', 'plugins/member/member', 'confirmation_resent', 'We sent you another confirmation email. You should receive it shortly.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2611, 0, 'en', 'plugins/member/member', 'form.email', 'Email', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2612, 0, 'en', 'plugins/member/member', 'form.password', 'Password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2613, 0, 'en', 'plugins/member/member', 'form.password_confirmation', 'Password confirmation', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2614, 0, 'en', 'plugins/member/member', 'form.change_password', 'Change password?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2615, 0, 'en', 'plugins/member/member', 'forgot_password', 'Forgot password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2616, 0, 'en', 'plugins/member/member', 'login', 'Login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2617, 0, 'en', 'plugins/member/member', 'settings.email.title', 'Member', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2618, 0, 'en', 'plugins/member/member', 'settings.email.description', 'Member email configuration', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2619, 0, 'en', 'plugins/member/member', 'first_name', 'First Name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2620, 0, 'en', 'plugins/member/member', 'last_name', 'Last Name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2621, 0, 'en', 'plugins/member/member', 'email_placeholder', 'Ex: example@gmail.com', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2622, 0, 'en', 'plugins/member/member', 'write_a_post', 'Write a post', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2623, 0, 'en', 'plugins/member/member', 'phone', 'Phone', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2624, 0, 'en', 'plugins/member/member', 'phone_placeholder', 'Phone', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2625, 0, 'en', 'plugins/member/member', 'confirmed_at', 'Confirmed at', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2626, 0, 'en', 'plugins/member/member', 'avatar', 'Avatar', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2627, 0, 'en', 'plugins/member/member', 'dob', 'Date of birth', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2628, 0, 'en', 'plugins/member/settings', 'title', 'Member', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2629, 0, 'en', 'plugins/member/settings', 'description', 'Settings for members', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2630, 0, 'en', 'plugins/member/settings', 'verify_account_email', 'Verify account\'s email?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2631, 0, 'en', 'plugins/member/settings', 'verify_account_email_description', 'Need to config email in Admin -> Settings -> Email to send email verification.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2632, 0, 'en', 'plugins/member/settings', 'enable_recaptcha_in_register_page', 'Enable Recaptcha in the registration page?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2633, 0, 'en', 'plugins/member/settings', 'enable_recaptcha_in_register_page_description', 'Need to setup Captcha in Admin -> Settings -> General first.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2634, 0, 'en', 'plugins/request-log/request-log', 'name', 'Request Logs', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2635, 0, 'en', 'plugins/request-log/request-log', 'status_code', 'Status Code', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2636, 0, 'en', 'plugins/request-log/request-log', 'no_request_error', 'No request error now!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2637, 0, 'en', 'plugins/request-log/request-log', 'widget_request_errors', 'Request Errors', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2638, 0, 'en', 'plugins/request-log/request-log', 'count', 'Count', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2639, 0, 'en', 'plugins/request-log/request-log', 'delete_all', 'Delete all records', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2640, 0, 'vi', 'plugins/request-log/request-log', 'name', 'Lịch sử lỗi', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2641, 0, 'vi', 'plugins/request-log/request-log', 'status_code', 'Mã lỗi', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2642, 0, 'vi', 'plugins/request-log/request-log', 'no_request_error', 'Hiện tại không có lỗi nào cả!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2643, 0, 'vi', 'plugins/request-log/request-log', 'widget_request_errors', 'Liên kết bị hỏng', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2644, 0, 'vi', 'plugins/request-log/request-log', 'count', 'Số lần', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2645, 0, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2646, 0, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2647, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2648, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2649, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2650, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2651, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2652, 0, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2653, 0, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2654, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2655, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2656, 0, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2657, 0, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2658, 0, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2659, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2660, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2661, 0, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2662, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2663, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2664, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2665, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2666, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2667, 0, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2668, 0, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2669, 0, 'vi', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2670, 0, 'vi', 'plugins/social-login/social-login', 'settings.description', 'Cấu hình tùy chọn đăng nhập thông qua mạng xã hội', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2671, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2672, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2673, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2674, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2675, 0, 'vi', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2676, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2677, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2678, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2679, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2680, 0, 'vi', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2681, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2682, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2683, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2684, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2685, 0, 'vi', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2686, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2687, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2022-04-20 19:52:59', '2022-04-20 19:53:13');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2688, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2689, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2690, 0, 'vi', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2691, 0, 'vi', 'plugins/social-login/social-login', 'settings.enable', 'Bật?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2692, 0, 'vi', 'plugins/social-login/social-login', 'menu', 'Đăng nhập mạng xã hội', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2693, 0, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2694, 0, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2695, 0, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2696, 0, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2697, 0, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2698, 0, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2699, 0, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2700, 0, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2701, 0, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2702, 0, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2703, 0, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2704, 0, 'en', 'plugins/translation/translation', 'back', 'Back', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2705, 0, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2706, 0, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2707, 0, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2708, 0, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2709, 0, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2710, 0, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2711, 0, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2712, 0, 'en', 'plugins/translation/translation', 'to', 'to', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2713, 0, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2714, 0, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2715, 0, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2716, 0, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2717, 0, 'en', 'plugins/translation/translation', 'name', 'Name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2718, 0, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2719, 0, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2720, 0, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2721, 0, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2722, 0, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2723, 0, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2724, 0, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2725, 0, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2726, 0, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2727, 0, 'en', 'plugins/translation/translation', 'download', 'Download', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2728, 0, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2729, 0, 'en', 'plugins/translation/translation', 'theme_translations_instruction', 'Click on text to translate. Do NOT translate variables, Eg. :username, :query, :link...', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2730, 0, 'vi', 'plugins/translation/translation', 'append_translation', 'Tiếp nối bản dịch', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2731, 0, 'vi', 'plugins/translation/translation', 'back', 'Quay lại', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2732, 0, 'vi', 'plugins/translation/translation', 'choose_a_group', 'Chọn một nhóm', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2733, 0, 'vi', 'plugins/translation/translation', 'choose_group_msg', 'Chọn một nhóm để hiển thị nhóm dịch thuật. Nếu nhóm không có sẵn, hãy chắc chắn là bạn đã chạy migrations và nhập dữ liệu dịch thuật.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2734, 0, 'vi', 'plugins/translation/translation', 'confirm_publish_group', 'Bạn có chắc muốn xuất bản nhóm \":group\"? Điều này sẽ ghi đè tập tin ngôn ngữ hiện tại.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2735, 0, 'vi', 'plugins/translation/translation', 'done_publishing', 'Xuất bản nhóm dịch thuật thành công', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2736, 0, 'vi', 'plugins/translation/translation', 'edit_title', 'Nhập nội dung dịch', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2737, 0, 'vi', 'plugins/translation/translation', 'export_warning', 'Cảnh báo, bản dịch sẽ không có sẵn cho đến khi chúng được xuất bản lại vào thư mục /resources/lang, sử dụng lệnh \'php artisan cms:translations:export\' hoặc sử dụng nút xuất bản', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2738, 0, 'vi', 'plugins/translation/translation', 'import_done', 'Nhập hoàn thành, đã xử lý :counter bản ghi!  ', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2739, 0, 'vi', 'plugins/translation/translation', 'import_group', 'Nhập nhóm', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2740, 0, 'vi', 'plugins/translation/translation', 'publish_translations', 'Xuất bản dịch thuật', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2741, 0, 'vi', 'plugins/translation/translation', 'replace_translation', 'Thay thế bản dịch hiện tại', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2742, 0, 'vi', 'plugins/translation/translation', 'translation_manager', 'Quản lý dịch thuật', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2743, 0, 'vi', 'plugins/translation/translation', 'translations', 'Dịch thuật', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2744, 0, 'vi', 'plugins/translation/translation', 'translations_description', 'Dịch tất cả các từ trong hệ thống', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2745, 0, 'vi', 'plugins/translation/translation', 'actions', 'Hành động', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2746, 0, 'vi', 'plugins/translation/translation', 'add_new_language', 'Thêm ngôn ngữ mới', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2747, 0, 'vi', 'plugins/translation/translation', 'admin-translations', 'Dịch các mục khác', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2748, 0, 'vi', 'plugins/translation/translation', 'choose_language', 'Chọn ngôn ngữ', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2749, 0, 'vi', 'plugins/translation/translation', 'default_locale', 'Ngôn ngữ mặc định', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2750, 0, 'vi', 'plugins/translation/translation', 'delete', 'Xóa', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2751, 0, 'vi', 'plugins/translation/translation', 'edit', 'Sửa', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2752, 0, 'vi', 'plugins/translation/translation', 'flag', 'Cờ', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2753, 0, 'vi', 'plugins/translation/translation', 'locale', 'Ngôn ngữ', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2754, 0, 'vi', 'plugins/translation/translation', 'locales', 'Ngôn ngữ', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2755, 0, 'vi', 'plugins/translation/translation', 'name', 'Tên', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2756, 0, 'vi', 'plugins/translation/translation', 'no_other_languages', 'Không còn ngôn ngữ nào khác để dịch!', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2757, 0, 'vi', 'plugins/translation/translation', 'select_language', 'Lựa chọn ngôn ngữ', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2758, 0, 'vi', 'plugins/translation/translation', 'theme-translations', 'Dịch giao diện', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2759, 0, 'vi', 'plugins/translation/translation', 'to', 'sang', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2760, 0, 'vi', 'plugins/translation/translation', 'translate_from', 'Dịch từ', '2022-04-20 19:53:00', '2022-04-20 19:53:13'),
(2761, 0, 'vi', 'auth', 'failed', 'Không tìm thấy thông tin đăng nhập hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:10'),
(2762, 0, 'vi', 'auth', 'throttle', 'Đăng nhập không đúng quá nhiều lần. Vui lòng thử lại sau :seconds giây.', '2022-04-20 19:53:00', '2022-04-20 19:53:10'),
(2763, 0, 'vi', 'auth', 'password', 'Mật khẩu không chính xác', '2022-04-20 19:53:00', '2022-04-20 19:53:10'),
(2764, 0, 'vi', 'pagination', 'previous', '&laquo; Trước', '2022-04-20 19:53:00', '2022-04-20 19:53:10'),
(2765, 0, 'vi', 'pagination', 'next', 'Sau &raquo;', '2022-04-20 19:53:00', '2022-04-20 19:53:10'),
(2766, 0, 'vi', 'passwords', 'reset', 'Mật khẩu đã được cập nhật!', '2022-04-20 19:53:00', '2022-04-20 19:53:10'),
(2767, 0, 'vi', 'passwords', 'sent', 'Chúng tôi đã gửi cho bạn đường dẫn thay đổi mật khẩu!', '2022-04-20 19:53:00', '2022-04-20 19:53:10'),
(2768, 0, 'vi', 'passwords', 'token', 'Mã xác nhận mật khẩu không hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:10'),
(2769, 0, 'vi', 'passwords', 'user', 'Không tìm thấy thành viên với địa chỉ email này.', '2022-04-20 19:53:00', '2022-04-20 19:53:10'),
(2770, 0, 'vi', 'validation', 'accepted', 'Trường :attribute phải được chấp nhận.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2771, 0, 'vi', 'validation', 'active_url', 'Trường :attribute không phải là một URL hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2772, 0, 'vi', 'validation', 'after', 'Trường :attribute phải là một ngày sau ngày :date.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2773, 0, 'vi', 'validation', 'after_or_equal', 'Trường :attribute phải là thời gian bắt đầu sau hoặc đúng bằng :date.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2774, 0, 'vi', 'validation', 'alpha', 'Trường :attribute chỉ có thể chứa các chữ cái.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2775, 0, 'vi', 'validation', 'alpha_dash', 'Trường :attribute chỉ có thể chứa chữ cái, số và dấu gạch ngang.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2776, 0, 'vi', 'validation', 'alpha_num', 'Trường :attribute chỉ có thể chứa chữ cái và số.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2777, 0, 'vi', 'validation', 'array', 'Trường :attribute phải là dạng mảng.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2778, 0, 'vi', 'validation', 'before', 'Trường :attribute phải là một ngày trước ngày :date.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2779, 0, 'vi', 'validation', 'before_or_equal', 'Trường :attribute phải là thời gian bắt đầu trước hoặc đúng bằng :date.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2780, 0, 'vi', 'validation', 'between.array', 'Trường :attribute phải có từ :min - :max phần tử.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2781, 0, 'vi', 'validation', 'between.file', 'Dung lượng tập tin trong trường :attribute phải từ :min - :max kB.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2782, 0, 'vi', 'validation', 'between.numeric', 'Trường :attribute phải nằm trong khoảng :min - :max.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2783, 0, 'vi', 'validation', 'between.string', 'Trường :attribute phải từ :min - :max kí tự.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2784, 0, 'vi', 'validation', 'boolean', 'Trường :attribute phải là true hoặc false.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2785, 0, 'vi', 'validation', 'confirmed', 'Giá trị xác nhận trong trường :attribute không khớp.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2786, 0, 'vi', 'validation', 'date', 'Trường :attribute không phải là định dạng của ngày-tháng.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2787, 0, 'vi', 'validation', 'date_equals', 'Trường :attribute phải là một ngày bằng với :date.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2788, 0, 'vi', 'validation', 'date_format', 'Trường :attribute không giống với định dạng :format.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2789, 0, 'vi', 'validation', 'different', 'Trường :attribute và :other phải khác nhau.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2790, 0, 'vi', 'validation', 'digits', 'Độ dài của trường :attribute phải gồm :digits chữ số.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2791, 0, 'vi', 'validation', 'digits_between', 'Độ dài của trường :attribute phải nằm trong khoảng :min and :max chữ số.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2792, 0, 'vi', 'validation', 'dimensions', 'Trường :attribute có kích thước không hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2793, 0, 'vi', 'validation', 'distinct', 'Trường :attribute có giá trị trùng lặp.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2794, 0, 'vi', 'validation', 'email', 'Trường :attribute phải là một địa chỉ email hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2795, 0, 'vi', 'validation', 'ends_with', 'Trường :attribute phải kết thúc bằng một trong những giá trị sau: :values', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2796, 0, 'vi', 'validation', 'exists', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2797, 0, 'vi', 'validation', 'file', 'Trường :attribute phải là một tệp tin.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2798, 0, 'vi', 'validation', 'filled', 'Trường :attribute không được bỏ trống.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2799, 0, 'vi', 'validation', 'gt.array', 'Mảng :attribute phải có nhiều hơn :value phần tử.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2800, 0, 'vi', 'validation', 'gt.file', 'Dung lượng trường :attribute phải lớn hơn :value kilobytes.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2801, 0, 'vi', 'validation', 'gt.numeric', 'Giá trị trường :attribute phải lớn hơn :value.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2802, 0, 'vi', 'validation', 'gt.string', 'Độ dài trường :attribute phải nhiều hơn :value kí tự.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2803, 0, 'vi', 'validation', 'gte.array', 'Mảng :attribute phải có ít nhất :value phần tử.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2804, 0, 'vi', 'validation', 'gte.file', 'Dung lượng trường :attribute phải lớn hơn hoặc bằng :value kilobytes.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2805, 0, 'vi', 'validation', 'gte.numeric', 'Giá trị trường :attribute phải lớn hơn hoặc bằng :value.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2806, 0, 'vi', 'validation', 'gte.string', 'Độ dài trường :attribute phải lớn hơn hoặc bằng :value kí tự.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2807, 0, 'vi', 'validation', 'image', 'Trường :attribute phải là định dạng hình ảnh.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2808, 0, 'vi', 'validation', 'in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2809, 0, 'vi', 'validation', 'in_array', 'Trường :attribute phải thuộc tập cho phép: :other.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2810, 0, 'vi', 'validation', 'integer', 'Trường :attribute phải là một số nguyên.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2811, 0, 'vi', 'validation', 'ip', 'Trường :attribute phải là một địa chỉ IP.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2812, 0, 'vi', 'validation', 'ipv4', 'Trường :attribute phải là một địa chỉ IPv4.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2813, 0, 'vi', 'validation', 'ipv6', 'Trường :attribute phải là một địa chỉ IPv6.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2814, 0, 'vi', 'validation', 'json', 'Trường :attribute phải là một chuỗi JSON.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2815, 0, 'vi', 'validation', 'lt.array', 'Mảng :attribute phải có ít hơn :value phần tử.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2816, 0, 'vi', 'validation', 'lt.file', 'Dung lượng trường :attribute phải nhỏ hơn :value kilobytes.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2817, 0, 'vi', 'validation', 'lt.numeric', 'Giá trị trường :attribute phải nhỏ hơn :value.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2818, 0, 'vi', 'validation', 'lt.string', 'Độ dài trường :attribute phải nhỏ hơn :value kí tự.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2819, 0, 'vi', 'validation', 'lte.array', 'Mảng :attribute không được có nhiều hơn :value phần tử.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2820, 0, 'vi', 'validation', 'lte.file', 'Dung lượng trường :attribute phải nhỏ hơn hoặc bằng :value kilobytes.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2821, 0, 'vi', 'validation', 'lte.numeric', 'Giá trị trường :attribute phải nhỏ hơn hoặc bằng :value.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2822, 0, 'vi', 'validation', 'lte.string', 'Độ dài trường :attribute phải nhỏ hơn hoặc bằng :value kí tự.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2823, 0, 'vi', 'validation', 'max.array', 'Trường :attribute không được lớn hơn :max phần tử.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2824, 0, 'vi', 'validation', 'max.file', 'Dung lượng tập tin trong trường :attribute không được lớn hơn :max kB.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2825, 0, 'vi', 'validation', 'max.numeric', 'Trường :attribute không được lớn hơn :max.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2826, 0, 'vi', 'validation', 'max.string', 'Trường :attribute không được lớn hơn :max kí tự.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2827, 0, 'vi', 'validation', 'mimes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2828, 0, 'vi', 'validation', 'mimetypes', 'Trường :attribute phải là một tập tin có định dạng: :values.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2829, 0, 'vi', 'validation', 'min.array', 'Trường :attribute phải có tối thiểu :min phần tử.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2830, 0, 'vi', 'validation', 'min.file', 'Dung lượng tập tin trong trường :attribute phải tối thiểu :min kB.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2831, 0, 'vi', 'validation', 'min.numeric', 'Trường :attribute phải tối thiểu là :min.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2832, 0, 'vi', 'validation', 'min.string', 'Trường :attribute phải có tối thiểu :min kí tự.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2833, 0, 'vi', 'validation', 'multiple_of', 'Trường :attribute phải là bội số của :value', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2834, 0, 'vi', 'validation', 'not_in', 'Giá trị đã chọn trong trường :attribute không hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2835, 0, 'vi', 'validation', 'not_regex', 'Trường :attribute có định dạng không hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2836, 0, 'vi', 'validation', 'numeric', 'Trường :attribute phải là một số.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2837, 0, 'vi', 'validation', 'password', 'Mật khẩu không đúng.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2838, 0, 'vi', 'validation', 'present', 'Trường :attribute phải được cung cấp.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2839, 0, 'vi', 'validation', 'prohibited', 'Trường :attribute bị cấm.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2840, 0, 'vi', 'validation', 'prohibited_if', 'Trường :attribute bị cấm khi :other là :value.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2841, 0, 'vi', 'validation', 'prohibited_unless', 'Trường :attribute bị cấm trừ khi :other là một trong :values.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2842, 0, 'vi', 'validation', 'regex', 'Trường :attribute có định dạng không hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2843, 0, 'vi', 'validation', 'required', 'Trường :attribute không được bỏ trống.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2844, 0, 'vi', 'validation', 'required_if', 'Trường :attribute không được bỏ trống khi trường :other là :value.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2845, 0, 'vi', 'validation', 'required_unless', 'Trường :attribute không được bỏ trống trừ khi :other là :values.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2846, 0, 'vi', 'validation', 'required_with', 'Trường :attribute không được bỏ trống khi một trong :values có giá trị.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2847, 0, 'vi', 'validation', 'required_with_all', 'Trường :attribute không được bỏ trống khi tất cả :values có giá trị.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2848, 0, 'vi', 'validation', 'required_without', 'Trường :attribute không được bỏ trống khi một trong :values không có giá trị.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2849, 0, 'vi', 'validation', 'required_without_all', 'Trường :attribute không được bỏ trống khi tất cả :values không có giá trị.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2850, 0, 'vi', 'validation', 'same', 'Trường :attribute và :other phải giống nhau.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2851, 0, 'vi', 'validation', 'size.array', 'Trường :attribute phải chứa :size phần tử.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2852, 0, 'vi', 'validation', 'size.file', 'Dung lượng tập tin trong trường :attribute phải bằng :size kB.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2853, 0, 'vi', 'validation', 'size.numeric', 'Trường :attribute phải bằng :size.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2854, 0, 'vi', 'validation', 'size.string', 'Trường :attribute phải chứa :size kí tự.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2855, 0, 'vi', 'validation', 'starts_with', 'Trường :attribute phải được bắt đầu bằng một trong những giá trị sau: :values', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2856, 0, 'vi', 'validation', 'string', 'Trường :attribute phải là một chuỗi kí tự.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2857, 0, 'vi', 'validation', 'timezone', 'Trường :attribute phải là một múi giờ hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2858, 0, 'vi', 'validation', 'unique', 'Trường :attribute đã có trong cơ sở dữ liệu.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2859, 0, 'vi', 'validation', 'uploaded', 'Trường :attribute tải lên thất bại.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2860, 0, 'vi', 'validation', 'url', 'Trường :attribute không giống với định dạng một URL.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2861, 0, 'vi', 'validation', 'uuid', 'Trường :attribute phải là một chuỗi UUID hợp lệ.', '2022-04-20 19:53:00', '2022-04-20 19:53:11'),
(2862, 0, 'vi', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2022-04-20 19:53:00', '2022-04-20 19:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$8jfRx1N0otaeNjMa8KR7h.HzElSN/Wqu3R0KKbiycYHyDnb/QpfAy', NULL, '2022-01-04 04:39:02', '2022-01-04 04:39:02', 'System', 'Admin', 'botble', NULL, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'RecentPostsWidget', 'footer_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(2, 'RecentPostsWidget', 'top_sidebar', 'ripple', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(3, 'TagsWidget', 'primary_sidebar', 'ripple', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(4, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(5, 'CustomMenuWidget', 'primary_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(6, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite Websites\",\"menu_id\":\"favorite-websites\"}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(7, 'CustomMenuWidget', 'footer_sidebar', 'ripple', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My Links\",\"menu_id\":\"my-links\"}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(8, 'RecentPostsWidget', 'footer_sidebar', 'ripple-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(9, 'RecentPostsWidget', 'top_sidebar', 'ripple-vi', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(10, 'TagsWidget', 'primary_sidebar', 'ripple-vi', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(11, 'CustomMenuWidget', 'primary_sidebar', 'ripple-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c n\\u1ed5i b\\u1eadt\",\"menu_id\":\"danh-muc-noi-bat\"}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(12, 'CustomMenuWidget', 'primary_sidebar', 'ripple-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"M\\u1ea1ng x\\u00e3 h\\u1ed9i\",\"menu_id\":\"social\"}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(13, 'CustomMenuWidget', 'footer_sidebar', 'ripple-vi', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Trang web y\\u00eau th\\u00edch\",\"menu_id\":\"trang-web-yeu-thich\"}', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(14, 'CustomMenuWidget', 'footer_sidebar', 'ripple-vi', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft\",\"menu_id\":\"lien-ket\"}', '2022-01-04 04:39:09', '2022-01-04 04:39:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks_translations`
--
ALTER TABLE `blocks_translations`
  ADD PRIMARY KEY (`lang_code`,`blocks_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `galleries_translations`
--
ALTER TABLE `galleries_translations`
  ADD PRIMARY KEY (`lang_code`,`galleries_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_folder_id_user_id_created_at_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_parent_id_user_id_created_at_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_activity_logs_member_id_index` (`member_id`);

--
-- Indexes for table `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`,`has_child`,`created_at`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2863;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
