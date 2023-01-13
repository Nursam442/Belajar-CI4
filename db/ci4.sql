-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2023 pada 03.54
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Upin Ipin', 'upin-ipin', 'Claudia Cintia', 'Penerbit 1', 'upin.png', NULL, NULL),
(2, 'Masha and the Bear', 'masha-bear', 'Suharto', 'Penerbit 2', 'masha.jpg', NULL, NULL),
(7, 'Doraemon berubah judul', 'doraemon-berubah-judul', 'Suparjo Joko', 'Penerbit 3', '1673496055_2a8426d875c7c0cbcd57.jpg', '2023-01-11 20:30:43', '2023-01-11 22:00:55'),
(9, 'Doraemon 4', 'doraemon-4', 'Suparjo', 'cc', 'default.png', '2023-01-11 20:52:57', '2023-01-11 20:52:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-01-12-042148', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1673497894, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Lembah Eman Siregar', 'Kpg. Ketandan No. 181, Palembang 57432, Babel', '2013-07-27 21:37:37', '2023-01-12 00:32:04'),
(2, 'Galih Jabal Nababan', 'Psr. Rajawali No. 766, Banjar 52411, Jateng', '2018-10-26 11:48:54', '2023-01-12 00:32:04'),
(3, 'Kartika Nasyiah', 'Jr. Basudewo No. 608, Padangsidempuan 21339, DIY', '2010-03-17 23:49:02', '2023-01-12 00:32:04'),
(4, 'Adhiarja Pratama', 'Psr. Gatot Subroto No. 451, Administrasi Jakarta Pusat 35428, Maluku', '2000-05-15 00:51:08', '2023-01-12 00:32:04'),
(5, 'Endah Hartati M.Farm', 'Dk. Wahid No. 125, Padang 83606, Bali', '2002-03-24 21:23:11', '2023-01-12 00:32:04'),
(6, 'Yunita Kuswandari', 'Kpg. M.T. Haryono No. 496, Magelang 27717, Sumut', '1996-06-10 12:15:51', '2023-01-12 00:32:04'),
(7, 'Fitria Zulaikha Wulandari', 'Kpg. Tambun No. 404, Tanjungbalai 39995, Kaltara', '1998-11-07 19:53:59', '2023-01-12 00:32:04'),
(8, 'Dina Kania Usada S.E.', 'Jln. Astana Anyar No. 479, Medan 79152, Papua', '2008-05-22 00:55:37', '2023-01-12 00:32:04'),
(9, 'Alika Tania Lestari S.IP', 'Ds. Sudirman No. 230, Palu 97209, Jatim', '1992-07-22 19:04:05', '2023-01-12 00:32:04'),
(10, 'Zulaikha Yuliarti S.Pt', 'Jr. Daan No. 99, Batam 17278, Malut', '2006-08-17 14:19:56', '2023-01-12 00:32:04'),
(11, 'Timbul Mandala', 'Ds. Baing No. 851, Sungai Penuh 33307, Kaltara', '1993-06-12 14:08:27', '2023-01-12 00:32:04'),
(12, 'Putri Hassanah', 'Dk. Dipenogoro No. 945, Sawahlunto 89806, Banten', '2009-11-26 12:16:48', '2023-01-12 00:32:04'),
(13, 'Prayogo Wibisono S.Sos', 'Jr. Flores No. 589, Binjai 39841, Jateng', '1985-12-29 00:34:16', '2023-01-12 00:32:04'),
(14, 'Olga Mangunsong', 'Ds. Laksamana No. 186, Balikpapan 57989, Pabar', '1984-12-17 19:23:29', '2023-01-12 00:32:04'),
(15, 'Daliono Saputra S.Farm', 'Ki. Lembong No. 530, Pagar Alam 47563, Kalsel', '2009-09-03 10:13:22', '2023-01-12 00:32:04'),
(16, 'Hendri Luwes Samosir', 'Jln. Achmad Yani No. 318, Surabaya 29645, NTB', '2022-01-16 09:45:57', '2023-01-12 00:32:04'),
(17, 'Ridwan Simanjuntak', 'Ki. Uluwatu No. 886, Ternate 17436, Sumbar', '1995-06-02 19:24:14', '2023-01-12 00:32:04'),
(18, 'Darimin Estiawan Suryono S.Ked', 'Psr. W.R. Supratman No. 603, Balikpapan 15403, Bali', '2018-12-08 04:18:09', '2023-01-12 00:32:04'),
(19, 'Uchita Agustina', 'Ki. Jend. A. Yani No. 903, Cilegon 42086, Malut', '2010-04-17 16:19:34', '2023-01-12 00:32:04'),
(20, 'Edi Firgantoro', 'Jln. Bak Mandi No. 243, Pangkal Pinang 39001, Kaltara', '2003-12-25 06:41:13', '2023-01-12 00:32:04'),
(21, 'Widya Mardhiyah', 'Jln. Kyai Mojo No. 19, Tegal 19946, Bengkulu', '1987-06-19 22:57:26', '2023-01-12 00:32:04'),
(22, 'Agnes Oliva Lestari', 'Ds. Moch. Toha No. 896, Depok 17730, Sulut', '2014-06-14 05:05:56', '2023-01-12 00:32:04'),
(23, 'Dinda Puji Sudiati', 'Gg. Haji No. 776, Bitung 70170, Kalbar', '1986-08-17 11:36:09', '2023-01-12 00:32:04'),
(24, 'Yuni Mardhiyah S.T.', 'Jln. Banal No. 348, Serang 75151, Jabar', '1991-02-21 21:32:00', '2023-01-12 00:32:04'),
(25, 'Okto Permadi', 'Ds. Ahmad Dahlan No. 191, Palangka Raya 55382, Kaltim', '2005-03-19 20:24:12', '2023-01-12 00:32:04'),
(26, 'Cakrabirawa Nasrullah Kuswoyo M.TI.', 'Ds. Panjaitan No. 889, Salatiga 14561, Jabar', '1998-10-30 23:07:42', '2023-01-12 00:32:04'),
(27, 'Prayitna Candra Kusumo M.Farm', 'Jr. Abang No. 922, Sabang 30046, DKI', '2022-11-07 02:54:17', '2023-01-12 00:32:04'),
(28, 'Dalima Siska Mulyani S.Ked', 'Psr. Bacang No. 792, Probolinggo 97323, Kalsel', '1989-04-23 13:35:40', '2023-01-12 00:32:04'),
(29, 'Zelaya Hassanah', 'Ki. Jayawijaya No. 12, Tomohon 58584, Sumbar', '2017-09-21 20:12:00', '2023-01-12 00:32:04'),
(30, 'Kajen Wasita', 'Gg. Baladewa No. 858, Yogyakarta 37709, Kaltim', '2002-11-09 15:17:51', '2023-01-12 00:32:04'),
(31, 'Dadap Kalim Pratama M.TI.', 'Psr. Cikutra Barat No. 633, Palu 58087, Jabar', '1972-09-27 09:28:25', '2023-01-12 00:32:04'),
(32, 'Karimah Aryani S.E.I', 'Ds. Basoka No. 271, Tangerang Selatan 64740, Pabar', '2000-11-03 09:09:44', '2023-01-12 00:32:04'),
(33, 'Raina Laksmiwati S.T.', 'Gg. Kalimantan No. 703, Cirebon 38100, Sumsel', '1975-05-27 09:05:32', '2023-01-12 00:32:04'),
(34, 'Ghaliyati Puspasari M.Kom.', 'Jr. Supomo No. 642, Palopo 16637, Banten', '1971-05-21 05:44:12', '2023-01-12 00:32:04'),
(35, 'Vino Cager Budiyanto', 'Gg. Kusmanto No. 565, Cirebon 20417, Sumbar', '1992-12-14 03:29:54', '2023-01-12 00:32:04'),
(36, 'Bakiman Mustofa', 'Ds. Untung Suropati No. 743, Padangpanjang 80814, Jambi', '2010-07-11 05:44:18', '2023-01-12 00:32:04'),
(37, 'Rendy Januar M.Farm', 'Psr. Baladewa No. 951, Balikpapan 95801, Jabar', '2019-06-12 01:24:22', '2023-01-12 00:32:04'),
(38, 'Bakiono Napitupulu', 'Gg. Flora No. 42, Medan 71427, Malut', '1988-10-26 21:28:57', '2023-01-12 00:32:04'),
(39, 'Kamaria Salwa Wastuti S.E.', 'Ki. Ronggowarsito No. 41, Cilegon 26416, Kalteng', '2018-09-08 05:05:04', '2023-01-12 00:32:04'),
(40, 'Danuja Halim', 'Jln. Tangkuban Perahu No. 26, Administrasi Jakarta Barat 29771, Maluku', '1988-02-16 13:00:11', '2023-01-12 00:32:04'),
(41, 'Kayla Zahra Wulandari M.Kom.', 'Gg. Ters. Jakarta No. 558, Mojokerto 90622, DKI', '1970-09-09 00:45:28', '2023-01-12 00:32:04'),
(42, 'Langgeng Capa Hardiansyah M.M.', 'Jln. Gegerkalong Hilir No. 821, Administrasi Jakarta Selatan 11697, Sulsel', '2017-12-12 05:15:14', '2023-01-12 00:32:04'),
(43, 'Aurora Winarsih', 'Ki. Baha No. 144, Batam 65428, Bengkulu', '1991-11-14 01:36:04', '2023-01-12 00:32:04'),
(44, 'Wahyu Saragih', 'Gg. Yos No. 786, Banjarmasin 75833, Sumsel', '1977-06-14 23:34:24', '2023-01-12 00:32:04'),
(45, 'Bala Harto Haryanto', 'Dk. Sutarto No. 866, Pontianak 92217, Banten', '2002-07-19 21:08:05', '2023-01-12 00:32:04'),
(46, 'Xanana Rajasa S.Farm', 'Gg. Untung Suropati No. 583, Kediri 43918, Sumsel', '2011-07-10 20:33:54', '2023-01-12 00:32:04'),
(47, 'Qori Jasmin Susanti', 'Psr. Halim No. 620, Batu 20751, NTT', '1999-10-01 01:15:16', '2023-01-12 00:32:04'),
(48, 'Lintang Latika Rahayu S.IP', 'Ds. Padang No. 901, Parepare 79549, Riau', '2019-04-01 10:19:24', '2023-01-12 00:32:04'),
(49, 'Citra Eka Pudjiastuti S.Psi', 'Kpg. Warga No. 19, Metro 54093, Sumsel', '2021-05-15 00:41:27', '2023-01-12 00:32:04'),
(50, 'Nurul Hariyah', 'Jln. Bambon No. 392, Bontang 73373, Sulsel', '1992-03-01 00:52:31', '2023-01-12 00:32:04'),
(51, 'Hana Usyi Puspita', 'Kpg. Ciumbuleuit No. 16, Bekasi 38356, Aceh', '1994-08-28 14:06:38', '2023-01-12 00:32:04'),
(52, 'Rina Puspita', 'Jln. Wahidin No. 372, Parepare 31315, Banten', '1985-10-05 08:56:32', '2023-01-12 00:32:04'),
(53, 'Gasti Namaga S.Psi', 'Jln. Laksamana No. 793, Bitung 99203, Riau', '1976-10-04 09:09:10', '2023-01-12 00:32:04'),
(54, 'Prakosa Jayeng Prasasta', 'Kpg. Yohanes No. 762, Bengkulu 83560, Papua', '2009-12-26 06:49:12', '2023-01-12 00:32:04'),
(55, 'Gamani Kurniawan', 'Ki. Cikutra Barat No. 48, Administrasi Jakarta Barat 68422, Malut', '2017-08-24 04:41:57', '2023-01-12 00:32:04'),
(56, 'Banara Ramadan', 'Gg. Laksamana No. 641, Jayapura 26304, Sulbar', '2011-05-14 06:11:21', '2023-01-12 00:32:04'),
(57, 'Ajeng Mandasari', 'Jln. Juanda No. 95, Blitar 24001, Babel', '2011-07-30 02:19:50', '2023-01-12 00:32:04'),
(58, 'Sabrina Paulin Winarsih M.Ak', 'Jln. Gremet No. 531, Lubuklinggau 44739, Kaltim', '1978-02-22 14:02:43', '2023-01-12 00:32:04'),
(59, 'Jayeng Danu Ramadan', 'Dk. Umalas No. 286, Banjarbaru 90579, Jambi', '2022-02-27 03:37:27', '2023-01-12 00:32:04'),
(60, 'Emil Waluyo Saputra', 'Kpg. Kartini No. 605, Payakumbuh 52019, NTB', '2011-05-29 14:49:36', '2023-01-12 00:32:04'),
(61, 'Kayun Saputra', 'Gg. Kiaracondong No. 780, Jambi 66796, DKI', '1984-12-28 17:04:41', '2023-01-12 00:32:04'),
(62, 'Wahyu Maheswara S.IP', 'Ds. Lada No. 889, Lubuklinggau 36149, Babel', '2020-02-06 16:41:39', '2023-01-12 00:32:04'),
(63, 'Cakrajiya Santoso', 'Ki. Lumban Tobing No. 292, Pasuruan 45205, Pabar', '2010-09-12 14:28:19', '2023-01-12 00:32:04'),
(64, 'Marsudi Raihan Samosir', 'Ki. Bara No. 876, Bandung 14183, NTT', '2001-09-21 00:07:34', '2023-01-12 00:32:04'),
(65, 'Restu Ayu Safitri', 'Kpg. Batako No. 454, Blitar 93873, Lampung', '1985-09-13 16:09:28', '2023-01-12 00:32:04'),
(66, 'Prasetya Wacana M.Farm', 'Jr. Flora No. 650, Mataram 11808, Maluku', '1972-04-21 08:21:53', '2023-01-12 00:32:04'),
(67, 'Nasrullah Cakrawala Anggriawan', 'Gg. Banal No. 341, Tasikmalaya 45451, Aceh', '1975-03-24 12:56:48', '2023-01-12 00:32:04'),
(68, 'Asman Sinaga', 'Jr. Cut Nyak Dien No. 267, Subulussalam 57668, Bengkulu', '2006-09-02 16:02:54', '2023-01-12 00:32:04'),
(69, 'Darmana Pranata Prabowo', 'Jr. Taman No. 522, Makassar 94661, Maluku', '1973-05-16 05:15:37', '2023-01-12 00:32:04'),
(70, 'Rachel Kania Rahayu', 'Ds. Pasteur No. 834, Sawahlunto 29260, Kalteng', '1993-12-19 23:11:35', '2023-01-12 00:32:04'),
(71, 'Danang Firmansyah', 'Jln. Basoka No. 954, Palu 38221, Jabar', '1996-09-27 23:37:10', '2023-01-12 00:32:04'),
(72, 'Endah Hafshah Farida S.E.', 'Kpg. S. Parman No. 213, Cirebon 48277, NTB', '2017-11-13 00:40:51', '2023-01-12 00:32:04'),
(73, 'Gandewa Saptono M.M.', 'Gg. Honggowongso No. 500, Tual 51491, Jatim', '1973-01-11 14:28:32', '2023-01-12 00:32:04'),
(74, 'Hilda Aryani', 'Kpg. Nangka No. 671, Administrasi Jakarta Selatan 88362, Sulteng', '2022-03-07 21:13:55', '2023-01-12 00:32:04'),
(75, 'Karma Dipa Marbun M.Pd', 'Jln. Cikapayang No. 449, Tegal 30567, Sumsel', '2008-05-15 17:48:42', '2023-01-12 00:32:04'),
(76, 'Ratna Mulyani', 'Ki. Ir. H. Juanda No. 957, Batu 19085, Kalteng', '1973-12-19 00:39:17', '2023-01-12 00:32:04'),
(77, 'Ani Yolanda', 'Ds. Daan No. 524, Magelang 59319, Sultra', '2017-12-18 07:13:27', '2023-01-12 00:32:04'),
(78, 'Ellis Hafshah Aryani', 'Dk. Pasirkoja No. 874, Blitar 34281, Sumsel', '2015-07-06 15:40:02', '2023-01-12 00:32:04'),
(79, 'Agnes Nuraini', 'Dk. Yoga No. 498, Palangka Raya 52318, Papua', '2002-10-19 20:37:17', '2023-01-12 00:32:04'),
(80, 'Pranata Maryadi S.E.', 'Dk. Dr. Junjunan No. 280, Gunungsitoli 89479, Lampung', '1980-06-12 07:40:32', '2023-01-12 00:32:04'),
(81, 'Lalita Wahyuni M.Ak', 'Gg. Ki Hajar Dewantara No. 337, Tidore Kepulauan 26819, Kalteng', '1995-04-16 17:50:32', '2023-01-12 00:32:04'),
(82, 'Adikara Saptono', 'Dk. Yap Tjwan Bing No. 837, Bandar Lampung 27237, Sultra', '2002-08-08 18:28:47', '2023-01-12 00:32:04'),
(83, 'Emin Saputra', 'Jln. Cikutra Timur No. 300, Tangerang Selatan 35075, NTT', '2003-05-27 22:19:47', '2023-01-12 00:32:04'),
(84, 'Raharja Cakrajiya Jailani', 'Dk. Basket No. 673, Singkawang 21429, Sumsel', '1984-10-23 01:50:35', '2023-01-12 00:32:04'),
(85, 'Mutia Michelle Anggraini S.E.I', 'Ki. Yap Tjwan Bing No. 295, Bengkulu 98395, Sulsel', '2006-03-06 15:41:00', '2023-01-12 00:32:04'),
(86, 'Novi Susanti S.Sos', 'Ki. Bank Dagang Negara No. 724, Tangerang Selatan 36990, Sulteng', '1992-01-23 09:44:56', '2023-01-12 00:32:04'),
(87, 'Heryanto Waluyo', 'Kpg. Adisumarmo No. 850, Kupang 40022, Sultra', '1985-09-18 13:00:55', '2023-01-12 00:32:04'),
(88, 'Karimah Hani Lailasari S.Farm', 'Jln. Pelajar Pejuang 45 No. 384, Tual 48144, Sultra', '1992-02-13 14:12:48', '2023-01-12 00:32:04'),
(89, 'Vanesa Ghaliyati Wulandari', 'Jln. Ters. Buah Batu No. 310, Padang 87789, Sulteng', '2004-12-25 21:23:09', '2023-01-12 00:32:04'),
(90, 'Rika Rahimah', 'Gg. Yoga No. 849, Pekanbaru 20330, Aceh', '2008-03-22 11:43:06', '2023-01-12 00:32:04'),
(91, 'Tirta Hidayat S.E.', 'Ds. Sukabumi No. 126, Tanjung Pinang 87901, Sulteng', '1976-10-20 04:23:12', '2023-01-12 00:32:04'),
(92, 'Citra Mandasari', 'Gg. Bah Jaya No. 445, Gorontalo 80596, Kalsel', '2015-02-03 04:57:18', '2023-01-12 00:32:04'),
(93, 'Rendy Wasita', 'Dk. Bazuka Raya No. 228, Makassar 82993, Jateng', '1972-12-24 14:19:26', '2023-01-12 00:32:04'),
(94, 'Rina Fujiati', 'Dk. Soekarno Hatta No. 303, Metro 60081, Sulteng', '1998-10-14 11:20:48', '2023-01-12 00:32:04'),
(95, 'Kardi Najmudin', 'Jr. Gading No. 632, Langsa 79844, Gorontalo', '2022-01-01 20:10:51', '2023-01-12 00:32:04'),
(96, 'Raditya Hidayanto', 'Jr. Ir. H. Juanda No. 513, Parepare 54985, Jabar', '1976-11-26 13:03:11', '2023-01-12 00:32:04'),
(97, 'Yusuf Unggul Napitupulu', 'Jr. Abang No. 451, Parepare 26247, Aceh', '2020-03-11 00:52:56', '2023-01-12 00:32:04'),
(98, 'Jabal Lazuardi', 'Jr. Kebonjati No. 744, Semarang 41970, DIY', '1985-06-13 15:13:35', '2023-01-12 00:32:04'),
(99, 'Tari Alika Pudjiastuti', 'Ki. Sunaryo No. 197, Administrasi Jakarta Timur 69288, Kaltim', '1976-01-09 15:41:00', '2023-01-12 00:32:04'),
(100, 'Jarwi Haryanto', 'Dk. Bakit  No. 312, Solok 42342, Malut', '1992-02-25 06:52:31', '2023-01-12 00:32:04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
