-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2018 at 10:35 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mukticorner_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `postID` int(11) NOT NULL,
  `commentID` int(11) NOT NULL,
  `commentDesc` varchar(500) NOT NULL,
  `commentAuthor` varchar(500) NOT NULL,
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`postID`, `commentID`, `commentDesc`, `commentAuthor`, `commentTime`) VALUES
(0, 12, 'dklvn', 'qt', '2015-08-22 13:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news_table`
--

CREATE TABLE `news_table` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `news_source` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `news_link` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `news_img` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `news_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `news_view` int(11) NOT NULL DEFAULT '0',
  `news_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `news_hit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_table`
--

INSERT INTO `news_table` (`news_id`, `news_title`, `news_source`, `news_link`, `news_img`, `news_date`, `news_view`, `news_text`, `news_hit`) VALUES
(24, 'পাকবাহিনীর সামনে বুক চিতিয়ে যুদ্ধ করেছিলেন চন্দ্র শেখর রায়', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1269995.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2017/01/09/condro-sekhor-ray.jpg/ALTERNATES/w640/condro-sekhor-ray.jpg', '2017-01-09 00:35:37.0', 0, 'চন্দ্র\nশেখর রায়কে তার বাবা যুদ্ধে যেতে অনুপ্রাণিত করেছিলেন। যুদ্ধের প্রয়োজনীয়\nপ্রশিক্ষণের জন্য তিনি ভারতে গিয়েছিলেন। সেখানে\nওম্পিনগরে তাদের প্রশিক্ষণ সম্পন্ন হয়েছিল। ১৯৭১ সালে ৩ নম্বর\nসেক্টরে যুদ্ধে অংশগ্রহণ করেন তিনি।', 0),
(25, 'আহত হয়েও যুদ্ধে ফিরেছিলেন রিয়াজ উদ্দিন', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1269513.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2017/01/08/reaz-uddin_ed.jpg/ALTERNATES/w640/reaz-uddin_ed.jpg', '2017-01-08 02:05:21.0', 0, 'মোঃ রিয়াজ উদ্দিন ১৯৭১ সালে ৩ নম্বর সেক্টরে\nযুদ্ধে অংশগ্রহণ করেন। তিনি নিজ চোখে দেখেছিলেন পাকিস্তানি বাহিনীর নৃশংসতা। পাখির\nমতো গুলি করে মানুষ হত্যা করছিল তারা। দেশকে বাঁচানোর জন্য, মানুষকে বাঁচানোর জন্য\nতিনি যুদ্ধে যাওয়ার পরিকল্পনা করেন। সেই পরিকল্পনা বাস্তবায়নের জন্য তিনি ভারতে\nযান। ভারতে প্রশিক্ষণের সময়ে তাকে দশ রাউন্ড গুলি দিয়ে টার্গেটে আঘাত আনতে নির্দেশ\nদেওয়া হয়েছিল। রিয়াজ উদ্দিন নয় রাউন্ড গুলি নির্দিষ্ট লক্ষ্যে রাখতে পেরেছিলেন। সেখানে\n২৮ দিন ট্রেনিং নিয়েছিলেন তিনি। ট্রেনিংয়ে অন্য মুক্তিযোদ্ধাদের মধ্যে প্রথম\nহয়েছিলেন রিয়াজ উদ্দিন। এরপর তাকে সেনাবাহিনী, পুলিশের সম্মিলনে তৈরি একটা\nব্যাটালিয়ানে যোগ দিতে বলা হয়েছিল। সেখানেও আবার ১৬ দিনের প্রশিক্ষণ দেওয়া হয়েছিল\nতাকে। রিয়াজ উদ্দিন প্রতিদিন যেমন ট্রেনিং নিতেন, আবার সিলেট গিয়ে নিয়মিত\nএ্যামবুশেও অংশ নিতেন।', 0),
(26, 'তিনদিন পানির মধ্যে যুদ্ধ করেন নুরূল ইসলাম', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1269014.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2017/01/07/nurul-islam.jpg/ALTERNATES/w640/nurul-islam.jpg', '2017-01-07 00:16:27.0', 0, 'পাকিস্তানি বাহিনী যেদিন মঠখোলা আক্রমণ করেছিল, সেদিন তারা নুরূল ইসলামের দোকানটিও লন্ডভণ্ড করে দেয়। হানাদারবাহিনীর বিরুদ্ধে নিজেকে প্রস্তুত করতে তিনি প্রশিক্ষণের জন্য ভারতে যান। প্রশিক্ষণ শেষে টেকেরঘাট থেকে কয়ালারঘাটে যুদ্ধে করতে যান তিনি। এরপর মেজর মোস্তাফিজ তাদের তাহেরপুর যেতে নির্দেশ দেন।', 0),
(27, 'যুদ্ধে গুরুতর আহত হয়েছিলেন হাফিজ আলী', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1267992.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2017/01/05/hafiz-ali-ed.jpg/ALTERNATES/w640/hafiz-ali-ed.jpg', '2017-01-05 00:22:30.0', 0, '১৯৭১ সালে মোঃ হাফিজ আলী বুঝতে পেরেছিলেন দেশকে বাঁচানো প্রত্যেক নাগরিকের দায়িত্ব। স্বাধীন দেশে মুক্ত বিহঙ্গের মতো চলার স্বপ্নটা ছিল তার চোখে মুখে। সেই লক্ষ্যে হাফিজ আলী ৬ নম্বর সেক্টরে যুদ্ধে অংশগ্রহণ করেন।', 0),
(28, 'বাড়ি থেকে পালিয়ে যুদ্ধে অংশ নেন বদরূজ্জামান', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1267405.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2017/01/03/bodruzzaman-4.1.17.jpg/ALTERNATES/w640/bodruzzaman-4.1.17.jpg', '2017-01-03 23:49:54.0', 0, 'বদরূজ্জামানের গ্রামে পাকবাহিনী একজন হিন্দু\nধর্মাবলম্বীকে জঙ্গলের মধ্যে নৃশংসভাবে হত্যা করেছিল। এটি তার মনে গভীরভাবে দাগ কাটে। পাকবাহিনীর\nজঘন্য অত্যাচার দেখে তিনি যুদ্ধে যাওয়ার সিদ্ধান্ত নেন।', 0),
(29, 'বঙ্গবন্ধুর আহবানে জনাব আলী যুদ্ধে ঝাঁপিয়ে পড়েন', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1266870.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2017/01/03/jonab-ali.jpg/ALTERNATES/w640/jonab+ali.jpg', '2017-01-03 01:24:35.0', 0, 'মোঃ জনাব\nআলী ১৯৭১ সালে যুদ্ধে ৫ নম্বর সেক্টরে অংশ নিয়েছিলেন। বঙ্গবন্ধুর ৭ই মার্চের\nভাষণের পরেই তিনি বুঝতে পারেন, নিজ নিজ জায়গা থেকে সবাইকে প্রতিবাদ করতে হবে। এরপর\nএলো ২৫ শে মার্চের কালো রাত। জনাব আলী যুদ্ধে যাওয়ার ব্যাপারে মনস্থির করলেন।\nপ্রশিক্ষণের জন্য ভারতের পথে পাড়ি জমালেন। ২৮ দিন প্রশিক্ষণ চলল তাদের। এরপর\nপবিত্র ধর্মগ্রন্থ ছুঁয়ে দেশকে বাঁচানোর শপথ করতে হয়েছিল। শপথ শেষে তাদের\nপ্রয়োজনীয় হাতিয়ার সরবারহ করা হয়। জনাব আলী একটা এসএলআর এবং পাঁচটা গ্রেনেড\nপেয়েছিলেন।', 0),
(30, 'যুদ্ধে আহত হয়েছিলেন মোঃ আজিজুল হক', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1264861.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2016/12/30/azizul-hoque.jpg/ALTERNATES/w640/azizul+hoque.jpg', '2016-12-30 00:14:49.0', 0, 'মোঃ\nআজিজুল হক। ১৯৭১ সালে মুক্তিযুদ্ধে ৩\nনম্বরে সেক্টরে যোগ দিয়েছিলেন তিনি।', 0),
(31, '‘শরীরে গুলি লাগার পরেও আব্দুল শহীদ যুদ্ধ চালিয়ে গিয়েছিলেন’', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1261925.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2016/12/24/abdul_shahid.jpg/ALTERNATES/w640/Abdul_Shahid.jpg', '2016-12-24 00:53:02.0', 0, 'আব্দুল শহীদ মুক্তিযুদ্ধে ৫ নাম্বার সেক্টরে অংশ নিয়েছিলেন। তার\nজীবনের গল্পটা একটু অন্যরকম। তার বাবা যখন রেডিওতে যুদ্ধের আহবান শুনতে পেলেন, তখন\nতিনি বিচলিত হয়ে পড়েন। তিনি বলেছিলেন, ‘আমার দুটো সন্তানের দরকার নেই। একটা সন্তান\nহলেই চলবে। একটা সন্তানকে আমি\nদেশের জন্য উৎসর্গ করতে চাই।’', 0),
(32, 'ভুল বুঝে আক্কু চৌধুরীকে মুক্তিযোদ্ধারা ধরে নিয়েছিলেন', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1261517.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2016/12/23/akku-chowdhury3.jpg/ALTERNATES/w640/Akku+Chowdhury3.jpg', '2016-12-23 00:23:02.0', 0, 'আখতার চৌধুরী। সম্ভ্রান্ত ও বিত্তবান পরিবারে জন্ম। বাবা সফল\nইঞ্জিনিয়ার। ঢাকার অভিজাত এলাকায় বেড়ে উঠেছিলেন তিনি, পড়াশোনাও মিলিটারি স্কুলে।', 0),
(33, 'কবরস্থানের গর্তে দিনরাত লুকিয়ে প্রাণ বাঁচান মুক্তিযোদ্ধা খোরশেদ', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1259929.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2016/12/20/warofliberationgerila.jpg/ALTERNATES/w640/WarOfLiberationGerila.jpg', '2016-12-20 01:01:58.0', 0, '১৯৭০ সালে বি কম পাসের পর ঢাকা বিশ্ববিদ্যালয়ে ভর্তি হওয়ার ইচ্ছাটা পেয়ে বসেছিল মো. খোরশেদ আলমের। ঢাকায় এসে মার্চের সেই উত্তাল সময়টা চোখের সামনে দেখতে পেয়েছিলেন। বঙ্গবন্ধুর ৭ মার্চের ভাষণে অনুপ্রাণিত হয়েছিলেন ভীষণভাবে, মনের কোণে নতুন উদয় হয়েছিল নতুন স্বপ্ন-স্বাধীন হওয়ার স্বপ্ন।', 0),
(34, 'যুদ্ধের স্মৃতি এখনও আলোড়িত করে শফিকুলকে', 'bdnews24.com', 'https://bangla.bdnews24.com/muktijoddha/article1258488.bdnews', 'https://d30fl32nd2baj9.cloudfront.net/media/2016/12/16/shafikul_islam.jpg/ALTERNATES/w640/Shafikul_islam.JPG', '2016-12-16 23:55:11.0', 0, 'মেঘালয়ের ভালাটে ট্রেনিং শেষে যাত্রা করেন শিলংয়ের ট্রেনিং সেন্টারের উদ্দেশ্যে। সেখানে আরও এক মাস ট্রেনিংয়ে রণকৌশল রপ্ত করে ফিরে আসেন দেশে।', 0),
(35, 'নারী স্বাধীনতার ডানা ছাঁটবেন কাপ্তান', 'jugantor.com', 'https://www.jugantor.com/todays-paper/ten-horizon/75030/নারী-স্বাধীনতার-ডানা-ছাঁটবেন-কাপ্তান', 'www.jugantor.com/cache-images/news_photos/2018/07/29/resize-230x130x1x0image-75028.jpg', '০০:০০ | প্রিন্ট সংস্করণ', 0, '‘নারীবাদ একটা পশ্চিমা ধারণা। এটা মায়েদের ভূমিকাকে খাটো করে দেখে।’ নারীবাদ নিয়ে এমন অবস্থান পাকিস্তানের হবু প্রধানমন্ত্রী ইমরান খানের। নির্বাচনের আগে গত মাসে এক সাক্ষাৎকারে এ কথা বলেন তিনি। সাক্ষাৎকারে তিনি নারীবাদকে ‘পশ্চিমা ধারণা’ অভিহিত করে এর কঠোর সমালোচনা করেন। শুধু নারীবাদ নয়, পাকিস্তানের বহুল বিতর্কিত ব্লাসফেমি আইনকেও সমর্থন করেন তিনি। ইমরান খান বলেন, ‘পশ্চিমা ধারার নারীবাদ আন্দোলন নারীদের মাতৃত্বকে খাটো করছে।’ সে সময় তার এ মন্তব্য নারীবিরোধী হিসেবে দেখা হয় এবং সামাজিক যোগাযোগ মাধ্যমে ব্যাপক সমালোচনার মুখে পড়েন তিনি।', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(200) NOT NULL,
  `postDesc` varchar(10000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `postTag` varchar(40) NOT NULL,
  `postAuthor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `postTitle`, `postDesc`, `postTime`, `postTag`, `postAuthor`) VALUES
(18, 'à¦·à§œà¦¯à¦¨à§à¦¤à§à¦° ', '<p>à¦¸à¦¾à¦®à¦°à¦¿à¦• à¦¬à¦¾à¦¹à¦¿à¦¨à§€à¦° à¦¬à¦¡à¦¼ à¦¬à¦¡à¦¼ à¦…à¦«à¦¿à¦¸à¦¾à¦°à¦¦à§‡à¦° à¦¨à¦¿à¦¯à¦¼à§‡ à¦¬à§ˆà¦ à¦•à§‡ à¦‡à¦¯à¦¼à¦¾à¦¹à¦¿à¦¯à¦¼à¦¾ à¦–à¦¾à¦¨ à¦˜à§‹à¦·à¦£à¦¾ à¦•à¦°à§‡à¦¨ &quot;à¦¤à¦¿à¦°à¦¿à¦¶ à¦²à¦•à§à¦· à¦¬à¦¾à¦™à¦¾à¦²à¦¿à¦•à§‡ à¦¹à¦¤à§à¦¯à¦¾ à¦•à¦°à§‹, à¦¤à¦–à¦¨ à¦¦à§‡à¦–à¦¬à§‡ à¦¬à¦¾à¦•à¦¿à¦°à¦¾ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦¹à¦¾à¦¤ à¦šà§‡à¦Ÿà§‡ à¦–à¦¾à¦¬à§‡à¥¤&quot; à¦¸à§‡ à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦®à¦¤à§‹à¦‡ à§¨à§« à¦®à¦¾à¦°à§à¦š à¦°à¦¾à¦¤à§‡ à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à¦¿ à¦¸à§‡à¦¨à¦¾à¦¬à¦¾à¦¹à¦¿à¦¨à§€&nbsp;<em>à¦…à¦ªà¦¾à¦°à§‡à¦¶à¦¨ à¦¸à¦¾à¦°à§à¦šà¦²à¦¾à¦‡à¦Ÿ</em>&nbsp;à¦†à¦°à¦®à§à¦­ à¦•à¦°à§‡ à¦¯à¦¾à¦° à¦‰à¦¦à§à¦¦à§‡à¦¶à§à¦¯ à¦›à¦¿à¦² à¦¬à¦¾à¦™à¦¾à¦²à¦¿ à¦ªà§à¦°à¦¤à¦¿à¦°à§‹à¦§ à¦—à§à¦à¦¡à¦¼à¦¿à¦¯à¦¼à§‡ à¦¦à§‡à¦¯à¦¼à¦¾à¥¤ à¦à¦°à¦‡ à¦…à¦‚à¦¶ à¦¹à¦¿à¦¸à¦¾à¦¬à§‡ à¦¸à¦¾à¦®à¦°à¦¿à¦• à¦¬à¦¾à¦¹à¦¿à¦¨à§€à¦° à¦¬à¦¾à¦™à¦¾à¦²à¦¿ à¦¸à¦¦à¦¸à§à¦¯à¦¦à§‡à¦° à¦¨à¦¿à¦°à¦¸à§à¦¤à§à¦° à¦•à¦°à§‡ à¦¹à¦¤à§à¦¯à¦¾ à¦•à¦°à¦¾ à¦¹à¦¯à¦¼, à¦›à¦¾à¦¤à§à¦° à¦“ à¦¬à§à¦¦à§à¦§à¦¿à¦œà§€à¦¬à§€à¦¦à§‡à¦° à¦¨à¦¿à¦§à¦¨ à¦•à¦°à¦¾ à¦¹à¦¯à¦¼ à¦à¦¬à¦‚ à¦¸à¦¾à¦°à¦¾ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡ à¦¨à¦¿à¦°à§à¦¬à¦¿à¦šà¦¾à¦°à§‡ à¦¸à¦¾à¦§à¦¾à¦°à¦£ à¦®à¦¾à¦¨à§à¦· à¦¹à¦¤à§à¦¯à¦¾ à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à¥¤</p>\r\n', '2018-07-29 08:20:37', '', 'admin'),
(19, 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¯à§à¦¦à§à¦§à¦ªà¦žà§à¦œà§€ ', '<p>à¦¢à¦¾à¦•à¦¾à¦¯à¦¼ à¦—à¦£à¦¹à¦¤à§à¦¯à¦¾ à¦šà¦¾à¦²à¦¾à¦¨à§‹à¦° à¦ªà¦° à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à¦¿ à¦¬à¦¾à¦¹à¦¿à¦¨à§€ à§§à§¦ à¦à¦ªà§à¦°à¦¿à¦²à§‡à¦° à¦®à¦§à§à¦¯à§‡ à¦¸à¦¾à¦°à¦¾ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¨à¦¿à¦œà§‡à¦¦à§‡à¦° à¦†à¦¯à¦¼à¦¤à§à¦¤à§‡ à¦†à¦¨à¦¾à¦° à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦•à¦°à§‡à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¸à¦¾à¦®à¦°à¦¿à¦• à¦¬à¦¾à¦¹à¦¿à¦¨à§€à¦° à¦¬à¦¾à¦™à¦¾à¦²à¦¿ à¦¸à¦¦à¦¸à§à¦¯à¦°à¦¾ à¦à¦¬à¦‚ à¦›à¦¾à¦¤à§à¦° à¦“ à¦¸à¦¾à¦§à¦¾à¦°à¦£ à¦œà¦¨à¦¤à¦¾ à¦¤à¦¾à¦¦à§‡à¦° à¦¬à¦¿à¦°à§à¦¦à§à¦§à§‡ à¦¤à§€à¦¬à§à¦° à¦ªà§à¦°à¦¤à¦¿à¦°à§‹à¦§ à¦—à¦¡à¦¼à§‡ à¦¤à§‹à¦²à§‡à¥¤&nbsp;à¦šà¦Ÿà§à¦Ÿà¦—à§à¦°à¦¾à¦®à§‡&nbsp;à¦¬à¦¾à¦™à¦¾à¦²à¦¿ à¦¸à§‡à¦¨à¦¾à¦¬à¦¾à¦¹à¦¿à¦¨à§€à¦° à¦¸à¦¦à¦¸à§à¦¯ à¦“ à¦‡à¦ªà¦¿à¦†à¦° à¦à¦° à¦¸à¦¦à¦¸à§à¦¯à¦°à¦¾ à¦¬à¦¿à¦¦à§à¦°à§‹à¦¹ à¦•à¦°à§‡ à¦¶à¦¹à¦°à§‡à¦° à¦¬à¦¡à¦¼ à¦…à¦‚à¦¶ à¦¨à¦¿à¦¯à¦¼à¦¨à§à¦¤à§à¦°à¦£à§‡ à¦¨à¦¿à¦¯à¦¼à§‡ à¦¨à§‡à¦¯à¦¼à¥¤ à¦šà¦Ÿà§à¦Ÿà¦—à§à¦°à¦¾à¦® à¦¶à¦¹à¦°à§‡à¦° à¦¨à¦¿à¦¯à¦¼à¦¨à§à¦¤à§à¦°à¦£ à¦ªà§‡à¦¤à§‡ à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à¦¿ à¦¬à¦¾à¦¹à¦¿à¦¨à§€à¦•à§‡ à¦¯à§à¦¦à§à¦§à¦œà¦¾à¦¹à¦¾à¦œ à¦¥à§‡à¦•à§‡ à¦—à§‹à¦²à¦¾à¦¬à¦°à§à¦·à¦£ à¦•à¦°à¦¤à§‡ à¦¹à¦¯à¦¼ à¦à¦¬à¦‚ à¦¬à¦¿à¦®à¦¾à¦¨ à¦†à¦•à§à¦°à¦®à¦£ à¦šà¦¾à¦²à¦¾à¦¤à§‡ à¦¹à¦¯à¦¼à¥¤&nbsp;à¦•à§à¦·à§à¦Ÿà¦¿à¦¯à¦¼à¦¾, à¦ªà¦¾à¦¬à¦¨à¦¾, à¦¬à¦—à§à¦¡à¦¼à¦¾, à¦¦à¦¿à¦¨à¦¾à¦œà¦ªà§à¦° à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦œà§‡à¦²à¦¾à¦¤à§‡à¦“ à¦¬à¦¾à¦™à¦¾à¦²à¦¿ à¦¸à§‡à¦¨à¦¾à¦°à¦¾ à¦¬à¦¿à¦¦à§à¦°à§‹à¦¹ à¦•à¦°à§‡ à¦¨à¦¿à¦¯à¦¼à¦¨à§à¦¤à§à¦°à¦£ à¦—à§à¦°à¦¹à¦£ à¦•à¦°à§‡à¥¤ à¦ªà¦°à¦¬à¦°à§à¦¤à§€à¦¤à§‡ à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à¦¿à¦°à¦¾ à¦¬à¦¿à¦ªà§à¦²à¦¸à¦‚à¦–à§à¦¯à¦• à¦¸à§ˆà¦¨à§à¦¯ à¦“ à¦…à¦¸à§à¦¤à§à¦°à¦¶à¦¸à§à¦¤à§à¦°à§‡à¦° à¦¬à¦²à§‡ à¦®à§‡ à¦®à¦¾à¦¸à§‡à¦° à¦¶à§‡à¦· à¦¨à¦¾à¦—à¦¾à¦¦ à¦à¦¸à¦¬ à¦®à§à¦•à§à¦¤à¦¾à¦žà§à¦šà¦² à¦¦à¦–à¦² à¦•à¦°à§‡ à¦¨à§‡à¦¯à¦¼à¥¤</p>\r\n\r\n<p>à¦®à¦¾à¦°à§à¦šà§‡à¦° à¦¶à§‡à¦·à¦¦à¦¿à¦• à¦¥à§‡à¦•à§‡à¦‡ à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à¦¿ à¦¸à¦¾à¦®à¦°à¦¿à¦• à¦¬à¦¾à¦¹à¦¿à¦¨à§€ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦—à§à¦°à¦¾à¦®à§‡-à¦—à¦žà§à¦œà§‡ à¦›à¦¡à¦¼à¦¿à¦¯à¦¼à§‡ à¦ªà¦¡à¦¼à¦¤à§‡ à¦¶à§à¦°à§ à¦•à¦°à§‡à¥¤ à¦†à¦“à¦¯à¦¼à¦¾à¦®à§€ à¦²à§€à¦—à§‡à¦° à¦•à¦°à§à¦®à§€-à¦¸à¦®à¦°à§à¦¥à¦• à¦à¦¬à¦‚ à¦¹à¦¿à¦¨à§à¦¦à§ à¦§à¦°à§à¦®à¦¾à¦¬à¦²à¦®à§à¦¬à§€à¦°à¦¾ à¦¬à¦¿à¦¶à§‡à¦·à¦­à¦¾à¦¬à§‡ à¦¤à¦¾à¦¦à§‡à¦° à¦°à§‹à¦·à§‡à¦° à¦¶à¦¿à¦•à¦¾à¦° à¦¹à¦¯à¦¼à¥¤ à¦¦à¦²à§‡ à¦¦à¦²à§‡ à¦®à¦¾à¦¨à§à¦· à¦­à¦¾à¦°à¦¤ à¦¸à§€à¦®à¦¾à¦¨à§à¦¤à§‡à¦° à¦¦à¦¿à¦•à§‡ à¦ªà¦¾à¦²à¦¾à¦¤à§‡ à¦¶à§à¦°à§ à¦•à¦°à§‡à¥¤ à¦à¦ªà§à¦°à¦¿à¦² à¦¥à§‡à¦•à§‡ à¦¶à§à¦°à§ à¦¹à¦“à¦¯à¦¼à¦¾ à¦¶à¦°à¦£à¦¾à¦°à§à¦¥à§€à¦¦à§‡à¦° à¦à¦‡ à¦¸à§à¦°à§‹à¦¤ à¦¨à¦­à§‡à¦®à§à¦¬à¦° à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦…à¦¬à§à¦¯à¦¾à¦¹à¦¤ à¦›à¦¿à¦² à¦à¦¬à¦‚ à¦ à¦¸à¦®à¦¯à¦¼à§‡ à¦ªà§à¦°à¦¾à¦¯à¦¼ à¦à¦• à¦•à§‹à¦Ÿà¦¿ à¦¶à¦°à¦£à¦¾à¦°à§à¦¥à§€ à¦­à¦¾à¦°à¦¤à§‡ à¦†à¦¶à§à¦°à¦¯à¦¼ à¦—à§à¦°à¦¹à¦£ à¦•à¦°à§‡à¥¤</p>\r\n', '2018-07-29 08:24:15', '', 'admin'),
(21, 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¯à§à¦¦à§à¦§à§‡à¦° à¦•à¦¾à¦ à¦¾à¦®à§‹ ', '<p><a href=\"https://bn.wikipedia.org/wiki/%E0%A6%9A%E0%A6%BF%E0%A6%A4%E0%A7%8D%E0%A6%B0:Sectors_of_Bangladesh_Liberation_War_(bn).svg\"><img alt=\"\" src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Sectors_of_Bangladesh_Liberation_War_%28bn%29.svg/220px-Sectors_of_Bangladesh_Liberation_War_%28bn%29.svg.png\" style=\"height:307px; width:220px\" /></a></p>\r\n\r\n<p>à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾ à¦¯à§à¦¦à§à¦§à§‡ à¦—à§‡à§±à¦¿à¦²à¦¾à¦¦à§‡à¦° à¦ªà§à¦°à¦¥à¦® à¦ªà¦°à§à¦¯à¦¾à¦¯à¦¼à§‡à¦° à¦¯à§à¦¦à§à¦§à¦—à§à¦²à§‹ à¦›à¦¿à¦² à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾à¦¹à§€à¦¨ à¦“ à¦…à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤à¥¤ à§¨à§¬à¦®à§‡ à¦®à¦¾à¦°à§à¦š à¦¸à¦¾à¦°à¦¾ à¦¦à§‡à¦¶à§‡ à¦ªà§à¦°à¦¤à¦¿à¦°à§‹à¦§ à¦¶à§à¦°à§ à¦¹à¦¯à¦¼ à¦à¦¬à¦‚ à¦à¦ªà§à¦°à¦¿à¦²à§‡à¦° à¦¶à§à¦°à§à¦¤à§‡à¦‡ à¦ªà§à¦°à¦¬à¦¾à¦¸à§€ à¦¸à¦°à¦•à¦¾à¦° à¦—à¦ à¦¿à¦¤ à¦¹à¦¯à¦¼à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦…à¦¸à§à¦¤à§à¦°à¦ªà§à¦°à¦¾à¦ªà§à¦¤à¦¿ à¦“ à¦ªà§à¦°à¦¶à¦¿à¦•à§à¦·à¦£ - à¦à¦‡ à¦¦à§à¦‡à¦¯à¦¼à§‡à¦° à¦˜à¦¾à¦Ÿà¦¤à¦¿à¦° à¦•à¦¾à¦°à¦£à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾à¦° à¦²à¦¡à¦¼à¦¾à¦‡ à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¿à¦¤ à¦°à§‚à¦ª à¦ªà§‡à¦¤à§‡ à¦ªà§‡à¦¤à§‡ à¦œà§à¦¨ à¦®à¦¾à¦¸ à¦ªà¦¾à¦° à¦¹à¦¯à¦¼à§‡ à¦¯à¦¾à¦¯à¦¼à¥¤ à§§à§§ à¦œà§à¦²à¦¾à¦‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦¸à¦¾à¦®à¦°à¦¿à¦• à¦•à¦®à¦¾à¦¨à§à¦¡ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à¥¤ à¦•à¦°à§à¦¨à§‡à¦² (à¦…à¦¬à¦ƒ)&nbsp;à¦®à§à¦¹à¦®à§à¦®à¦¦ à¦†à¦¤à¦¾à¦‰à¦² à¦—à¦£à¦¿ à¦“à¦¸à¦®à¦¾à¦¨à§€à¦•à§‡&nbsp;à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦¬à¦¾à¦¹à¦¿à¦¨à§€à§± à¦¸à§°à§à¦¬à¦¾à¦§à§€à¦¨à¦¾à¦¯à¦¼à¦•, à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¦•à§‡ à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ à§§à§§à¦Ÿà¦¿ à¦¸à§‡à¦•à§à¦Ÿà¦°à§‡<span style=\"font-size:10.8333px\"> </span>à¦­à¦¾à¦— à¦•à¦°à¦¾ à¦¹à¦¯à¦¼ à¦à¦¬à¦‚ à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à¦¿ à¦¸à§‡à¦¨à¦¾à¦¬à¦¾à¦¹à¦¿à¦¨à§€ à¦¥à§‡à¦•à§‡ à¦ªà¦¾à¦²à¦¿à¦¯à¦¼à§‡ à¦†à¦¸à¦¾ à¦•à¦°à§à¦®à¦•à¦°à§à¦¤à¦¾à¦¦à§‡à¦° à¦®à¦§à§à¦¯ à¦¥à§‡à¦•à§‡ à¦ªà§à¦°à¦¤à¦¿à¦Ÿà¦¿ à¦¸à§‡à¦•à§à¦Ÿà¦°à§‡à¦° à¦œà¦¨à§à¦¯à§‡ à¦à¦•à¦œà¦¨ à¦•à¦°à§‡ à¦…à¦§à¦¿à¦¨à¦¾à¦¯à¦¼à¦• à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à¦¾ à¦¹à¦¯à¦¼à¥¤</p>\r\n', '2018-07-29 08:30:10', 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§', 'admin'),
(22, 'Preserving war history', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"https://assetsds.cdnedge.bluemix.net/sites/default/files/styles/big_1/public/news/images/photo-2wb.jpg?itok=vBGZgu50\" title=\"\" /></p>\r\n\r\n<p>People have rarely heard of Saiful Islam a preserver of the nation&rsquo;s history. He is a Philatelic dealer and collector of the Liberation war related items. He collects old newspapers, documents, stamps, books, photos, and philatelic items from waste papers piled up in one of the shanty parts of Old Dhaka.</p>\r\n\r\n<p>His passion to preserve historical remnants began after he completed his HSC where he spent ample time and money in search for old artifacts particularly from the pre and post Liberation time. This devotion demanded more time, so he gave up his banking career and invested time in enriching his collection.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-07-29 08:30:12', 'Liberation ', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `posts_buffer`
--

CREATE TABLE `posts_buffer` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(100) NOT NULL,
  `postDesc` varchar(5000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `postTag` varchar(20) NOT NULL,
  `postAuthor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usertype` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `password`, `emailid`, `createdon`, `usertype`) VALUES
(5, 'expcode', 'Expert Code', 'rajan', 'expcode@gmail.com', '2015-08-21 14:01:26', 'normal'),
(6, 'admin', 'admin', 'admin', 'admin@admin.com', '2015-08-22 13:34:00', 'admin'),
(8, 'sourav', 'Sourav ', '1234', 'sourav39@student.sust.edu', '2018-07-29 08:03:22', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `users_buffer`
--

CREATE TABLE `users_buffer` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usertype` varchar(20) NOT NULL DEFAULT 'nornal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `postAuthor` varchar(40) NOT NULL,
  `postID` int(11) NOT NULL,
  `postLikes` int(11) NOT NULL DEFAULT '0',
  `postDisLikes` int(11) NOT NULL,
  `postComments` int(11) NOT NULL DEFAULT '0',
  `postViews` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User and Post relation Table';

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`postAuthor`, `postID`, `postLikes`, `postDisLikes`, `postComments`, `postViews`) VALUES
('qt', 1, 4, 0, 0, 20),
('admin', 19, 0, 0, 0, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD UNIQUE KEY `commentID` (`commentID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_table`
--
ALTER TABLE `news_table`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postTitle` (`postTitle`);

--
-- Indexes for table `posts_buffer`
--
ALTER TABLE `posts_buffer`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_buffer`
--
ALTER TABLE `users_buffer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`emailid`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postID` (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news_table`
--
ALTER TABLE `news_table`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts_buffer`
--
ALTER TABLE `posts_buffer`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_buffer`
--
ALTER TABLE `users_buffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
