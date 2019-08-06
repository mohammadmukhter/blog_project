-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2019 at 12:08 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newspaper`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `category_status`, `created_at`, `updated_at`) VALUES
(5, 'Sports', 'description description', 'Active', '2019-07-16 21:08:16', '2019-07-30 22:32:06'),
(7, 'Political', 'political news', 'Inactive', '2019-07-25 01:57:39', '2019-07-30 22:31:55'),
(8, 'Agriculture', 'Agriculture news', 'Inactive', '2019-07-25 01:57:55', '2019-07-30 22:31:52'),
(9, 'Tech', 'technological news', 'Inactive', '2019-07-25 01:58:15', '2019-07-25 01:59:19'),
(24, 'Enterteinment', 'Enterteinment news', 'Active', '2019-07-31 23:04:52', '2019-07-31 23:04:52'),
(25, 'Economics news', 'economics news', 'Active', '2019-07-31 23:09:55', '2019-07-31 23:09:55'),
(26, 'Samprotik news', 'samprotick news', 'Active', '2019-07-31 23:16:17', '2019-07-31 23:16:17');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_16_100502_category', 1),
(4, '2019_07_16_100908_sub_category', 2),
(5, '2019_07_16_100929_post', 2);

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
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_id_of_post` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_name_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `category_name_id_of_post`, `sub_category_name_id`, `short_description`, `long_description`, `image_path`, `views`, `created_at`, `updated_at`) VALUES
(29, 'লাগাম ধরে রাখতে পারছে না বোলাররা', '5', '9', 'লঙ্কাওয়াশ এড়ানোর চ্যালেঞ্জে আগে ফিল্ডিংয়ে নেমেছে বাংলাদেশ। প্রথম থেকেই দেখে শুনে খেলছে শ্রীলঙ্কা। অধিনায়ক দিমুথ করুণারত্নে ও আভিষ্কা ফার্নান্দোর উদ্বোধনী জুটিতে তেমন রান ওঠেনি। ৪.৩ ওভারে ফার্নান্দোকে এলবিডব্লিউর ফাঁদে ফেলেন পেসার শফিউল ইসলাম।', 'লঙ্কাওয়াশ এড়ানোর চ্যালেঞ্জে আগে ফিল্ডিংয়ে নেমেছে বাংলাদেশ। প্রথম থেকেই দেখে শুনে খেলছে শ্রীলঙ্কা। অধিনায়ক দিমুথ করুণারত্নে ও আভিষ্কা ফার্নান্দোর উদ্বোধনী জুটিতে তেমন রান ওঠেনি। ৪.৩ ওভারে ফার্নান্দোকে এলবিডব্লিউর ফাঁদে ফেলেন পেসার শফিউল ইসলাম।এ প্রতিবেদন লেখা পর্যন্ত ১৮ ওভার শেষে ১ উইকেটে ৮৫ রান তুলেছে শ্রীলঙ্কা। ব্যাট করছেন দিমুথ করুণারত্নে (৪৫*) ও কুশল পেরেরা (৩১*)। অবিচ্ছিন্ন ৭২ রানের জুটি গড়ে দলকে বড় সংগ্রহের পথে নিয়ে যাচ্ছেন দুজন।প্রথম ৫ ওভারে ১ উইকেটে ১৩ রান তুলেছিল শ্রীলঙ্কা। শফিউল, তাইজুল ও রুবেল মিলে শুরুতে বেশ ভালোই চাপে রেখেছিলেন স্বাগতিকদের। প্রথম ১০ ওভারেও তাদের গড় রানরেট ছিল ৩.৬০। এরপর ধীরে ধীরে খোলস ছেড়ে বেরিয়ে এসেছেন পেরেরা–করুণারত্নে। জুটি ভাঙতে মাহমুদউল্লাহকে দিয়েও বল করিয়েছেন তামিম। প্রথম ওভারেই ১২ রান দেন তিনি।  শফিউল ডেলিভারিটি পিচ করে ভেতরে ঢুকেছিল। ফার্নান্দো ড্রাইভ করার চেষ্টা করতে গিয়ে বোকা বনেছেন। শ্রীলঙ্কার ইনিংসে প্রথম ওভার মেডেন নিয়ে শুরু করেছিলেন শফিউল। অন্য প্রান্ত থেকেও আরেক পেসার রুবেল হোসেনকে দিয়ে বল করিয়েছেন অধিনায়ক তামিম ইকবাল। চতুর্থ ওভারে রুবেলের জায়গায় স্পিনার তাইজুল ইসলামকে নিয়ে আসেন বাংলাদেশ অধিনায়ক। প্রথম ১০ ওভার পর্যন্ত শফিউলকে এক প্রান্তে বল করিয়েছেন তামিম। অন্য প্রান্তে বল করিয়েছেন তাইজুল ও মেহেদী হাসান মিরাজ ও সৌম্য সরকারকে দিয়ে।', '634878274.jpg', 7, '2019-07-31 05:04:20', '2019-08-05 22:04:22'),
(30, 'ইতিহাসে আলোচিত সেই পাঁচ ‘অ্যাশেজ’', '5', '9', 'আগামীকাল বৃহস্পতিবার থেকে শুরু হতে যাচ্ছে টেস্ট ক্রিকেটের সবচেয়ে ঐতিহ্যবাহী লড়াই, ইংল্যান্ড ও অস্ট্রেলিয়ার দ্বৈরথ—দ্য \'অ্যাশেজ\'। ক্রিকেটের বড় ফরম্যাটের এই মহারণ শুরুর আগে আসুন এক নজরে দেখে আসা যাক ইতিহাসের আলোচিত পাঁচ অ্যাশেজ!', 'ইতিহাস আর ঐতিহ্যের মানদণ্ডে অ্যাশেজই ক্রিকেটের সেরা দ্বৈরথ। এটি ঐতিহাসিকেরাই বলেন। কোনো দ্বিপাক্ষিক সিরিজ কি দেড় শতকেরও বেশি সময় ধরে চলেছে? অ্যাশেজ চলছে সগৌরবে। ওয়ানডে আর টি-টোয়েন্টি ক্রিকেটের এ যুগে টেস্ট ক্রিকেটের রং খানিকটা ফিকে হয়ে গেলেও এই অ্যাশেজই দায়িত্ব নিয়ে টেস্টকে রাঙিয়ে দিয়ে যায় বারবার। টেস্টপ্রেমীরাও অমিয় সুধা পানের আশায় বসে থাকেন প্রতি বছর, কখন আসবে অ্যাশেজ!আগামীকাল ক্রিকেটের প্রাচীনতম এই অধ্যায়ের আরেকটি পর্বের শুরু হতে যাচ্ছে। এ সময় ইতিহাসের পাতায় থাকা আলোচিত সিরিজগুলোও কিন্তু উঁকি দিয়ে যায় ক্রিকেটপ্রেমীদের মনে।  ১৯৩২-৩৩: বডিলাইন সিরিজ ১৯৩০-এর অ্যাশেজে ১৩৯.১৪ গড়ে ৯৭৪ রান করে ব্র্যাডম্যান একাই ইংরেজদের স্বপ্ন গুঁড়িয়ে দিয়ে অস্ট্রেলিয়াকে সিরিজ জেতান ২-১ এ। ১৯৩২-৩৩-এর পরের অ্যাশেজে ইংলিশরা ভালোভাবেই বুঝতে পারে, ব্র্যাডম্যানকে থামানো আর অ্যাশেজ জয় একই সুতোয় গাঁথা। ব্র্যাডম্যানকে থামানোর উপায় খুঁজতে গিয়েই জন্ম নিল ক্রিকেটের এক বিতর্কিত ইতিহাসের। টিম পেইন আর জো রুট - অ্যাশেজ জয়ের লড়াইয়ে দুই দলের দুই কান্ডারি। ছবি : টুইটার টিম পেইন আর জো রুট - অ্যাশেজ জয়ের লড়াইয়ে দুই দলের দুই কান্ডারি। ছবি : টুইটার  আগামীকাল বৃহস্পতিবার থেকে শুরু হতে যাচ্ছে টেস্ট ক্রিকেটের সবচেয়ে ঐতিহ্যবাহী লড়াই, ইংল্যান্ড ও অস্ট্রেলিয়ার দ্বৈরথ—দ্য \'অ্যাশেজ\'। ক্রিকেটের বড় ফরম্যাটের এই মহারণ শুরুর আগে আসুন এক নজরে দেখে আসা যাক ইতিহাসের আলোচিত পাঁচ অ্যাশেজ!  ইতিহাস আর ঐতিহ্যের মানদণ্ডে অ্যাশেজই ক্রিকেটের সেরা দ্বৈরথ। এটি ঐতিহাসিকেরাই বলেন। কোনো দ্বিপাক্ষিক সিরিজ কি দেড় শতকেরও বেশি সময় ধরে চলেছে? অ্যাশেজ চলছে সগৌরবে। ওয়ানডে আর টি-টোয়েন্টি ক্রিকেটের এ যুগে টেস্ট ক্রিকেটের রং খানিকটা ফিকে হয়ে গেলেও এই অ্যাশেজই দায়িত্ব নিয়ে টেস্টকে রাঙিয়ে দিয়ে যায় বারবার। টেস্টপ্রেমীরাও অমিয় সুধা পানের আশায় বসে থাকেন প্রতি বছর, কখন আসবে অ্যাশেজ!   আগামীকাল ক্রিকেটের প্রাচীনতম এই অধ্যায়ের আরেকটি পর্বের শুরু হতে যাচ্ছে। এ সময় ইতিহাসের পাতায় থাকা আলোচিত সিরিজগুলোও কিন্তু উঁকি দিয়ে যায় ক্রিকেটপ্রেমীদের মনে।  ১৯৩২-৩৩: বডিলাইন সিরিজ ১৯৩০-এর অ্যাশেজে ১৩৯.১৪ গড়ে ৯৭৪ রান করে ব্র্যাডম্যান একাই ইংরেজদের স্বপ্ন গুঁড়িয়ে দিয়ে অস্ট্রেলিয়াকে সিরিজ জেতান ২-১ এ। ১৯৩২-৩৩-এর পরের অ্যাশেজে ইংলিশরা ভালোভাবেই বুঝতে পারে, ব্র্যাডম্যানকে থামানো আর অ্যাশেজ জয় একই সুতোয় গাঁথা। ব্র্যাডম্যানকে থামানোর উপায় খুঁজতে গিয়েই জন্ম নিল ক্রিকেটের এক বিতর্কিত ইতিহাসের।  ইংলিশ অধিনায়ক ডগলাস জার্ডিন আগের অ্যাশেজেই লক্ষ্য করেছিলেন, লেগ স্টাম্পে লাফিয়ে ওঠা বল খেলতে সমস্যা হচ্ছে ব্র্যাডম্যানের। অন্যান্য ব্যাটসম্যানরাও এমন বলে তেমন সুবিধা করতে পারছেন না। সেই সূত্র ধরেই তাঁর মাথায় এল বডিলাইন বা ‘ফার্স্ট লেগ’ তত্ত্ব। জার্ডিনের সেই তত্ত্বের প্রয়োগ ঘটান তাঁর দুই ফাস্ট বোলার হ্যারল্ড লারউড ও বিল ভোস। বডিলাইনের ধারণাটি নতুন কিছু না হলেও ১৯৩২-৩৩-এর অ্যাশেজে সাফল্যের নেপথ্যে ছিল ইংরেজ ফাস্ট বোলারদের দ্রুত গতির নিখুঁত ও আগ্রাসী বোলিং।ব্র্যাডম্যানদের থামানোর টোটকাটা ছিল একদম সহজ। ব্যাটসম্যানের শরীর লক্ষ্য করে একের পর এক গোলার মতো বল ছুড়তে থাকো, উইকেট আপনা-আপনি চলে আসবে। তৎকালীন প্রেক্ষাপটে লেগ সাইডে ফিল্ডারের সর্বোচ্চ সংখ্যা নিয়ে কোনো বিধি-নিষেধ ছিল না, ছিল না এখনকার মতো নিরাপত্তা সরঞ্জামের এত ব্যবহার। হেলমেট, এলবো গার্ড, থাই গার্ড ও চেস্ট গার্ডের প্রচলন ছিল না তখন। এমন অবস্থায় লারউড-ভোসরা ব্যাটসম্যানের লেগ সাইডে চার-পাঁচ জন ফিল্ডার রেখে তাঁর শরীর লক্ষ্য করে নিখুঁত লাইন লেংথে ক্রমাগত একেকটি গোলা ছুড়তে লাগলেন। শরীরের দিকে গোলার মতো ধেয়ে আসা বলের আঘাত থেকে নিজেকে বাঁচাতে গিয়ে ব্যাটসম্যানরা ক্যাচ দিতে থাকলেন কাছেই ওত পেতে থাকা ফিল্ডারকে।', '411611989.jpg', 5, '2019-07-31 05:08:18', '2019-08-05 03:33:32'),
(31, 'কাশির ওষুধ খেয়ে নিষিদ্ধ এই ভারতীয় ক্রিকেটার', '5', '9', 'মূত্র নমুনায় নিষিদ্ধ টারবুটালিন থাকায় পৃথ্বী শ-কে প্রায় আট মাস নিষিদ্ধ করেছে ভারতীয় ক্রিকেট বোর্ড', 'ডোপ নিয়ে ধরা পড়ে এ বছরের ১৫ নভেম্বর পর্যন্ত নিষিদ্ধ হয়েছেন ভারতের ১৯ বছর বয়সী টেস্ট ওপেনার পৃথ্বী শ। এ বিবৃতিতে ভারতীয় ক্রিকেট বোর্ড (বিসিসিআই) জানিয়েছে, ‘পৃথ্বী অসাবধানতাবশত একটি নিষিদ্ধ উপাদান গ্রহণ করেছেন, যা সাধারণত কাশির সিরাপে পাওয়া যায়।’কোমরে চোট পাওয়ায় ওয়েস্ট ইন্ডিজ সফরে ভারতীয় দলে সুযোগ পাননি পৃথ্বী। নিষেধাজ্ঞার জন্য অক্টোবরে ঘরের মাঠে দক্ষিণ আফ্রিকার বিপক্ষে টেস্ট ও ১৪ নভেম্বর বাংলাদেশের বিপক্ষে টেস্টেও খেলার সুযোগ পাবেন না পৃথ্বী। বিসিসিআইয়ের ডোপবিরোধী কর্মসূচির অংশ হিসেবে গত ২২ ফেব্রুয়ারি নিজের মূত্র নমুনা সরবরাহ করেছিলেন পৃথ্বী। তাঁর নমুনায় টারবুটালিন ধরা পড়েছে। বিসিসিআই বিবৃতিতে বলেছে, ‘ওয়াডার (ডব্লিউএডিএ) নিষিদ্ধ তালিকায় রয়েছে টারবুটালিন।’ এ ধরনের নিষিদ্ধ উপাদান যে ওষুধে থাকে, তা যদি কোনো খেলোয়াড় গ্রহণ করতে বাধ্য হন, তাহলে সেটির অনুমোদন থাকতে হবে। পৃথ্বীর কাছে এ ধরনের কোনো কিছু ছিল না।বিসিসিআইয়ের ডোপবিরোধী নীতিমালায় দোষী সাব্যস্ত হয়েছেন পৃথ্বী। প্রতিভাবান এ ব্যাটসম্যান নিজের ভুল স্বীকারও করেছেন। কাশির জন্য অসাবধানতাবশত তিনি ওষুধটি নিয়েছিলেন এবং এর সঙ্গে পারফরম্যান্স বাড়ানোর কোনো সম্পর্ক নেই বলেও জানিয়েছেন ভারতের হয়ে ২ টেস্ট খেলা এ ব্যাটসম্যান। বিসিসিআই পৃথ্বীর ব্যাখ্যায় ‘সন্তুষ্ট’ হয়ে বলেছে, ‘পারফরম্যান্স বাড়াতে নয়, শ্বাসকষ্টের জন্য না জেনেই টারবুটালিন নিয়েছেন’ পৃথ্বী। তবে শাস্তি এড়াতে পারছেন না তিনি। বিসিসিআই তাঁকে ১৬ মার্চ থেকে ১৫ নভেম্বর মধ্যরাত পর্যন্ত প্রায় আট মাস নিষিদ্ধ করেছে। বিসিসিআইয়ের ডোপবিরোধী ধারা অনুযায়ী, নিষেধাজ্ঞা শেষে রাজ্য দল কিংবা বিসিসিআইয়ের অধীনস্থ কোথাও অনুশীলনে ফিরতে পারবেন পৃথ্বী।২০১৮ সালের অক্টোবরে ওয়েস্ট ইন্ডিজের বিপক্ষে অভিষেক টেস্টে সেঞ্চুরি করেন পৃথ্বী। পরের টেস্টে ফিফটি তুলে নেন।', '841042990.jpg', 8, '2019-07-31 05:10:57', '2019-08-05 00:04:52'),
(34, 'Dengue Outbreak: Detection kits in short supply', '26', '22', 'When the country is grappling with a record number of dengue cases, different hospitals, clinics and diagnostic centres face a short supply of a kit that is needed to detect the fever at the early stage', 'When the country is grappling with a record number of dengue cases, different hospitals, clinics and diagnostic centres face a short supply of a kit that is needed to detect the fever at the early stageWhen the country is grappling with a record number of dengue cases, different hospitals, clinics and diagnostic centres face a short supply of a kit that is needed to detect the fever at the early stageWhen the country is grappling with a record number of dengue cases, different hospitals, clinics and diagnostic centres face a short supply of a kit that is needed to detect the fever at the early stageWhen the country is grappling with a record number of dengue cases, different hospitals, clinics and diagnostic centres face a short supply of a kit that is needed to detect the fever at the early stage', '966066164.jpg', 36, '2019-07-31 23:17:20', '2019-08-05 22:28:59'),
(35, 'শ্রীলঙ্কায় বাংলাদেশের ভরাডুবি', '5', '14', 'সিরিজ শুরুর আগে ভারপ্রাপ্ত অধিনায়ক তামিম ইকবাল বলেছিলেন, শ্রীলঙ্কার বিপক্ষে তাদের মাটিতেই খেলা হওয়ায় এবং বাংলাদেশের বেশ কয়েকজন তারকা ক্রিকেটার দলে না থাকায় কঠিন চ্যালেঞ্জ দেখছেন তিনি। সেই কঠিন পরীক্ষায় চূড়ান্তভাবে ব্যর্থ হয়েছে টাইগাররা। লঙ্কাদ্বীপে ভরাডুবি হয়েছে বাংলাদেশের। তিন ম্যাচের প্রতিটিতেই অসহায় আত্মসমর্পণ করায় ওয়ানডে সিরিজে হোয়াইটওয়াশ হয়েছে অন্তর্বর্তীকালীন কোচ খালেদ মাহমুদ সুজনের শিষ্যরা।', 'বুধবার (৩১ জুলাই) কলম্বোতে সিরিজের তৃতীয় ও শেষ ম্যাচে ১২২ রানের বিশাল ব্যবধানে হেরেছে বাংলাদেশ। টসে জিতে ব্যাটিংয়ে নামা লঙ্কানদের ছুঁড়ে দেওয়া ২৯৫ রানের লক্ষ্যে খেলতে নেমে টাইগাররা অলআউট হয়েছে মাত্র ১৭২ রানে। তখনও বাকি ছিল ইনিংসের ১৪ ওভার!  বাংলাদেশের হয়ে ৮৬ বলে সর্বোচ্চ ৬৯ রানের ইনিংস খেলেন সৌম্য সরকার। তিনি সাম্প্রতিক সময়ের রানখরা কাটিয়ে হাফসেঞ্চুরি করলেও বাকি ব্যাটসম্যানরা ছিলেন নিষ্প্রভ। দ্বিতীয় সর্বোচ্চ রান আসে তাইজুল ইসলামের ব্যাট থেকে। তিনি নয় নম্বরে নেমে ২৮ বলে ৩৯ রান করে অপরাজিত থাকেন।  এছাড়া দুই অঙ্কে পৌঁছাতে পারেন কেবল এনামুল হক বিজয় (১৪) ও মুশফিকুর রহিম (১০)। বাকিরা ছিলেন আসা-যাওয়ার মিছিলে। শ্রীলঙ্কার হয়ে দাসুন শানাকা ২৭ রানে ৩ উইকেট নেন। ২টি করে উইকেট পান কাসুন রাজিথা ও লাহিরু কুমারা।  শুরু থেকেই নিয়মিত বিরতিতে উইকেট হারায় বাংলাদেশ। গড়ে ওঠেনি কোনো ভালো জুটি। সর্বোচ্চ জুটিটা মাত্র ২৬ রানের! অষ্টম উইকেটে সৌম্য ও তাইজুলের মধ্যে। অধিনায়ক তামিম (২), মোহাম্মদ মিঠুন (৪), মাহমুদউল্লাহ (৯) ও সাব্বির রহমান (৭) এদিনও ব্যর্থ হন।  এর আগে নির্ধারিত ৫০ ওভারে ৮ উইকেট হারিয়ে ২৯৪ রান তোলে শ্রীলঙ্কা। দলীয় ১৩ রানের মাথায় আভিস্কা ফার্নান্দোকে এলবিডাব্লিউয়ের ফাঁদে ফেলেন শফিউল ইসলাম। তার সংগ্রহ ৬ রান। এরপর করুনারত্নে ও পেরেরার ৮৩ রানের জুটি। তাতে তিনশো ছোঁয়া স্কোর গড়ার ভিত পেয়ে যায় লঙ্কানরা। জুটি ভাঙার পর এই দুজনকে অবশ্য অল্প রানের ব্যবধানে ফেরাতে পারেন টাইগার বোলাররা।করুনারত্নে ৪৬ রান করে হন তাইজুল ইসলামের শিকার। পেরেরার ব্যাট থেকে আসে ৪২ রান। তার উইকেটটি নেন রুবেল হোসেন। দুই ব্যাটসম্যানই উইকেটের পেছনে ক্যাচ দেন মুশফিকুর রহিমের হাতে।  শ্রীলঙ্কার দলীয় একশো রানের মধ্যে ৩ উইকেট তুলে নিতে পারলেও চাপটা ধরে রাখতে ব্যর্থ হয় বাংলাদেশ। চতুর্থ উইকেটে ১০১ রানের জুটি গড়েন মেন্ডিস ও ম্যাথিউস। ফিফটি তুলে নেওয়ার পরপরই অবশ্য মেন্ডিসকে ফেরান সৌম্য সরকার। সীমানার কাছে দুর্দান্ত ক্যাচ ধরেন সাব্বির রহমান।  ৪০ ওভার পর্যন্ত ওভারপ্রতি পাঁচের নিচে থাকা লঙ্কানদের রান রেট বাড়ানোর কাজটা করেন এ ম্যাচের একাদশে সুযোগ পাওয়া শানাকা। উইকেটে গিয়ে তেড়েফুঁড়ে মেরে ১৪ বলে ৩০ রান করেন তিনি। লঙ্কান একাদশে সুযোগ পাওয়া আরেক ক্রিকেটার শিহান জয়সুরিয়া খেলেন ৭ বলে ১৩ রানের ক্যামিও ইনিংস। এ দুজনকে আউট করেন ম্যাচে শফিউল।  ইনিংসের শেষ ওভারে ম্যাথিউসকে বিদায় করেন সৌম্য। দলের পক্ষে সর্বোচ্চ ৮৭ রানের ইনিংস খেলেন এই অভিজ্ঞ তারকা। তাকে আউট করার পরের বলে আকিলা দনঞ্জয়ার উইকেট তুলে নিয়ে হ্যাটট্রিকের সম্ভাবনাও জাগিয়েছিলেন সৌম্য। তবে সেটা হয়নি। বরং খরুচে হয়ে যান তিনি। ওয়ানিদু হাসারাঙ্গা অপরাজিত থাকেন ৫ বলে ১২ রানে।  ৪০ ওভার পর্যন্ত নিয়ন্ত্রিত বোলিং করে টাইগাররা। তবে ডেথ ওভারে বোলিং ভালো হয়নি। উইকেট হাতে থাকায় আর থিতু হয়ে যাওয়া অ্যাঞ্জেলো ম্যাথিউস ও দাসুন শানাকা ঝড় তোলায় শেষ ১০ ওভারে ১০৬ রান আদায় করে নেয় শ্রীলঙ্কা।  সংক্ষিপ্ত স্কোর:  শ্রীলঙ্কা: ২৯৪/৮ (৫০ ওভার) (আভিস্কা ৬, করুনারত্নে ৪৬, পেরেরা ৪২, মেন্ডিস ৫৪, ম্যাথিউস ৮৭, শানাকা ৩০, জয়সুরিয়া ১৩, হাসারাঙ্গা ১২*, দনঞ্জয়া ০, রাজিথা ০*; শফিউল ৩/৬৮, রুবেল ১/৫৫, তাইজুল ১/৩৪, মিরাজ ০/৫৯, সৌম্য ৩/৫৬, মাহমুদউল্লাহ ০/২২)  বাংলাদেশ: ১৭২ (৩৬ ওভারে) (বিজয় ১৪, তামিম ২, সৌম্য ৬৯, মুশফিক ১০, মিঠুন ৪, মাহমুদউল্লাহ ৯, সাব্বির ৭, মিরাজ ৮, তাইজুল ৩৯*, শফিউল ১, রুবেল ২; জয়সুরিয়া ০/৪০, রাজিথা ২/১৭, দনঞ্জয়া ১/৪৪, শানাকা ৩/২৭, হাসারাঙ্গা ১/১৬, কুমারা ২/২৬)।  ফল: শ্রীলঙ্কা ১২২ রানে জয়ী।', '704894971.jpg', 21, '2019-07-31 23:23:48', '2019-08-05 21:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category_name`, `category_name_id`, `sub_category_description`, `sub_category_status`, `created_at`, `updated_at`) VALUES
(9, 'rrrrrrrrrrrrr', '5', 'ttttttttty', 'Active', '2019-07-17 03:33:01', '2019-07-31 23:05:41'),
(12, 'Entertainment news', '24', 'entertainment news', 'Active', '2019-07-31 23:05:34', '2019-07-31 23:05:34'),
(13, 'Football news', '5', 'Football news', 'Active', '2019-07-31 23:06:51', '2019-07-31 23:06:51'),
(14, 'Cricket News', '5', 'cricket', 'Active', '2019-07-31 23:07:08', '2019-07-31 23:07:08'),
(15, 'information technology AI', '9', 'AI news', 'Active', '2019-07-31 23:07:45', '2019-07-31 23:07:45'),
(16, 'Computer Science news', '9', 'computer science news', 'Active', '2019-07-31 23:08:10', '2019-07-31 23:08:10'),
(17, 'networking news', '9', 'networking', 'Active', '2019-07-31 23:08:28', '2019-07-31 23:08:28'),
(18, 'national political news', '7', 'national political news', 'Active', '2019-07-31 23:08:55', '2019-07-31 23:08:55'),
(19, 'international political news', '7', 'international political news', 'Active', '2019-07-31 23:09:17', '2019-07-31 23:09:17'),
(20, 'national economics news', '25', 'national economics news', 'Active', '2019-07-31 23:10:16', '2019-07-31 23:10:16'),
(21, 'international economics news', '25', 'international economics news', 'Active', '2019-07-31 23:10:42', '2019-07-31 23:10:42'),
(22, 'Samprotik choloman news', '26', 'choloman news', 'Active', '2019-07-31 23:16:40', '2019-07-31 23:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Md Mukhter Hossan', 'mohammadmukhter@gmail.com', NULL, '$2y$10$dlbaMQ/YEQQPfFwEGpYHF.CSSqZmXAV63g/0Q1SzS.DHd2ijA5KWq', NULL, '2019-07-22 04:14:56', '2019-07-22 04:14:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

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
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
