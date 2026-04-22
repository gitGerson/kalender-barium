-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 22, 2026 at 05:01 AM
-- Server version: 11.8.6-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u221654202_barium`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pamflet` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `link_info` varchar(255) DEFAULT NULL,
  `link_reg` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `pamflet`, `title`, `date`, `price`, `link_info`, `link_reg`, `keterangan`, `created_at`, `updated_at`) VALUES
(7, '01JN1CC16MHH8YH7NA48ZZYRNK.jpg', 'LPS CALL FOR RESEARCH', '2025-06-25', NULL, 'https://www.instagram.com/share/p/BAVqipIKiQ', NULL, NULL, '2025-02-26 15:00:28', '2025-03-02 06:44:43'),
(8, '01JN1CDRBZCM9G45RMTF3VM2K1.jpg', 'SEMINAR NASIONAL PUBLIKASI JURNAL ILMIAH', '2025-03-15', NULL, 'https://www.instagram.com/p/DGUxtwTxfRj/?img_index=3&igsh=NGt1MmY2bHZ6ZDlj', NULL, NULL, '2025-02-26 15:01:24', '2025-03-06 14:59:07'),
(9, '01JN1CGT08RKWHJW40Q09G39P4.jpg', 'PELATIHAN SISTEM MANAJEMEN K3', '2025-03-01', NULL, 'https://www.instagram.com/p/DGfnEGzyKab/?igsh=MTNvcnh6bTVsY2tmMw==', NULL, NULL, '2025-02-26 15:03:04', '2025-03-06 15:00:10'),
(10, '01JN1CK7DXE9T9M2A630ASQMES.jpg', 'SEMINAR NASIONAL KEPENULISAN DAN PUBLIKASI ILMIAH', '2025-03-09', NULL, 'https://www.instagram.com/p/DGUxtwTxfRj/?img_index=3&igsh=NGt1MmY2bHZ6ZDlj', NULL, NULL, '2025-02-26 15:04:24', '2025-03-06 15:01:48'),
(11, '01JN1CRP9ETX3MGGKQQF36BQ95.jpg', 'SEMINAR NAONAL KARYA TULIS ILMIAH', '2025-03-08', NULL, 'https://www.instagram.com/p/DGUxtwTxfRj/?img_index=3&igsh=NGt1MmY2bHZ6ZDlj', NULL, NULL, '2025-02-26 15:07:23', '2025-03-06 15:02:24'),
(12, '01JN1DF293C4W7SE1ZBRDP2R7F.jpg', 'LOMBA ESAI INOVASI NUSANTARA', '2025-03-05', 40000.00, 'https://www.instagram.com/share/p/BALkErA8Mu', NULL, NULL, '2025-02-26 15:19:36', '2025-03-06 15:03:59'),
(13, '01JN1DGC4RMEQ73BXR9VFF2Z7R.jpg', 'PELATIHAN', '2025-03-02', NULL, 'https://www.instagram.com/share/p/BBFSKHmOF9', NULL, NULL, '2025-02-26 15:20:19', '2025-03-06 15:04:35'),
(14, '01JN1DJHCPK253AKH6A5TFYSKK.jpg', 'ESSAY COMPETITION', '2025-03-14', 25000.00, 'https://www.instagram.com/share/p/BBPpD3KgdI', NULL, NULL, '2025-02-26 15:21:30', '2025-03-06 15:07:52'),
(15, '01JN1DMZZD5X1EPHQYNM3G0ND6.jpg', 'BUSINESS PLAN COM', '2025-03-07', NULL, 'https://www.instagram.com/share/p/BBqg_LtBPT', NULL, NULL, '2025-02-26 15:22:50', '2025-03-06 15:09:28'),
(16, '01JN1DPRYR9P5D611G0Q01E05J.jpg', 'LOMBA ESSAY ILMIAH DAN POSTER PUBLIK', '2025-03-30', 45000.00, 'https://www.instagram.com/share/p/BAR1aVoFyT', NULL, NULL, '2025-02-26 15:23:49', '2025-03-06 15:12:58'),
(17, '01JN1DT67191AZ8GKDDGKRBKKV.jpg', 'LOMBA PAPER', '2025-03-18', 35000.00, 'https://www.instagram.com/share/p/BAOtsVz2bB', NULL, NULL, '2025-02-26 15:25:40', '2025-03-06 15:14:31'),
(18, '01JN1DWRFDG2BM1ZHXE8ATTBPS.jpg', 'LOMBA ESAI NASIONAL', '2025-03-28', NULL, 'https://www.instagram.com/share/p/BAQl8Wk2eC', NULL, NULL, '2025-02-26 15:27:05', '2025-03-06 15:15:20'),
(19, '01JN1DYJ7FYH71CG6ANW83QWGM.jpg', 'NATIONAL PAPER COMPETITION', '2025-03-05', 180000.00, 'https://www.instagram.com/share/p/BAFy2qkjRO', NULL, NULL, '2025-02-26 15:28:04', '2025-03-06 15:16:43'),
(21, '01JN1E1NSJ53YQV2VZAZK4MPGS.jpg', 'RESPECTIVE FEST 2025', '2025-03-20', 55000.00, 'https://www.instagram.com/share/p/BAX88uYKkU', NULL, NULL, '2025-02-26 15:30:10', '2025-03-06 15:18:34'),
(22, '01JN1E5CVMMK5900VBJX64G7N3.jpg', 'REVEWABLE ENERGY INNOVATION FESTIVAL 2025', '2025-03-11', 80000.00, 'https://www.instagram.com/share/p/BABaUtQRve', NULL, NULL, '2025-02-26 15:31:48', '2025-03-06 15:20:36'),
(23, '01JN1E7EDQ45TTDKAB2C0TR478.jpg', 'CALL FOR ABSTRACT', '2025-03-25', NULL, 'https://www.instagram.com/share/p/BAMTg91WX2', NULL, NULL, '2025-02-26 15:32:55', '2025-03-06 15:21:41'),
(24, '01JN1EAEFQAYTSCJHFCZ5J4G9S.jpg', 'SASECOM SMART SAFETY COMPETITION', '2025-03-18', 50000.00, 'https://www.instagram.com/share/p/BAFy2qkjRO', NULL, NULL, '2025-02-26 15:34:33', '2025-03-06 15:23:03'),
(25, '01JN1ED1R4XHJ0PBMX36PRMG2G.jpg', 'RECURSION 1.0', '2025-03-18', 90000.00, 'https://www.instagram.com/share/p/BAKsQrHYIC', NULL, NULL, '2025-02-26 15:35:58', '2025-03-06 15:26:39'),
(26, '01JN1EFZGW2XB5NHBFZVE5QSC4.jpg', 'EXCESS 2025 (INTERNATIONAL ESSAY COMPETITION)', '2025-03-18', NULL, 'https://www.instagram.com/share/p/_mkSa9xmU', NULL, NULL, '2025-02-26 15:37:35', '2025-03-06 15:27:10'),
(27, '01JPAZ8QSH86JQFC929Y3K6945.jpg', 'INCOSHET 2025', '2025-03-18', 50000.00, 'https://www.instagram.com/share/p/_qLpKBHvQ', NULL, NULL, '2025-03-14 18:39:35', '2025-03-15 00:54:28'),
(28, '01JPAZC2XV2A76HV43ZN9RRX5M.jpg', 'KPM COMPETITION 2025', '2025-03-31', 65000.00, 'https://www.instagram.com/share/p/_lK88YtcN', NULL, NULL, '2025-03-14 18:41:24', '2025-03-15 00:51:55'),
(29, '01JPAZG3HD1E3ZSYCA0CTG60GF.jpg', 'DEMAND \'\' ESAI ILMIAH\'', '2025-03-30', 60000.00, 'https://www.instagram.com/share/p/BAFh8QGcQF', NULL, NULL, '2025-03-14 18:43:36', '2025-03-15 00:59:47'),
(30, '01JPAZHYNH5YTJQ112W2JQEMXR.jpg', 'TRAINING K3', '2025-03-16', 35000.00, 'https://www.instagram.com/share/p/_cdJiFQhS', NULL, NULL, '2025-03-14 18:44:37', '2025-03-15 00:53:06'),
(31, '01JPAZN2J5CVSGQ9MRBSNXE3C7.jpg', 'NATIONAL ESSAY COMETITION', '2025-03-16', 40000.00, 'https://www.instagram.com/share/p/BAR5Fit1K0', NULL, NULL, '2025-03-14 18:46:19', '2025-03-15 01:02:21'),
(32, '01JPAZRBM38PYMM2M97EZGX521.jpg', 'LOMBA POSTER', '2025-03-20', 75000.00, 'https://www.instagram.com/share/p/_8iTBMX6K', NULL, NULL, '2025-03-14 18:48:07', '2025-03-15 00:55:26'),
(33, '01JPAZVB0CJG4MSCH3YRYRNFM1.jpg', 'BUSINESS CASE COMPETITION', '2025-03-18', 270000.00, 'https://www.instagram.com/share/p/_oVf-c9CJ', NULL, NULL, '2025-03-14 18:49:44', '2025-03-15 00:56:58'),
(35, '01JPBNDFE63VCCY59E55639ZZX.jpg', 'RENEWABLE ENERGY INOVATION IDEA 2025', '2025-03-24', 110000.00, 'https://www.instagram.com/share/p/_ZYaoPiq_', NULL, NULL, '2025-03-15 01:06:39', '2025-03-15 01:06:39'),
(36, '01JQE87YX9DQX5T8Z1RX0RZ5B0.png', 'Event Menulis Gratis 2025 Nasional', '2025-04-10', 0.00, 'https://www.instagram.com/p/DHtg_oIzksK/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-28 11:29:52', '2025-03-28 11:29:52'),
(37, '01JQE8CN60Z6FDB7DEJ0NNH86T.png', 'LOMBA KARYA TULIS ILMIAH ANTAR MAHASISWA TINGKAT NASIONAL', '2025-04-05', 100000.00, 'https://www.instagram.com/p/DHs5nYipwRX/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-28 11:32:25', '2025-03-28 11:32:25'),
(38, '01JQE8HHZ0NC64PH0DJKY2T4DZ.png', 'LOMBA POSTER PUBLIK NASIONAL', '2025-04-24', 25000.00, 'https://www.instagram.com/p/DHoyKMVTxmJ/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-28 11:35:06', '2025-03-28 11:35:06'),
(39, '01JQE8P1CE437SW1R5D20X2G9G.png', 'PILNAS 3 LOMBA ESAI', '2025-04-05', 45000.00, 'https://www.instagram.com/p/DHnxl26pY1a/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-28 11:37:33', '2025-03-28 11:37:33'),
(40, '01JQE8S6YX9MTB08AYN1RYE3YJ.png', 'NATIONAL ESSAY COMPETITION', '2025-04-18', 75000.00, 'https://www.instagram.com/p/DHnjhsxJsmr/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-28 11:39:17', '2025-03-28 11:39:17'),
(41, '01JQE8Y717D5E3F6BSKKFNAQE4.png', 'LOMBA ESAI ( PERAN MATEMATIKA DALAM ERA MODERN )', '2025-04-02', 20000.00, 'https://www.instagram.com/p/DHnIqafpSOl/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-28 11:42:01', '2025-03-28 11:42:01'),
(42, '01JQE97MSRTD8HVZDGRWPHX4P4.png', 'GLOBAL INTERNATIONAL SEMINAR', '2025-04-27', 0.00, 'https://www.instagram.com/p/DHsJsFgzl5Z/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-28 11:47:10', '2025-03-28 11:47:10'),
(43, '01JQE9EGX9S8GR989H0BBSMSW4.png', 'NATIONAL BUSINESS PLAN COMPETITION', '2025-04-11', 0.00, 'https://www.instagram.com/p/DHvcWYfPe8P/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-28 11:50:55', '2025-03-28 11:50:55'),
(44, '01JQE9JNR4MCK69NQD1EEM3E3Y.png', 'EBX 2025', '2025-04-03', 70000.00, 'https://www.instagram.com/p/DHunGAevVep/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-28 11:53:11', '2025-03-28 11:53:11'),
(45, '01JQE9T15W6Q6J31C6VFRF7Y6C.png', 'NATIONAL SCIENTIFIC COMPETITION', '2025-04-25', 75000.00, 'https://www.instagram.com/p/DHkeUsBPGfB/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-28 11:57:12', '2025-03-28 11:57:12'),
(46, '01JQJ6YA1YXT7FSGW5KYP1ZXD1.png', 'TROFIC 2025 ( ESAI DAN POSTER )', '2025-04-11', 20000.00, 'https://www.instagram.com/p/DHu3l85zTPt/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-30 00:24:04', '2025-03-30 00:24:04'),
(47, '01JQJ72BHT04KT3Y0NNWEFG4QZ.png', 'NATIONAL ESSAY COMPETITION', '2025-04-15', 60000.00, 'https://www.instagram.com/p/DHuN5NHCBlG/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-30 00:26:17', '2025-03-30 00:26:17'),
(48, '01JQJ7DA8AXFF54V97FWV0C2A0.png', 'KEJUARAAN SAINS PELAJAR INDONESIA', '2025-04-18', 0.00, 'https://www.instagram.com/p/DHpy2_0TqKM/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-30 00:32:16', '2025-03-30 00:32:16'),
(49, '01JQJ7K4VJH8V7347MRX1HEFZ4.png', 'E-nec 2025 ( EDUSMART NATIONAL ESSAY COMPETITION )', '2025-04-11', 30000.00, 'https://www.instagram.com/p/DHptvYmTRM8/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-03-30 00:35:27', '2025-03-30 00:35:27'),
(50, '01JQZ3AZBDD1K1DKBAN60XBC06.png', 'BUSINESS PLAN', '2025-04-21', 100000.00, 'https://www.instagram.com/p/DH-vDkjSXYo/?utm_source=ig_web_copy_link', NULL, NULL, '2025-04-04 00:31:13', '2025-04-04 00:31:13'),
(51, '01JQZ3J0A3HNHWF4K9ADZ6BERC.png', 'PANGSA ESSAY COMPETITION 2025', '2025-04-20', 30000.00, 'https://www.instagram.com/p/DHvQm--Pf6E/?utm_source=ig_web_copy_link', NULL, NULL, '2025-04-04 00:35:03', '2025-04-04 00:35:03'),
(52, '01JQZ3SD6VA92R2CA4R2PN829V.png', 'LOMBA ESSAI NASIONAL', '2025-04-09', 60000.00, 'https://www.instagram.com/p/DHj8wJDzdr4/?utm_source=ig_web_copy_link', NULL, NULL, '2025-04-04 00:39:06', '2025-04-04 00:39:06'),
(53, '01JQZ6ZD2RRD5T11P96NTFMX7A.png', 'BUSINESS MODEL CANVAS COMPETITION', '2025-04-12', 40000.00, 'https://www.instagram.com/p/DH7e0tlzxZU/?utm_source=ig_web_copy_link', NULL, NULL, '2025-04-04 01:34:48', '2025-04-04 01:34:48'),
(54, '01JQZ763621MAJ99RD894DP4X0.png', 'KOMPETISI JURNALISTIK', '2025-04-13', 0.00, 'https://www.instagram.com/p/DHzd9cvyCs8/?utm_source=ig_web_copy_link', NULL, NULL, '2025-04-04 01:38:27', '2025-04-04 01:38:27'),
(55, '01JQZ7CRRBNR8YMHS90VKX4NNT.png', 'CREATION', '2025-04-10', 30000.00, 'https://www.instagram.com/p/DHiiTtpx4Ni/?utm_source=ig_web_copy_link', NULL, NULL, '2025-04-04 01:42:06', '2025-04-04 01:42:06'),
(56, '01JQZ968GMXKFRYXMFVP1H5EVE.png', 'IREX', '2025-04-05', 20000.00, 'https://www.instagram.com/p/DH8Z4hxzDI-/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-04 02:13:30', '2025-04-04 02:13:30'),
(57, '01JQZ9EY9YW64DKNJBKWB2KRVW.png', 'IEEE FEST 2025', '2025-04-30', 55000.00, 'https://www.instagram.com/p/DIAd5ysTBLf/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-04 02:18:14', '2025-04-04 02:18:14'),
(58, '01JQZ9P586QV80D3A3RR85B469.png', 'PELATIHAN MANAJEMEN RISIKO K3', '2025-04-26', 300000.00, 'https://www.instagram.com/p/DHTMaHvTvyg/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-04 02:22:11', '2025-04-04 02:22:11'),
(59, '01JRW67YDCA8PPR04WEFM3RS07.png', 'LOMBA KARYA TULIS ILMIAH NASIONAL', '2025-04-18', 100000.00, 'https://www.instagram.com/p/DIBoCjKpK9H/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-15 07:39:58', '2025-04-15 07:39:58'),
(60, '01JRW6AKYG24PMXT7WCGGA2J07.png', 'PRISMA LOMBA KARYA TULIS ILMIAH NASIONAL', '2025-04-14', 140000.00, 'https://www.instagram.com/p/DIOSo-nJ16F/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-15 07:41:25', '2025-04-15 07:41:25'),
(61, '01JRW6E3TGJT1QBTCK44C5JKB5.png', 'ESSAY COMPETITION ( GEODEFEST 2025)', '2025-04-30', 25000.00, 'https://www.instagram.com/p/DH7XTaZTeqE/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-15 07:43:20', '2025-04-15 07:43:20'),
(62, '01JRW6J444845MJ4SM66HMWHDA.png', 'ESSAY COMETITION FUTURE FORWARD', '2025-04-18', 35000.00, 'https://www.instagram.com/p/DISfAdizpmK/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-15 07:45:31', '2025-04-15 07:45:31'),
(63, '01JRW6N56XK6HDZ1PZE4DV54QJ.png', 'KSE JUARA 2025', '2025-04-30', 65000.00, 'https://www.instagram.com/p/DII3v5VzDZQ/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-15 07:47:11', '2025-04-15 07:47:11'),
(64, '01JRW6S25MHEGV9P0NH7V86WAM.png', 'AECTION 7.0', '2025-04-29', 100000.00, 'https://www.instagram.com/p/DHBUJEBvSh8/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-15 07:49:19', '2025-04-15 07:49:19'),
(65, '01JRW6VQJJG1N9KQR91GDX76XH.png', 'LINGFEST 3.0 COMPETITION FKIP UNS', '2025-04-20', 30000.00, 'https://www.instagram.com/p/DIQOs40SKvp/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-15 07:50:46', '2025-04-15 07:50:46'),
(66, '01JRW716V6HVH3KKZ7XHBV7ZRP.png', 'CHEMICAL ENGINEERING FREE CLASS ', '2025-04-19', NULL, 'https://www.instagram.com/p/DIRGuq9zM2P/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-04-15 07:53:46', '2025-04-15 07:53:46'),
(68, '01JTB6JB5NRXT7Y49PFRV92B6Q.png', 'WMMC 2025', '2025-05-08', 0.00, 'https://www.instagram.com/p/DI-2gW1ydg-/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-03 13:49:57', '2025-05-03 13:49:57'),
(69, '01JTB6QNTHXHHNAQ3JH7M56FGR.png', 'XENOVOLUTION CUP 10.0', '2025-05-16', 0.00, 'https://www.instagram.com/p/DJLzT-gyipT/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-03 13:52:52', '2025-05-03 13:52:52'),
(70, '01JTB72CF2J07G04QPKNYHC1EM.png', 'SPARK', '2025-05-10', 0.00, 'https://www.instagram.com/p/DJLgLh3yf8s/?utm_source=ig_web_copy_link', NULL, NULL, '2025-05-03 13:58:42', '2025-05-03 13:58:42'),
(71, '01JTB76KC8NHARH3F1DXHRRHRX.png', 'POSTER COMPETITION', '2025-05-16', 0.00, 'https://www.instagram.com/p/DJLf54XyEQs/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-03 14:01:01', '2025-05-03 14:01:01'),
(72, '01JTB78X4D3W2HRS4SQRHQW2QW.png', 'FOPESCO', '2025-05-15', 15000.00, 'https://www.instagram.com/p/DJI8NZnSbbZ/?utm_source=ig_web_copy_link', NULL, NULL, '2025-05-03 14:02:16', '2025-05-03 14:02:16'),
(73, '01JTB7HGPXNYTDPCC3M06Z71V6.png', 'MIRACLE PUBLIC HEALTH COMPETITION', '0025-05-12', 135000.00, 'https://www.instagram.com/p/DJI7opRyeO8/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-03 14:06:58', '2025-05-03 14:06:58'),
(74, '01JTB7QAHFF5S6WE6W1WSKVQ3X.png', 'PENDIKAR 2025', '2025-05-02', 0.00, 'https://www.instagram.com/p/DI5RCXdyd6n/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-03 14:10:09', '2025-05-03 14:10:09'),
(75, '01JTD1TRDTPC02ZP2DNT5PBN46.png', 'ECOFORSTUNAT', '2025-05-20', 0.00, 'https://www.instagram.com/p/DJE0tUITjLF/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-04 07:05:39', '2025-05-04 07:05:39'),
(76, '01JTD1YSQ9AQR5Q3Q540351YRY.png', 'POP COMPETITION', '2025-05-07', 0.00, 'https://www.instagram.com/p/DJE03THTumt/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-04 07:07:51', '2025-05-04 07:07:51'),
(77, '01JTD233YQHQBKS5NC3XHV3A9B.png', 'INTERNATIONAL SEMINAR OF WINTAS & 1 ST DIGITAL ACCOUNTING COMPETITION', '2025-05-24', 100000.00, 'https://www.instagram.com/p/DJGTNMIznQM/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-04 07:10:12', '2025-05-04 07:10:12'),
(78, '01JTD28H60QQA2XH0ZWENRFYKW.png', 'BRAWIJAYA CHEMISTRY WEEK 2025', '2025-05-17', 95000.00, 'https://www.instagram.com/p/DJJaURJpvjR/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-04 07:13:10', '2025-05-04 07:13:10'),
(79, '01JTD2C4XB1R81S34D281XC5R8.png', 'PEKAN SAINS NASIONAL', '2025-05-17', 100000.00, 'https://www.instagram.com/p/DJGnywTTOvn/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-04 07:15:08', '2025-05-04 07:15:08'),
(80, '01JTD2KTZFFP1GHA77HABGQJR7.png', 'KREASI PUBLIK', '2025-05-08', 35000.00, 'https://www.instagram.com/p/DI-k2lZThua/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-04 07:19:20', '2025-05-04 07:19:20'),
(81, '01JTD2Q6225XEGW6VEJ8X9GZ34.png', 'INSPIRASI AKSARA NUSANTARA', '2025-05-20', 45000.00, 'https://www.instagram.com/p/DJIueu0z7CP/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-04 07:21:10', '2025-05-04 07:21:10'),
(82, '01JTD2Z96BXJZP05R75SY9XZ7G.png', 'FASSCOM 25 (NATIONAL ESSAY COMPETITION)', '2025-05-31', 70000.00, 'https://www.instagram.com/p/DJHMk5PzLD3/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-04 07:25:35', '2025-05-04 07:25:35'),
(83, '01JTD32HDR25NJCRHJTHW4WGK7.png', 'CALL FOR PAPER', '2025-05-16', 50000.00, 'https://www.instagram.com/p/DI_Vqk6p1R_/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-05-04 07:27:22', '2025-05-04 07:27:22'),
(84, '01JWTKTENCN3KT589DWWRVMWH3.png', 'DIPONEGORO POSTER COMPETITION', '2025-06-30', 0.00, 'https://www.instagram.com/p/DJ6o0x_JScC/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:01:34', '2025-06-03 10:01:34'),
(85, '01JWTM1TSGY1ANZ5XDPPNYQRB1.png', 'LOMBA POSTER NASIONAL \'\' NUSANTARA DENGAN PRODUK SUSU LOKAL\"', '2025-06-07', 0.00, 'https://www.instagram.com/p/DKJpwKTpgzV/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:05:36', '2025-06-03 10:05:36'),
(86, '01JWTM9Z1Z3WNBH6D5AEJ0B8Z9.png', 'LOMBA TEORIST UKMP 2025 ESAI NASIONAL', '2025-06-05', 35000.00, 'https://www.instagram.com/p/DJ71kvECUzp/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:10:02', '2025-06-03 10:10:02'),
(87, '01JWTMEHSQCH9GSJKN6M62SFKF.png', 'GEMASTE 2025 NATIONAL ESSAY COMPETITION', '2025-06-01', 50000.00, 'https://www.instagram.com/p/DJ_mZhVPF0M/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:12:33', '2025-06-03 10:12:33'),
(88, '01JWTMHGJGAK11K9KCPX7S38MF.png', 'PLANTATION SMART COMPETITION 2025', '2025-06-14', 20000.00, 'https://www.instagram.com/p/DKUqfS2PTu3/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:14:10', '2025-06-03 10:14:10'),
(89, '01JWTN04WK4210HCY86YGNF74F.png', 'LOMBA POSTER BANK INDONESIA', '2025-06-30', 0.00, 'https://www.instagram.com/p/DKVc4CXzIAm/?utm_source=ig_web_copy_link', NULL, NULL, '2025-06-03 10:22:09', '2025-06-03 10:22:09'),
(90, '01JWTN4RFR2JP9PF5PFDRJWAFE.png', 'NATIONAL BIOTECHNOLOGY ESSAY COMPETITION (NBEC) 2025', '2025-06-10', 40000.00, 'https://www.instagram.com/p/DKTAxDoo38D/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:24:40', '2025-06-03 10:24:40'),
(91, '01JWTNBHCMFK31627HW0RPX9Y4.png', ' ESSAY FUSION 2025 FUTURE SYNERGY OF UNSEFA & SIFTA', '2025-06-29', 30000.00, 'https://www.instagram.com/p/DKVcbWjzJWs/?utm_source=ig_web_copy_link', NULL, NULL, '2025-06-03 10:28:23', '2025-06-03 10:28:23'),
(92, '01JWTPJR34NCE3EDZAFGJANH0B.png', 'DENTISTRY SCIENTIFIC COMPETITION INTERNATIONAL ESSAY', '2025-06-18', 175000.00, 'https://www.instagram.com/p/DKVciJrzsJb/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:49:47', '2025-06-03 10:49:47'),
(93, '01JWTPNC8QZNKQ71T7PSPYF4ZQ.png', 'CYANIDE UDAYANA XXIX ESSAY', '2025-06-21', 40000.00, 'https://www.instagram.com/p/DKOZeD8zGqC/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:51:14', '2025-06-03 10:51:14'),
(94, '01JWTPQWY43VKT9AJ7MS7SD357.png', 'DINAMIS ESSAY COMPETITION', '2025-06-18', 30000.00, 'https://www.instagram.com/p/DKZIkoOO1yC/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:52:36', '2025-06-03 10:52:36'),
(95, '01JWTPVR2E9R2DYFTETHV0V5X0.png', 'STUDENT PAPER COMPETITION', '2025-06-09', 100000.00, 'https://www.instagram.com/p/DKJ9HVGx34i/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:54:42', '2025-06-03 10:54:42'),
(96, '01JWTQ1A0FTGV92A4JAJPBT0GA.png', 'LKTI METHANOL 2025', '2025-06-08', 120000.00, 'https://www.instagram.com/p/DJoq-XGpgtL/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 10:57:44', '2025-06-03 10:57:44'),
(97, '01JWTQ5Z87Z4JE0GC2PHN6DEMC.png', 'PRISMATIC 2025', '2025-06-20', 40000.00, 'https://www.instagram.com/p/DKYS9y-vcdh/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 11:00:17', '2025-06-03 11:00:17'),
(98, '01JWTQGYEDMSS6V9QCD5QVMSND.png', 'DIPONEGORO SCIENCE COMPETITION LKTI', '2025-06-20', 0.00, 'https://www.instagram.com/p/DJ9Ke_1pmom/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 11:06:17', '2025-06-03 11:06:17'),
(99, '01JWTQMXNP2TJS9WRPDQCV32RV.png', 'POLFEST LOMBA ESSAY TINGKAT NASIONAL', '2025-06-13', 15000.00, 'https://www.instagram.com/p/DKKI-DOxR4W/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 11:08:27', '2025-06-03 11:08:27'),
(100, '01JWTQS3KT31HHXHC9DGE64GZM.png', 'ENFICTION III', '2025-06-12', 40000.00, 'https://www.instagram.com/p/DKOubHzpUme/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 11:10:44', '2025-06-03 11:10:44'),
(101, '01JWTQX7J1H3F2MPNM5SSKQDCJ.png', 'BIOTECHFEST VIDEO  EDUKASI', '2025-06-10', 0.00, 'https://www.instagram.com/p/DKBy8bETke1/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-03 11:12:59', '2025-06-03 11:12:59'),
(102, '01JXEN25NG5G98YVTP6BDFS0PA.png', 'PEKAN RAYA POSTER MAHASISWA NASIONAL 2025', '2025-06-17', 60000.00, 'https://www.instagram.com/p/DKZzU_0TjhM/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-11 04:48:04', '2025-06-11 04:48:04'),
(103, '01JXEN5G1WQGSC74GHX8TKRQDC.png', 'PEKAN IT 2025', '2025-06-28', 50000.00, 'https://www.instagram.com/p/DKttBiOPNUP/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-11 04:49:53', '2025-06-11 04:49:53'),
(104, '01JXEN8NX0FSSBXYKD9C8J0R8G.png', 'FINEST', '2025-06-27', 100000.00, 'https://www.instagram.com/p/DKtZSTqv7z5/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-11 04:51:38', '2025-06-11 04:51:38'),
(105, '01JXENCJ8JMJD2RP7FKN5QQ4V9.png', 'BRAWIJAYA ESSAY COMPETITION 2025', '2025-06-15', 65000.00, 'https://www.instagram.com/p/DKg0U18Srbr/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-11 04:53:45', '2025-06-11 04:53:45'),
(106, '01JXENGZWDEW86VMVNBJZ4Z0H7.png', 'LKTI FENOL UNNES 2025', '2025-06-26', 125000.00, 'https://www.instagram.com/p/DKH-_zkP5Bo/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-06-11 04:56:10', '2025-06-11 04:56:10'),
(107, '01JZ8BMSQS9J2MTKZZ44MZX93Z.png', 'ECODAYS NATIONAL ESSAY COMPETITION', '2025-07-23', 60000.00, 'https://www.instagram.com/p/DLjjddoSuov/?utm_source=ig_web_copy_link', NULL, NULL, '2025-07-03 14:39:26', '2025-07-03 14:39:26'),
(108, '01JZ8BW2TVRASQAHYCRCEPQWDK.png', 'INNOVATION PAPER COMPETITION', '2025-07-14', 0.00, 'https://www.instagram.com/p/DLojJr-vQAW/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 14:43:25', '2025-07-03 14:43:25'),
(109, '01JZ8C3N86XQSX4JQ3QV66VZNW.png', 'LKTI ALCOFE 19', '2025-07-21', 0.00, 'https://www.instagram.com/p/DLmv7LUPAxt/?utm_source=ig_web_copy_link', NULL, NULL, '2025-07-03 14:47:33', '2025-07-03 14:47:33'),
(110, '01JZ8C943F9YRXW7D9C5A0HF40.png', 'GLOBAL STUDENT AWARDS FOR HEALTH (LITERATURE REVIEW, INFOGRAFIS)', '2025-07-24', 0.00, 'https://www.instagram.com/p/DLmWi6RPqAI/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 14:50:32', '2025-07-03 14:50:32'),
(111, '01JZ8CD2PYMS02WHCM3YVWP8TF.png', 'POSTER NATIONAL ENGLISH SKILLS COMPETITIONS E.S.A 2025', '2025-07-13', 15000.00, 'https://www.instagram.com/p/DLlii4EPHiN/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 14:52:42', '2025-07-03 14:52:42'),
(112, '01JZ8CJ2HNQSGSGJNM589SZ8YN.png', ' Pendaftaran Lomba Esai Nasional GELASI 2025', '2025-07-11', 40000.00, 'https://www.instagram.com/p/DLjilZJvFiE/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==https://www.instagram.com/p/DLjilZJvFiE/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 14:55:25', '2025-07-03 14:55:25'),
(113, '01JZ8CP5Y05FQTR2H3JPPEFTTG.png', 'BMC AMBITION 2025', '2025-07-04', 125000.00, 'https://www.instagram.com/p/DLhcxmWvWBI/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 14:57:40', '2025-07-03 14:57:40'),
(114, '01JZ8CS6J1BG328NPV4292GWR2.png', 'DEFINE NATIONAL BUSINESS PLAN COMPETITION ', '2025-07-17', 40000.00, 'https://www.instagram.com/p/DLhBS4sPzK-/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 14:59:19', '2025-07-03 14:59:19'),
(115, '01JZ8CZA5K6A1E69J7G0NR7YJ8.png', 'POSTER HEALCAST SOSM 2025', '2025-07-09', 70000.00, 'https://www.instagram.com/p/DLe7KwmPvUu/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 15:02:39', '2025-07-03 15:02:39'),
(116, '01JZ8D52YMD15MTR4GBY0Y2FEY.png', 'LOMBA POSTER PINTAR', '2025-07-08', 0.00, 'https://www.instagram.com/p/DLpaapTSMhP/?utm_source=ig_web_copy_link', NULL, NULL, '2025-07-03 15:05:48', '2025-07-03 15:05:48'),
(117, '01JZ8D7Y22Q4215R5GH4S37K1B.png', '[PELATIHAN KALIBRASI ALAT UKUR LABORATORIUM BATCH 9]', '2025-07-06', 0.00, 'https://www.instagram.com/p/DLo5K-ipLTA/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 15:07:22', '2025-07-03 15:07:22'),
(118, '01JZ8DGSCD7EX87M220QF920C9.png', '[OPEN REGISTRATION POSTER AND SCIENTIFIC ESSAY COMPETITION EPIDEMIC 2025]', '2025-07-22', 0.00, 'https://www.instagram.com/p/DLoRgm1JiYT/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 15:12:12', '2025-07-03 15:12:12'),
(119, '01JZ8DKGTRJTE1NF1KVA1ZKPV1.png', '[INJECTION EPW 16 ITS 2025]', '2025-07-21', 0.00, 'https://www.instagram.com/p/DLomaYIp1-a/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 15:13:41', '2025-07-03 15:13:41'),
(120, '01JZ8DPXG84V27RK0B83VQFGH8.png', '[Industrial Engineering Competition 2025 – EXTENDED until 5 July! ]', '2025-07-05', 30000.00, 'https://www.instagram.com/p/DLmT0MnJ-4A/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 15:15:33', '2025-07-03 15:15:33'),
(121, '01JZ8DT97Q0JY89NK0VADK7GTR.png', 'LKTI-N 2025', '2025-07-12', 80000.00, 'https://www.instagram.com/p/DLjkPMXJV1m/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 15:17:23', '2025-07-03 15:17:23'),
(122, '01JZ8DY74HYBNA4MVEBBRNCXVW.png', 'VETCONE 2025', '2025-07-10', 70000.00, 'https://www.instagram.com/p/DLeqk_IpV9R/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-07-03 15:19:32', '2025-07-03 15:19:32'),
(123, '01JZ9MR86S1MSVVYJ83MVRKYMK.png', '[GELOMBANG 1] CEPTION ', '2025-07-10', 110000.00, 'https://www.instagram.com/p/DLeBsswBs4-/?img_index=1&igsh=MTRsaWlidjI1aG1hZg==', NULL, NULL, '2025-07-04 02:37:51', '2025-07-04 02:37:51'),
(124, '01K1SFYQAACKAY3R25XSEADHAZ.png', 'BUSINESS PLAN COMPETITION', '2025-08-22', 0.00, 'https://www.instagram.com/p/DM4gmOLSiLZ/?utm_source=ig_web_copy_link', NULL, NULL, '2025-08-04 02:53:14', '2025-08-04 02:53:14'),
(125, '01K1SG8V6M2BC6AYQYPVRJD51W.png', 'BIOCOMPACT ESSAY COMPETITION', '2025-08-28', 0.00, 'https://www.instagram.com/p/DMq9HTCznGj/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 02:58:46', '2025-08-04 02:58:46'),
(126, '01K1SGD05QRKRTEZHMV4ZS7KMP.png', 'EKSPLORA LOMBA ESSAY', '2025-08-30', 20000.00, 'https://www.instagram.com/p/DMgGeC4TCeb/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:01:02', '2025-08-04 03:01:02'),
(127, '01K1SGFS1EZ3KQ3P4X407YK9Q5.png', 'CIIF 3.0', '2025-08-05', 65000.00, 'https://www.instagram.com/p/DMgGFQKTd7w/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:02:33', '2025-08-04 03:02:33'),
(128, '01K1SGKWW5B6F8EVW26AWMRQR3.png', 'FAST 2025 ESSAY COMPETITION', '2025-08-07', 30000.00, 'https://www.instagram.com/p/DMMrjY4yYs7/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:04:48', '2025-08-04 03:04:48'),
(129, '01K1SH7Y74P9H84SBZ9N5B8X2V.png', 'LIMAS INTERNATIONL XXV [ESSAY COMPETITION]', '2025-08-25', 85000.00, 'https://www.instagram.com/p/DMKNh4UySzZ/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:15:45', '2025-08-04 03:15:45'),
(130, '01K1SH9VGRFNV3ABCVRDRNJ3B7.png', 'LOMBA ESAI SPESIAL KEMERDEKAAN INDONESIA', '2025-08-07', 30000.00, 'https://www.instagram.com/p/DM4xs_np6hg/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:16:48', '2025-08-04 03:16:48'),
(131, '01K1SHF9XYNWQ1AVE3HT2EW2T7.png', 'LOMBA ESSAY NASIONAL', '2025-08-10', 40000.00, 'https://www.instagram.com/p/DM4wKzep-K3/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:19:46', '2025-08-04 03:19:46'),
(132, '01K1SHJWJVVQ1DSSJHP33DMSBN.png', 'KOMESCOM [KOMPRES ESSAY COMPETITION]', '2025-08-14', 49999.00, 'https://www.instagram.com/p/DM4f1ykpX3E/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:21:44', '2025-08-04 03:21:44'),
(133, '01K1SHNNFXMC4VF5FP88W6AC5F.png', 'CALL FOR PAPER', '2025-08-03', 160000.00, 'https://www.instagram.com/p/DM4aV8_pAzA/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:23:15', '2025-08-04 03:23:15'),
(134, '01K1SHVN8TGV2EPF75AT2E2CCH.png', 'INVASI INOVASI SAINS [ESAI DAN LKTI]', '2025-08-27', 55000.00, 'https://www.instagram.com/p/DMzeZyhp7we/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:26:31', '2025-08-04 03:26:31'),
(135, '01K1SHY6D2VY84V2EE0VJJJ5AA.png', 'LKTIN HIMAGEO UNSIL 2025', '2025-08-22', 0.00, 'https://www.instagram.com/p/DMzeGsOp_oL/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:27:54', '2025-08-04 03:27:54'),
(136, '01K1SJ11BYTNHT2ZSJRKKMWBCM.png', 'LOMBA EAI NASIONAL KIMIA 2025', '2025-08-20', 85000.00, 'https://www.instagram.com/p/DMyruchT1pg/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:29:27', '2025-08-04 03:29:27'),
(137, '01K1SJ486J0DBMK1TY7NVHJ46N.png', 'BMC AGROPRENEUR', '2025-08-05', 80000.00, 'https://www.instagram.com/p/DMyrbWfzEh-/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-04 03:31:13', '2025-08-04 03:31:13'),
(138, '01K314HZ9AZV9W8FHYM5T7Q8YS.jpg', 'EXCLUSIVE WEBINAR FOOD SAFETY : SCIENCE IN ACTION', '2025-08-19', 0.00, NULL, NULL, NULL, '2025-08-19 12:23:40', '2025-08-19 12:23:40'),
(139, '01K3ZHMVD0Q3W74SZMAZF57H0Z.png', ' SPACE 2.0 UKM KEWIRAUSAHAAN 2025', '2025-09-04', 75000.00, 'https://www.instagram.com/p/DN_4vsaEma-/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', 'https://linktr.ee/Space.unnes', NULL, '2025-08-31 07:49:38', '2025-08-31 07:49:38'),
(140, '01K3ZHVFC3YWGZD98391VCFF71.png', 'BRISA IMPACT Vol. 1 – International Paper Competition', '2025-09-14', 0.00, 'https://www.instagram.com/p/DN95S-Rj3XP/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', 'https://bit.ly/FULLPAPERTRACKBRISAIMPACTVOL1', NULL, '2025-08-31 07:53:15', '2025-08-31 07:53:15'),
(141, '01K3ZHYQD46DBB0SHGDQGBKCWX.png', 'National Business Plan Competition 2025', '2025-09-22', 0.00, 'https://www.instagram.com/p/DN8HPzTj98o/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-31 07:55:02', '2025-08-31 07:55:02'),
(142, '01K3ZJ3C0F9P1R7DVPSRXE779F.png', '𝗞𝗢𝗠𝗣𝗘𝗧𝗜𝗦𝗜 𝗘𝗦𝗔𝗜 𝗡𝗔𝗦𝗜𝗢𝗡𝗔𝗟 𝟮𝟬𝟮𝟱  “𝘈𝘐: 𝘔𝘦𝘯𝘥𝘰𝘳𝘰𝘯𝘨 𝘒𝘦𝘮𝘢𝘫𝘶𝘢𝘯 𝘗𝘦𝘳𝘢𝘥𝘢𝘣𝘢𝘯 𝘢𝘵𝘢𝘶 𝘔𝘦𝘯𝘫𝘢𝘥𝘪 𝘗𝘦𝘯𝘨𝘩𝘢𝘮𝘣𝘢𝘵?”', '2025-09-30', 0.00, 'https://www.instagram.com/p/DN7tDADDzoT/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-31 07:57:34', '2025-08-31 07:57:34'),
(143, '01K3ZJ6SRW1V16D6JRQVC45WQ9.png', '[SPEEDFEST 2025: ESSAY COMPETITION]', '2025-09-09', 50000.00, 'https://www.instagram.com/p/DN7mBEID-Hz/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-31 07:59:27', '2025-08-31 07:59:27'),
(144, '01K3ZJB2ZQ9K7F0ATH7FSQNFCF.png', '[Materializing the Future: The Material Transformation Toward Sustainability♻]', '2025-09-17', 80000.00, 'https://www.instagram.com/p/DN6vlwBEs7c/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-31 08:01:47', '2025-08-31 08:01:47'),
(145, '01K3ZJEMSEQVHX5Q7HZ9B0K3N9.png', ' [ERCFEST 2025 ESSAY COMPETITION] ', '2025-09-08', 65000.00, 'https://www.instagram.com/p/DN5HwURj0yB/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-31 08:03:44', '2025-08-31 08:03:44'),
(146, '01K3ZJHRY2G29YG5MAYS72ERV4.png', 'National Essay & Business Plan Competition  Cipta Nusantara Fest 2025 – Chapter Yogyakarta', '2025-09-14', 40000.00, 'https://www.instagram.com/p/DN451W5D7t4/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-31 08:05:26', '2025-08-31 08:05:26'),
(147, '01K3ZJP6MWTS2ZCRY0H9J7F8SM.png', 'Lomba Karya Jurnalistik 2025', '2025-09-29', 0.00, 'https://www.instagram.com/p/DN1-Gbx3rdl/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-31 08:07:51', '2025-08-31 08:07:51'),
(148, '01K3ZJS2FS86D1SB6YVTE8VSQ4.png', 'ISEEC BUSINESS CASE COMPETITION 2025', '2025-09-16', 170000.00, 'https://www.instagram.com/p/DN1vTfGXomT/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-08-31 08:09:25', '2025-08-31 08:09:25'),
(149, '01K3ZJXWR596KV0GA58GMBK5AT.png', '𝐍𝐁𝐂𝐂 𝟐𝟎𝟐𝟓 BUSINESS CASE COMPETITION', '2025-09-07', 245000.00, 'https://www.instagram.com/p/DN1kpJXZESJ/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', 'https://bit.ly/REGISTFORMNBCC2025', NULL, '2025-08-31 08:12:03', '2025-08-31 08:12:03'),
(150, '01K6ZAVP28RYZJAT82BNVY7T42.png', 'SOCREATION 11 ESSAY COMPETITION', '2025-10-10', 40000.00, 'https://www.instagram.com/p/DPeAVVpiUta/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-07 12:38:08', '2025-10-07 12:38:08'),
(151, '01K6ZAYXN0P7MB65QCR84RE4EW.png', 'IRPC INTERNATIONAL RESEARCH PAPER COMPETITION SINGAPORE 2025', '2025-10-09', NULL, 'https://www.instagram.com/p/DPgEOmkCfru/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-07 12:39:54', '2025-10-07 12:39:54'),
(152, '01K6ZB28MMN6QJSHHDGH1PN8BK.png', 'EVENT GRATIS 2025 GENERASI MENULIS', '2025-10-19', NULL, 'https://www.instagram.com/p/DPeAVVpiUta/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-07 12:41:43', '2025-10-07 12:41:43'),
(153, '01K6ZB63JNPX0NWYX7HF3M7Z7T.png', 'AGT FAIR POSTER NASIONAL', '2025-10-31', 30000.00, 'https://www.instagram.com/p/DPgM5KhiRNm/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-07 12:43:49', '2025-10-07 12:43:49'),
(154, '01K6ZBB0ZK6VGHDQPBPB0EBF4V.png', 'GENOVATE FESTIVAL 2.0', '2025-10-20', NULL, 'https://www.instagram.com/p/DPgWY9Hics7/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-07 12:46:30', '2025-10-07 12:46:30'),
(155, '01K6ZBDR1QZZSZ4PQ0556AHSEB.png', 'GARUDA NATIONAL ESSAY COMPETITION', '2025-10-31', 0.00, 'https://www.instagram.com/p/DPgWe6ECU7h/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-07 12:48:00', '2025-10-07 12:48:00'),
(156, '01K6ZBHJPJC2SDE84KG3SK6WPC.png', 'IGNITE 2025 INNOVATIVE GROWTH NAVIGATING IDEAS THROUGH ENTREPRENEURSHIP', '2025-10-11', 0.00, 'https://www.instagram.com/p/DPgCJL-iSyI/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-07 12:50:05', '2025-10-07 12:50:05'),
(157, '01K70P5QPBYZ638RNWZWHTNDE7.png', 'MATRIX UI 2025 ESSAY COMPETITION', '2025-10-01', 25000.00, 'https://www.instagram.com/p/DPSv-dkD1YH/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:15:06', '2025-10-08 01:15:06'),
(158, '01K70P8ZD896YH1W208H0E5S02.png', 'ESSAY COMPETITION', '2025-10-13', 50000.00, 'https://www.instagram.com/p/DPXYjUfj5x3/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:16:52', '2025-10-08 01:16:52'),
(159, '01K70PZPE7ENW3MJ581FDT6FN7.png', 'BUSINESS PLAN COMPETITION', '2025-10-10', 79000.00, 'https://www.instagram.com/p/DPajnG8CRNw/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:29:17', '2025-10-08 01:29:17'),
(160, '01K70Q4AZQ6HETBYK26H09AJTZ.png', 'KOMPETISI ESAI NASIONAL', '2025-10-19', 0.00, 'https://www.instagram.com/p/DPYhf7Ej5r1/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:31:49', '2025-10-08 01:31:49'),
(161, '01K70Q7HJY82ZPVCJQ5VZQTRK8.png', 'DIGITAL BUSINESS MODEL CANVAS COMPETITION', '2025-10-20', 0.00, 'https://www.instagram.com/p/DPYK2u7D2_q/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:33:34', '2025-10-08 01:33:34'),
(162, '01K70QAGQR7SWQ3A81GVKFJVG4.png', 'ISCAAS CALL FOR ABSTRAK', '2025-10-08', 0.00, 'https://www.instagram.com/p/DPU0XcCjwaA/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:35:11', '2025-10-08 01:35:11'),
(163, '01K70QSY5EV1XV3Q2WDWRW0ZCH.png', 'MULTIMEDIA IN ACTION 2025', '2025-10-17', 0.00, 'https://www.instagram.com/p/DPZ7TECjyME/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:43:36', '2025-10-08 01:43:36'),
(164, '01K70QWW0KNCNQMSXCZGJFQ7P9.png', 'LOMBA MENULIS CERITA HIDUPKU ', '2025-10-16', 0.00, 'https://www.instagram.com/p/DPaZvlYjwvZ/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:45:12', '2025-10-08 01:45:12'),
(165, '01K70QZDQZV6AVX6HDVWK1N3S1.png', 'DIGITAL CANVAS ', '2025-10-10', 50000.00, 'https://www.instagram.com/p/DPckBT_jyeN/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:46:36', '2025-10-08 01:46:36'),
(166, '01K70R3HSWNEA1Y82YG92GR0X7.png', 'UNIFAW UNNES ISLAMIC FAIR AND AL- AQSHA AWARENESS WEEK', '2025-10-25', 160000.00, 'https://www.instagram.com/p/DPeAVhqj9Mv/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:48:51', '2025-10-08 01:48:51'),
(167, '01K70R65QQ9K2YWRA4NQ4ED88P.png', 'PESTA KIMIA ', '2025-10-30', 0.00, 'https://www.instagram.com/p/DPfb3ssjzz-/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:50:17', '2025-10-08 01:50:17'),
(168, '01K70R9FPRMV7PY5ET5XSSVKSM.png', 'ENTEREPRENEUR BUSINESS CHALLENGE COMPETITION 7.0', '2025-10-23', 75000.00, 'https://www.instagram.com/p/DPfocXeD4tE/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:52:06', '2025-10-08 01:52:06'),
(169, '01K70RBXES5ZG2YY66VDZB6AS7.png', 'INTERNATIONAL POSTER COMPETITION ', '2025-10-28', 60000.00, 'https://www.instagram.com/p/DPh32q_Dw-i/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-10-08 01:53:25', '2025-10-08 01:53:25'),
(170, '01K9467MDB32WWJK3TKFAD7GHD.png', 'ESSAY CARBON ', '2025-11-07', 50000.00, 'https://www.instagram.com/p/DQjaVwBj98V/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==https://www.instagram.com/p/DQjaVwBj98V/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:24:52', '2025-11-03 06:24:52'),
(171, '01K946FBGTA22MDHAW9RY7CQZK.png', 'Yoult Economics Science Competition 2025', '2025-11-01', NULL, 'https://www.instagram.com/p/DQaQAc6k30_/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:29:05', '2025-11-03 06:29:05'),
(172, '01K946JZSQ7AQSGCQBVJX12PZT.png', 'NATIONAL BUSINESS PLAN & BUSINESS POSTER COMPETITION 2025', '2025-11-03', 370000.00, 'https://www.instagram.com/p/DQd8IPvDzBd/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:31:04', '2025-11-03 06:31:04'),
(173, '01K946Q9RYK3XW7HAS3C6WZB9M.png', 'MONETION', '2025-11-11', NULL, 'https://www.instagram.com/p/DQd8IPvDzBd/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:33:26', '2025-11-03 06:33:26'),
(174, '01K946T9TRW9PGSXTHNF4N697F.png', 'ESSAY COMPETITION', '2025-11-20', 250000.00, 'https://www.instagram.com/p/DQd8IPvDzBd/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:35:04', '2025-11-03 06:35:04'),
(175, '01K946ZHT844R55JJ9W6DDQQZ7.png', 'DIPONEGORO POSTER COMPETITION #2', '2025-11-04', 0.00, 'https://www.instagram.com/p/DQREMKGkRSJ/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:37:56', '2025-11-03 06:37:56'),
(176, '01K9473CGVDYKR6HN9MJGJW2KG.png', 'ESSAY COMPETITION \'\'A Collaboration Project between Duta Ragam Nusantara & Duta Pesona Nusantara\'\'', '2025-11-16', 30000.00, 'https://www.instagram.com/p/DQVqUpXElbk/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:40:02', '2025-11-03 06:40:02'),
(177, '01K94769ZR0KAXH4FC25KXKBCE.png', 'LOMBA INFOGRAFIS ', '2025-11-03', 0.00, 'https://www.instagram.com/p/DQdRnNFEwQH/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:41:37', '2025-11-03 06:41:37'),
(178, '01K9478G1ZQSG2R7DFXJMZG62X.png', 'LOMBA KARYA TULIS ILMIAH', '2025-11-08', 50000.00, 'https://www.instagram.com/p/DQYY1Atkyae/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:42:49', '2025-11-03 06:42:49'),
(179, '01K947EXDTNAQD7XG6CHB91D13.png', 'THE 6 th NATIONAL BUSINESS PLAN COMPETITION', '2025-11-05', 120000.00, 'https://www.instagram.com/p/DQgLkJvEtq9/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:46:19', '2025-11-03 06:46:19'),
(180, '01K947H2W7BYAW5BES9AV4PZMD.png', 'TES TOEFL GRATIS', '2025-11-03', 0.00, 'https://www.instagram.com/p/DQf4Bh8CdZp/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:47:30', '2025-11-03 06:47:30'),
(181, '01K947NYEE313KH3WW72ENBR3H.png', 'NACOPS 6.0 BUSINESS PLAN COMPETITION', '2025-11-09', NULL, 'https://www.instagram.com/p/DQf14pMj4HP/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:50:10', '2025-11-03 06:50:10'),
(182, '01K947RW27DQD3JY5SC29XX266.png', 'SRIWIJAYA NATIONAL ESSAY COMPETITION', '2025-11-15', 0.00, 'https://www.instagram.com/p/DQgBGiAj5uA/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:51:46', '2025-11-03 06:51:46'),
(183, '01K947WM3R46PDKZEZ4M41KN2H.png', 'ESSAY ENGLISH NATIONAL COMPETITION', '2025-11-10', 60000.00, 'https://www.instagram.com/p/DQgurpnD1uI/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:53:49', '2025-11-03 06:53:49'),
(184, '01K9482488T7MAM9RTCN5W1MM6.png', 'PELATIHAN GRATIS ISO 17025:2017', '2025-11-08', 0.00, 'https://www.instagram.com/p/DQgs11fiQMF/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-03 06:56:49', '2025-11-03 06:56:49'),
(185, '01K97BGCNVCWTJPDM9G4GMFB0M.png', 'NACOPS BUSINESS PLAN COMPETITION', '2025-11-09', 150000.00, 'https://www.instagram.com/p/DQg1kCiE52L/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-04 11:54:45', '2025-11-04 11:54:45'),
(186, '01K97BP42QQAP3NN22Q04119B5.png', 'RAGAM FESTIVAL ESSAY COMPETITION ', '2025-11-17', 40000.00, 'https://www.instagram.com/p/DQg1kCiE52L/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-04 11:57:53', '2025-11-04 11:57:53'),
(187, '01K97C1RAMWBE79Y6M5BZEGM0R.jpg', 'SEMINAR & TALKSHOW NASIONAL 2025', '2025-11-09', 0.00, 'https://www.instagram.com/p/DQeStLPj5OT/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', 'https://bit.ly/PendaftaranSEMTALK2025', NULL, '2025-11-04 12:04:14', '2025-11-04 12:04:14'),
(188, '01K97C9BRZ1MCEYESZEV09V0AW.png', '[Rangkaian Lomba Bulan Bahasa Kami Bercerita 2025]', '2025-11-09', 35000.00, 'https://www.instagram.com/p/DQa-bHJEteg/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', 'https://bit.ly/PanduanLombaBB25', NULL, '2025-11-04 12:08:24', '2025-11-04 12:08:24'),
(189, '01K97D6KJARCR4Y9KR1Y6ASPZ3.png', 'LKTIN CARTS 2026', '2025-11-30', 100000.00, 'https://www.instagram.com/p/DQl3CMIgVMP/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-04 12:24:22', '2025-11-04 12:24:22'),
(190, '01K97D91WWN2JMZZHDE58GZ3VB.png', '[WORKSHOP 2025: KARYA TULIS ILMIAH]', '2025-11-08', 20000.00, 'https://www.instagram.com/p/DQl2i9Hk2AO/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-04 12:25:42', '2025-11-04 12:25:42'),
(191, '01K97DPZSTTKZ0KBTEP1WC578F.png', 'LOMBA ESAI MUSLIMAH', '2025-11-05', 35000.00, 'https://www.instagram.com/p/DQl2VMXk8_m/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-11-04 12:33:19', '2025-11-04 12:33:19'),
(192, '01KBSYMT36EJYZGW9Q0XJF70J4.png', 'INNOVERA 2026 NATIONAL UI/UX DESIGN COMPETITION', '2025-12-31', 50000.00, 'https://www.instagram.com/p/DR109AxEd2z/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 13:46:57', '2025-12-06 13:46:57'),
(193, '01KBSYXYSMR1QY2M6FG0RBT9QF.png', 'KOMPETISI MENULIS ESAI SATELIT TINGKAT NASIONAL 2025', '2025-12-01', 0.00, 'https://www.instagram.com/p/DRO2z2ekkf-/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 13:51:56', '2025-12-06 13:51:56'),
(194, '01KBSZ251FTKP0FZFSM8PW1VC4.png', 'BMC SPA', '2025-12-11', 0.00, 'https://www.instagram.com/p/DR5z543D-5-/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 13:54:14', '2025-12-06 13:54:14'),
(195, '01KBSZ7KBVM85T8FRFT70QEWX3.png', 'BMC UPM', '2025-12-09', 180000.00, 'https://www.instagram.com/p/DRv_r4aD4Ny/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 13:57:12', '2025-12-06 13:57:12'),
(196, '01KBSZAEM9GG8Z0MXR899XXYHD.png', 'LKTI UII PEDULI', '2025-12-06', 0.00, 'https://www.instagram.com/p/DRvfqyRj23Y/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 13:58:46', '2025-12-06 13:58:46'),
(197, '01KBSZDNG63ZJ9G0ZS1R8PV5NV.png', 'LOMBA NEXT GEN BMC NATIONAL', '2025-12-10', 50000.00, 'https://www.instagram.com/p/DRoqpyyj4ee/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:00:31', '2025-12-06 14:00:31'),
(198, '01KBSZH2WQDAS0716N3ZD58KY0.png', 'NATIONAL COMPETITION INSIGHT CHALLENGE', '2025-12-01', 0.00, 'https://www.instagram.com/p/DRjtTzgj8Ts/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:02:23', '2025-12-06 14:02:23'),
(199, '01KBSZME1CXA97BD3TD3TSKHY7.png', 'ESSAY COMPETITION', '2025-12-17', 0.00, 'https://www.instagram.com/p/DRjey0Yjy2y/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:04:13', '2025-12-06 14:04:13'),
(200, '01KBSZSJJMGF9KZGA5A83GZWR9.png', 'ENERGY WEEK 2025 LOMBA POSTER ILMIAH', '2025-12-05', 0.00, 'https://www.instagram.com/p/DRggGoKjx2G/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:07:01', '2025-12-06 14:07:01'),
(201, '01KBSZZRGMWM38ZXNPXG2ZQQR1.png', 'KOMPETISI MENULIS NASIONAL', '2025-12-30', 0.00, 'https://www.instagram.com/p/DR6BFNwj2yM/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:10:24', '2025-12-06 14:10:24'),
(202, '01KBT05MXBDZ4MH1S4AVR4SFFA.png', 'KOMPETISI BUSINESS PLAN', '2025-12-15', 0.00, 'https://www.instagram.com/p/DR6BFNwj2yM/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:13:37', '2025-12-06 14:13:37'),
(203, '01KBT09VD9F5AD27ZMK448ZVYB.png', 'LOMBA POSTER NASIONAL 2025', '2025-12-07', 0.00, 'https://www.instagram.com/p/DR3ftQpE35w/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:15:55', '2025-12-06 14:15:55'),
(204, '01KBT0EGWG84DVZEWG7VCCN8KG.png', 'LOMBA ESAI IDEAFEST', '2025-12-25', 35000.00, 'https://www.instagram.com/p/DRWQ5YPkac6/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:18:28', '2025-12-06 14:18:28'),
(205, '01KBT0HKDHWHRSAW7PEWB86AVB.png', 'SOEDIRMAN ESSAY COMPETITION', '2025-12-30', 0.00, 'https://www.instagram.com/p/DR6yWoHk_DN/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:20:09', '2025-12-06 14:20:09'),
(206, '01KBT0MY4GNB6N78CW55EKEGF2.png', 'ESSAY COMPETITION 2025 STIEKEN', '2025-12-27', 30000.00, 'https://www.instagram.com/p/DR6Uq2MkeVT/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:21:58', '2025-12-06 14:21:58'),
(207, '01KBT0S2GQANHSEMMA4SBTB2R6.png', 'MANDALIKA ESSAY COMPETITION ', '2025-12-31', 48000.00, 'https://www.instagram.com/p/DR3U8psk1Ob/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2025-12-06 14:24:13', '2025-12-06 14:24:13'),
(208, '01KE9DJRGFAZDD3E4V44EQAJHY.png', '📢 CHEMICAL ENGINEERING WEEK XI  📢', '2026-01-31', 30000.00, 'https://www.instagram.com/p/DTH8qNrj-T6/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-01-06 10:27:58', '2026-01-06 10:27:58'),
(209, '01KE9DRKZGRM5D4XEZ5V5C7V0Z.png', '📢✨ FESTIVAL ILMIAH SANTRI 2026✨📢', '2026-01-19', 40000.00, 'https://www.instagram.com/p/DS9BGT-D5os/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-01-06 10:31:10', '2026-01-06 10:31:10'),
(210, '01KE9DVGNZB1D86DZD58VSZCJN.png', 'IGNITE FUTURE FEST', '2026-01-18', 0.00, 'https://www.instagram.com/p/DS6bh-fD0c9/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-01-06 10:32:45', '2026-01-06 10:32:45'),
(211, '01KE9E07HTG6B4K09CCF142TQ9.png', 'DINUS FEST', '2026-01-19', 50019.00, 'https://www.instagram.com/p/DS4E-WlD1se/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-01-06 10:35:19', '2026-01-06 10:35:19'),
(212, '01KE9E44QPG2VSGKPZJP9MW301.png', 'INFEST COMPETITION 2026', '2026-01-30', 75000.00, 'https://www.instagram.com/p/DS1CmKvD7Ga/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-01-06 10:37:28', '2026-01-06 10:37:28'),
(213, '01KE9E7BDRCXXJYTTPHV0WV371.png', 'AKSI \"AJANG KREASI LOMBA ESAI NASIONAL 2025\"', '2026-01-26', 40000.00, 'https://www.instagram.com/p/DSzFXoeD5MT/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-01-06 10:39:13', '2026-01-06 10:39:13'),
(214, '01KE9EA6QF1Z46SQ7TWFQJQ4KM.png', 'PLANOVATION 2.0 BUSINESS PLAN COMPETITION ', '2026-01-05', 25000.00, 'https://www.instagram.com/p/DSwVvdHj4gH/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-01-06 10:40:46', '2026-01-06 10:40:46'),
(215, '01KE9EDH2KE96P5K5GJXH4Y2XY.png', 'RESEARCH PAPER COMPETITION', '2026-01-20', 85000.00, 'https://www.instagram.com/p/DSuK1MDjx-J/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-01-06 10:42:35', '2026-01-06 10:42:35');
INSERT INTO `events` (`id`, `pamflet`, `title`, `date`, `price`, `link_info`, `link_reg`, `keterangan`, `created_at`, `updated_at`) VALUES
(216, '01KGTZHP2YMM1YDC2VG5BWXQTX.png', 'NIC NATIONAL INFOGRAFIS COMPETITION ', '2026-02-28', 45000.00, 'https://www.instagram.com/p/DUcANNPj2DE/?utm_source=ig_web_copy_link&igsh=NTc4MTIwNjQ2YQ==', NULL, NULL, '2026-02-07 02:40:26', '2026-02-07 02:40:26'),
(217, '01KGW7C2E8M7GV4FTCSTRT0026.png', 'SEMINAR MANAJEMEN KESEHATAN MENTAL', '2026-02-27', 0.00, 'https://www.instagram.com/p/DUaOuI1kptq/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-07 14:16:25', '2026-02-07 14:16:25'),
(218, '01KGW7GHMQZY085CQRKFWVT46J.png', 'BPCATHON 2026', '2026-06-12', 150000.00, 'https://www.instagram.com/p/DUajDWJDzaj/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-07 14:18:52', '2026-02-07 14:18:52'),
(219, '01KGW7NA90X0F1Y96B5AJDJ7EA.png', 'NATIONAL POLICY BRIEF COMPETITION 2026', '2026-02-10', 0.00, 'https://www.instagram.com/p/DUaKMhFj7jf/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', 'https://linktr.ee/nationalpolicybrief', NULL, '2026-02-07 14:21:28', '2026-02-07 14:21:28'),
(220, '01KGW7S14VYRHYFDTXCYH64QGT.png', 'PLN UID JATIM PRESENT LOMBA ESAI', '2026-02-22', 0.00, 'https://www.instagram.com/p/DTxIxzrEe4z/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-07 14:23:30', '2026-02-07 14:23:30'),
(221, '01KGW7YZA4KC6D4VVFBJGPFP5Q.png', 'KSE DIPONATION ESSAY COMPETITION', '2026-02-14', 50000.00, 'https://www.instagram.com/p/DT-dOkTj5Nc/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-07 14:26:45', '2026-02-07 14:26:45'),
(222, '01KGW8290FRNBMW87HGP45VTM2.png', 'KOMPETISI ESAI NASIONAL', '2026-02-28', 0.00, 'https://www.instagram.com/p/DUSIKeqEdrh/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-07 14:28:33', '2026-02-07 14:28:33'),
(223, '01KGW89JR47R0XQQA13Q6RK7F8.png', 'LOMBA ESAI NASIONAL 2026', '2026-02-26', 45000.00, 'https://www.instagram.com/p/DUIiTjak8CY/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-07 14:32:32', '2026-02-07 14:32:32'),
(224, '01KGXCVYQZ120VPHZM24E4QQRQ.png', 'CHEMICAL ENGINEERING COMPETITION 2026', '2026-02-26', 65000.00, 'https://www.instagram.com/p/DUGEKuXk2nG/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-08 01:11:43', '2026-02-08 01:11:43'),
(225, '01KGXD24NFJ1VQ07VJQVTYE8RW.png', 'LKTIN MUSYAWARAH NASIONAL ISMAPETI', '2026-02-20', 75000.00, 'https://www.instagram.com/p/DUajUsGj4rs/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-08 01:15:06', '2026-02-08 01:15:06'),
(226, '01KGXD6BSMXD44N8YV0DR6DXDT.png', 'SEMESTA INOVASI PEMUDA 3.0 ESSAY', '2026-02-04', 35000.00, 'https://www.instagram.com/p/DTmwHJtkmSA/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-08 01:17:24', '2026-02-08 01:17:24'),
(227, '01KGXDANWHVDHA08V7CR3CRA2S.png', 'Call For Paper Capital Market Competition 2026', '2026-02-28', 45000.00, 'https://www.instagram.com/p/DUcd1rxElMZ/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-08 01:19:46', '2026-02-08 01:19:46'),
(228, '01KGXDGE7N9HTV2FTD9XKQA6X7.png', 'gebyar lomba karya essai nasiona;', '2026-02-20', 75000.00, 'https://www.instagram.com/p/DUVKGgskXVY/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-08 01:22:54', '2026-02-08 01:22:54'),
(229, '01KGXDNPH9TXPCA8JTS2WR97AC.png', 'FESTIVAL ESAI MAHASISWA INDONESIA 2026', '2026-02-10', 100000.00, 'https://www.instagram.com/p/DUUUxX5D65C/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-08 01:25:47', '2026-02-08 01:25:47'),
(230, '01KH644A15C60J6NNM7PPJN1JY.png', 'NATIONAL COMPETITION 2026', '2026-02-28', 90000.00, 'https://www.instagram.com/p/DUmwdUbD5jY/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-02-11 10:32:10', '2026-02-11 10:32:10'),
(231, '01KJRP0YJ6NCHP3DPR4HGM4VED.png', 'Lomba Essay', '2026-03-23', 15000.00, 'https://www.instagram.com/p/DUzZuLqkggq/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-03-03 01:46:55', '2026-03-03 01:47:53'),
(232, '01KJSH0E8SP8SEZD0W307T60RX.png', 'LOMBA ESSAY IAC 2026', '2026-03-31', 45000.00, 'https://www.instagram.com/p/DU0esCSiRtE/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-03-03 09:38:30', '2026-03-03 09:38:30'),
(233, '01KJSH3ABEBK6JGEJXKWYQPANW.jpg', 'LOMBA ESAI', '2026-03-10', 20000.00, 'https://www.instagram.com/p/DVAU9Z6E3mT/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-03-03 09:40:05', '2026-03-03 09:40:05'),
(234, '01KJSH7VK8AGS9ZRKRDD8Y59EP.webp', 'LOMBA POSTER ELIXIR 2026', '2026-03-22', 90000.00, 'https://www.instagram.com/p/DVPlP-5k5Sq/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-03-03 09:42:33', '2026-03-03 09:42:33'),
(235, '01KJSHF5P7NDYWGBPY249FE1Q9.png', 'PHASUMTION 2026', '2026-03-10', 100000.00, 'https://www.instagram.com/p/DVFurjQj6sy/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-03-03 09:46:33', '2026-03-03 09:46:33'),
(236, '01KJSHJ7Z0EC203HAV81M866TX.png', 'PHARMALAND 2026 (KTI)', '2026-03-24', 100000.00, 'https://www.instagram.com/p/DVFurjQj6sy/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-03-03 09:48:14', '2026-03-03 09:49:31'),
(237, '01KJSHP8B1MNY1BTH26YQZF2M9.png', 'PHARMALAND 2026 (POSTER)', '2026-03-24', 100000.00, 'https://www.instagram.com/p/DVFurjQj6sy/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-03-03 09:50:25', '2026-03-03 09:50:25'),
(238, '01KJSHTHY560GCMEMJRJ8MW53C.png', 'THE SANDBOX 3.0', '2026-03-11', 220000.00, 'https://www.instagram.com/p/DVQKGy5EpZU/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-03-03 09:52:46', '2026-03-03 09:53:48'),
(239, '01KJSQB4V932F0KG9SDH9JF0KH.jpeg', 'FindIT! UGM 2026', '2026-03-10', 160000.00, 'https://www.instagram.com/p/DVaw51uD2EO/?igsh=MTBqc242aDloZGtvZA==', NULL, NULL, '2026-03-03 11:29:13', '2026-03-03 11:29:13'),
(240, '01KJSQGJW6BKAFVGEWMZAVDDFD.jpeg', 'N-CARGO ', '2026-03-14', 75000.00, 'https://www.instagram.com/p/DUcFCjhkiRb/?igsh=cHl4anFsajB2OHdw', NULL, NULL, '2026-03-03 11:32:11', '2026-03-03 11:32:11'),
(241, '01KJSR2604NJK7QEYXYFYQJWKC.jpeg', 'WASCO 2026', '2026-03-30', 190000.00, 'https://www.instagram.com/p/DVP5pDEkrNx/?igsh=NnJnbzRpOWxhZTFw', NULL, NULL, '2026-03-03 11:41:47', '2026-03-03 11:41:47'),
(242, '01KJSR6HWED3H4DMAE4CWJVVF5.jpeg', 'FILM 2026 SEMAR ESSAY COMPETITIONS', '2026-04-27', 85000.00, 'https://www.instagram.com/p/DVGWpSHk15O/?igsh=MWl3MXBmODR6MWk0bQ==', NULL, NULL, '2026-03-03 11:44:11', '2026-03-03 11:44:11'),
(243, '01KJSR90BZ9K4ENJ8F4FG3W724.jpeg', 'IYREF 2026', '2026-03-10', NULL, 'https://www.instagram.com/p/DVFrkxjkSMB/?img_index=1&igsh=MXg0OHN0cHBlaHN2eA==', NULL, NULL, '2026-03-03 11:45:31', '2026-03-03 11:45:31'),
(244, '01KJSRH6EM7VYYAZ9ESPJ6KPMS.jpeg', 'KOMPETISI ESAI NASIONAL #2', '2026-03-31', 79000.00, 'https://www.instagram.com/p/DUSIKeqEdrh/?igsh=YjQ0M2JwOHJvd243', NULL, NULL, '2026-03-03 11:49:59', '2026-03-03 11:49:59'),
(245, '01KJTTY6NK4Z1VE19ZW07JVETC.jpeg', 'STRATEGI PENGELOLAAN SAMPAH SKALA KAWASAN', '2026-03-05', 21000.00, 'https://www.instagram.com/p/DVGYXRyGZx-/?igsh=MWRsaTIyZWtkZHR5eA==', NULL, NULL, '2026-03-03 21:51:17', '2026-03-03 21:51:17'),
(246, '01KK5NQ37MB8NN4ZE5XGAWDCX2.jpeg', 'WEBINAR ISO SERIES', '2026-03-10', NULL, 'https://www.instagram.com/p/DVZ89KgkgjS/?igsh=dDk0bDAyb2ZhNnR1', NULL, NULL, '2026-03-08 02:51:40', '2026-03-08 02:51:40'),
(247, '01KK5NSFDKM9YDDEYFDKTMKDCW.jpeg', 'UPGRADE YOUR SKILLS', '2026-03-14', 59000.00, 'https://www.instagram.com/p/DVfO1baDOMz/?igsh=andianMzZ2ppamU2', NULL, NULL, '2026-03-08 02:52:58', '2026-03-08 02:52:58'),
(248, '01KK5NX7A1KH91NTANJMSVGZ90.jpeg', 'K3 DI LABORATORIUM', '2026-03-11', 95000.00, 'https://www.instagram.com/p/DVZ9_a8EthN/?igsh=ZzJoMXdsOTc2dnY4', NULL, NULL, '2026-03-08 02:55:01', '2026-03-08 02:55:01'),
(249, '01KK5P5WXJVYBZHY59BM9BHK6B.jpeg', 'INNOVERSE 2026', '2026-03-25', NULL, 'https://www.instagram.com/p/DUQUPdkk79I/?igsh=MTdwd2l1Ym01bGRhaA==', NULL, NULL, '2026-03-08 02:59:45', '2026-03-08 02:59:45'),
(250, '01KMAG6RJY9Q2YGZB7P981ZMTE.jpeg', 'NATIONAL ENVIRONMENTAL COMPETITION 2026', '2026-03-27', 35000.00, 'https://www.instagram.com/p/DWLRbJKj5dp/?img_index=1&igsh=MXdxbGVzcXRxcXVlbw==', NULL, NULL, '2026-03-22 10:07:16', '2026-03-22 10:07:16'),
(251, '01KMAGVW88W68DDEX9Y4B55S3C.jpeg', 'HACKATION NITRO 2026', '2026-04-11', 100000.00, 'https://www.instagram.com/p/DWLcwOpD_Bq/?img_index=1&igsh=MW03aHBhbjZrZXB4dQ==', NULL, NULL, '2026-03-22 10:18:48', '2026-03-22 10:18:48'),
(252, '01KMAH20SY4SK666GNKAEP6GTN.jpeg', 'LOMBA INFOGRAFIS NASIONAL 2026', '2026-04-11', 35000.00, 'https://www.instagram.com/p/DWJExjAD_4C/?img_index=1&igsh=MXFuMTJpa3B6eHYxYg==', NULL, NULL, '2026-03-22 10:22:09', '2026-03-22 10:22:09'),
(253, '01KMAHMP0ZVWH4HG9R2PQ7MBE0.jpeg', 'EduTalk Fair Competition 2026', '2026-04-04', 30000.00, 'https://www.instagram.com/p/DWBJYbxD45B/?img_index=1&igsh=YjdpYjVhZnVmbjZ1', NULL, NULL, '2026-03-22 10:32:21', '2026-03-22 10:32:21'),
(254, '01KN60QEFY2Y73B35C1CW8RMKM.png', '180DC CASE COMPETITION 2026', '2026-04-11', 100000.00, 'https://www.instagram.com/p/DWeA7qoE50Y/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-04-02 02:35:30', '2026-04-02 02:35:30'),
(255, '01KN61BMMY3PSEX0SN2N3H3T83.jpeg', 'SCIENTIFIC WEBINAR', '2026-04-15', 25000.00, 'https://www.instagram.com/p/DV-tC8jj5E2/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-04-02 02:46:31', '2026-04-02 02:46:31'),
(256, '01KN61N72DDMPBTX8CY6XD29Z0.png', 'NEXORA', '2026-05-10', 25000.00, 'https://www.instagram.com/p/DWlLtzAD0JA/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-04-02 02:51:45', '2026-04-02 02:51:45'),
(257, '01KN61TTSJX3ENN0AGDJS2329R.png', 'TECHSPRINT INNOVATION UP 2026', '2026-05-17', 60000.00, 'https://www.instagram.com/p/DWh8VdAjx2D/?utm_source=ig_web_copy_link', NULL, NULL, '2026-04-02 02:54:49', '2026-04-02 02:54:49'),
(258, '01KN633CSZTVNZRNKAHTWQJRAG.jpeg', 'WEBINAR ESG', '2026-04-15', NULL, 'https://www.instagram.com/p/DWnO7Vgklya/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-04-02 03:16:58', '2026-04-02 03:16:58'),
(259, '01KN641WH4SC4PDESQ7AMB3G02.jpeg', 'BEYOND BUSINESS PLAN 2026', '2026-04-12', 100000.00, 'https://www.instagram.com/p/DVvG78zEur9/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-04-02 03:33:37', '2026-04-02 03:33:37'),
(260, '01KN64QW6TPJ16JQ42KP5QF6XC.jpeg', 'SEMAR LKTIN COMPETITION 2026', '2026-04-27', 100000.00, 'https://www.instagram.com/p/DVGWiLHkzqT/?utm_source=ig_web_copy_link', NULL, NULL, '2026-04-02 03:45:38', '2026-04-02 03:45:38'),
(261, '01KN64W0B9XTH9RQD7N6ABHESA.png', 'SEMAR ESSAY COMPETITION 2026', '2026-04-27', 85000.00, 'https://www.instagram.com/p/DVGWpSHk15O/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-04-02 03:47:53', '2026-04-02 03:47:53'),
(262, '01KN64XHW6G41HATGMFXPBGN9B.png', 'SEMARINFOGRAPHIC COMPETITION 2026', '2026-04-27', 60000.00, 'https://www.instagram.com/p/DVGWyOHk4H4/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-04-02 03:48:44', '2026-04-02 03:48:44'),
(263, '01KN656V2YEC0TNBAPZN1M7T8G.jpeg', 'NATIONAL ESSAY COMPETITION 5', '2026-05-10', 57000.00, 'https://www.instagram.com/p/DWi1nNwk3yM/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-04-02 03:53:48', '2026-04-02 03:53:48'),
(264, '01KN65KAB79XBKWYS6DMEJT56J.jpeg', 'NATIONAL SDGs ESSAY COMPETITION 2026', '2026-05-10', 89000.00, 'https://www.instagram.com/p/DVx77_2kcg5/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-04-02 04:00:37', '2026-04-02 04:00:37'),
(265, '01KN65N5JPXRVPFXYAY9KR67D1.jpeg', 'EXCESS 2026', '2026-05-13', 40000.00, 'https://www.instagram.com/p/DVz-kZTkizk/?utm_source=ig_web_copy_link&igsh=MzRlODBiNWFlZA==', NULL, NULL, '2026-04-02 04:01:38', '2026-04-02 04:01:38'),
(266, '01KN938G6CNQT77SXRVS161SDF.jpeg', 'HILIRISASI BIOMASSA', '2026-04-10', NULL, 'https://www.instagram.com/p/DWkweM-Extr/?igsh=Y2oyMmozaTY0NXoz', NULL, NULL, '2026-04-03 07:17:29', '2026-04-03 07:17:29'),
(267, '01KNB9VGSFZRNEGSH86G9A2MGS.jpeg', 'ReEnergize Summit 2026', '2026-04-14', 35000.00, 'https://www.instagram.com/p/DWk2EB6iWdP/?img_index=1&igsh=ZGs5eWEwaHJpMXd6', NULL, NULL, '2026-04-04 03:51:12', '2026-04-04 03:51:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
