-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 16 Jan 2022 pada 10.21
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_jadwal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` text NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `kode_ruangan` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `id_mapel`, `kode_ruangan`, `img`) VALUES
(1, 'Dikri Maulana, S.Ag', 1, 'R1', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(6, 'Atit Hartati, S.Pd', 2, 'R2', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(7, 'Saefudin, S.Ag', 3, 'R3', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(10, 'Nuraini, S.Pd', 4, 'R4', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(11, 'Drs. Yayat, M.Pd', 5, 'R5', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(12, 'Dra. Lorensia Purawanti', 33, 'R6', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(13, 'DR. Dadang Jaenudin, S.Pd, M.Si', 7, 'R7', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(14, 'Siti Nurpadilah, S.Pd', 8, 'R8', ''),
(17, 'Mulyadih, S.Pd', 4, 'R9', ''),
(18, 'Jajang Kurnia, S.Pd', 3, 'R10', ''),
(19, 'Ruri Marlinawati , S.Pd', 4, 'R11', ''),
(20, 'Sri Rahayu, S.Si', 9, 'R12', ''),
(21, 'Sri Haryani, S.Pd ', 3, 'R13', ''),
(22, 'Hj. Nur Aini, S.Pd', 10, 'R14', ''),
(23, 'Sunggono, SPt', 10, 'R14', ''),
(24, 'Sri Esti Hariati, M.M.Pd ', 5, 'R15\r\n', ''),
(25, 'Syamsul Budiman, S.Pd', 1, 'R16', ''),
(27, 'Lilih Herlina, S.PD', 2, 'R17', ''),
(28, 'Vivi Safitri Desemberiyani, S.Pd', 11, 'R18', ''),
(29, 'Tresna Septiarti Amelian, S.Pd ', 4, 'R19', ''),
(30, 'Aries Dachliana, S.Pd', 2, 'R20', ''),
(31, 'M. Zaini Miftah, S.AG', 1, 'R22', ''),
(32, 'Tri Wahyono, S.Pd', 3, 'R23', ''),
(33, 'Komariah, S.Ag', 1, 'R25', ''),
(41, 'Ajeng Astri Utami, S.Pd', 13, 'R. Simdig', ''),
(49, 'Dra. Erni Riana Syari', 12, 'R. 5,9,12,14,16,18,22,25/R.BK', ''),
(50, 'Yudiansyah, S.Pd ', 12, 'R. 8,14,16,17,18,23,25 /\r\nR.BK', ''),
(51, 'Andri Sunaryawansayah', 12, 'R. 7,8,14,16,23, 25 / R.BK', ''),
(52, 'Aprianto, S.Kom', 13, 'R. Simdig', ''),
(54, 'Pulang', 35, 'Gerbang', 'https://www.idnjurnal.com/assets/berita/original/24036781303-sma.jpg'),
(55, 'Pembina Upacara', 36, 'Lapangan', 'http://smkn2-bjm.sch.id/wp-content/uploads/2016/07/MC-Skenda-Mengibarkan-bendera-merah-putih.jpg'),
(56, 'Novita Wandasari', 7, 'Lab Rpl', ''),
(57, 'Anggra Triawan, M.Kom', 29, 'Lab RPL', ''),
(59, 'Drs.Azhari Nazwar', 37, 'R8', ''),
(60, 'Muhamad Zaki Sahil Mobarok , S.Kom', 26, 'R18', ''),
(61, 'Muhamad Haerul Shaleh, S.Kom', 38, 'LAB TKJ\r\n', ''),
(62, 'Norma Prayudha Santoso, S.Kom', 28, 'LAB TKJ', ''),
(63, 'Wahyu Wibowo, S.Pd.T', 37, 'R18', ''),
(64, 'Andri SeTia Nugraha, S.Kom', 7, 'Lab TKJ', ''),
(65, 'Ervan Supriadi S.Pd', 22, 'Bengkel TFLM', ''),
(66, 'Ade Firman, ST', 19, 'Bengkel TKRO', ''),
(67, 'Joko Susilo, S.Pd', 20, 'Bengkel TKRO', ''),
(68, 'Herma Desutia S.Pd', 24, 'Bengkel TFLM', ''),
(69, 'Irawan Sudiat, S.Pd', 21, 'Bengkel TKRO', ''),
(70, 'M. Ramdhan, S.Pd', 37, 'R5', ''),
(71, 'Acep Jamaludin ST', 25, 'Bengkel TFLM', ''),
(72, 'Ahmad Akhir, ST', 7, 'Bengkel TKRO', ''),
(73, 'Deni Setiawan, ST, M.Pd', 20, 'Bengkel TKRO', ''),
(74, 'Wahyu Wibowo, S.Pd.T', 19, 'Bengkel TKRO', ''),
(75, 'Ahmad Riyan Fauzi ST', 25, 'Bengkel TFLM', ''),
(76, 'Mujibbur Rohman, S.Si', 39, 'Lab RPL', ''),
(77, 'Dini Apri Liani, S.Pd', 34, 'R21', ''),
(78, 'Muhammad Muslim, S.Pd', 30, 'R24', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jam_masuk` text NOT NULL,
  `jam_keluar` text NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `day` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `jam_masuk`, `jam_keluar`, `id_guru`, `id_mapel`, `day`) VALUES
(1, 'XII RPL 1', '07:00', '08:00', 55, 36, 'Mon'),
(2, 'XII RPL 1', '08:00', '13:00', 41, 29, 'Mon'),
(3, 'XII RPL 1', '13:00', '23:59', 54, 35, 'Mon'),
(108, 'XII RPL 1', '07:00', '09:30', 56, 7, 'Tue'),
(109, 'XII RPL 1', '09:30', '11:00', 56, 31, 'Tue'),
(110, 'XII RPL 1', '11:00', '14:00', 41, 32, 'Tue'),
(111, 'XII RPL 1', '14:00', '23:59', 54, 35, 'Tue'),
(113, 'XII RPL 1', '07:00', '08:30', 13, 33, 'Wed'),
(114, 'XII RPL 1', '08:30', '10:00', 1, 1, 'Wed'),
(115, 'XII RPL 1', '10:00', '13:00', 19, 4, 'Wed'),
(116, 'XII RPL 1', '13:00', '23:59', 54, 35, 'Wed'),
(117, 'XII RPL 1', '07:00', '08:00', 6, 2, 'Thu'),
(118, 'XII RPL 1', '08:00', '14:00', 56, 31, 'Thu'),
(119, 'XII RPL 1', '14:00', '23:59', 54, 35, 'Thu'),
(120, 'XII RPL 1', '07:15', '08:55', 18, 3, 'Fri'),
(121, 'XII RPL 1', '08:55', '09:45', 11, 5, 'Fri'),
(122, 'XII RPL 1', '09:45', '10:10', 59, 37, 'Fri'),
(123, 'XII RPL 1', '10:10', '10:35', 50, 12, 'Fri'),
(124, 'XII RPL 1', '10:35', '23:59', 54, 35, 'Fri'),
(125, 'XII RPL 2', '08:00', '10:30', 56, 7, 'Mon'),
(126, 'XII RPL 2', '10:30', '13:00', 56, 31, 'Mon'),
(127, 'XII RPL 2', '13:00', '13:30', 10, 37, 'Mon'),
(128, 'XII RPL 2', '13:30', '23:59', 54, 35, 'Mon'),
(129, 'XII RPL 2', '07:00', '09:00', 41, 32, 'Tue'),
(130, 'XII RPL 2', '09:00', '14:00', 57, 29, 'Tue'),
(131, 'XII RPL 2', '14:00', '23:59', 54, 35, 'Tue'),
(132, 'XII RPL 2', '07:00', '13:00', 56, 31, 'Wed'),
(133, 'XII RPL 2', '13:00', '23:59', 54, 35, 'Wed'),
(134, 'XII RPL 2', '07:00', '08:00', 50, 12, 'Thu'),
(135, 'XII RPL 2', '08:00', '09:00', 6, 2, 'Thu'),
(136, 'XII RPL 2', '09:00', '11:00', 19, 4, 'Thu'),
(137, 'XII RPL 2', '11:00', '14:00', 18, 3, 'Thu'),
(138, 'XII RPL 2', '14:00', '23:59', 54, 35, 'Thu'),
(139, 'XII RPL 2', '07:15', '08:30', 1, 1, 'Fri'),
(140, 'XII RPL 2', '08:30', '09:45', 13, 33, 'Fri'),
(141, 'XII RPL 2', '9:45', '10:35', 11, 5, 'Fri'),
(142, 'XII RPL 2', '10:35', '23:59', 54, 35, 'Fri'),
(143, 'XII RPL 2', '07:00', '08:00', 55, 36, 'Mon'),
(144, 'XII TKJ 1', '07:00', '08:00', 55, 36, 'Mon'),
(145, 'XII TKJ 1', '08:00', '09:00', 50, 12, 'Mon'),
(146, 'XII TKJ 1', '09:00', '14:00', 60, 26, 'Mon'),
(147, 'XII TKJ 1', '14:00', '23:59', 54, 35, 'Mon'),
(148, 'XII TKJ 1', '07:00', '08:30', 12, 33, 'Tue'),
(149, 'XII TKJ 1', '08:30', '09:00', 19, 2, 'Tue'),
(150, 'XII TKJ 1', '09:00', '14:00', 61, 38, 'Tue'),
(151, 'XII TKJ 1', '14:00', '23:59', 54, 35, 'Tue'),
(152, 'XII TKJ 1', '07:00', '08:30', 6, 2, 'Wed'),
(153, 'XII TKJ 1', '08:30', '10:00', 18, 3, 'Wed'),
(154, 'XII TKJ 1', '10:00', '11:30', 1, 1, 'Wed'),
(155, 'XII TKJ 1', '11:30', '23:59', 54, 35, 'Wed'),
(156, 'XII TKJ 1', '07:00', '11:30', 62, 28, 'Thu'),
(157, 'XII TKJ 1', '11:30', '23:59', 54, 35, 'Thu'),
(158, 'XII TKJ 1', '07:15', '08:05', 11, 5, 'Fri'),
(159, 'XII TKJ 1', '08:05', '10:10', 61, 7, 'Fri'),
(160, 'XII TKJ 1', '10:10', '13:25', 19, 4, 'Fri'),
(161, 'XII TKJ 1', '13:25', '23:59', 54, 35, 'Fri'),
(162, 'XII TKJ 2', '07:00', '09:00', 55, 36, 'Mon'),
(163, 'XII TKJ 2', '09:00', '14:00', 61, 38, 'Mon'),
(164, 'XII TKJ 2 ', '07:00', '11:30', 62, 28, 'Tue'),
(165, 'XII TKJ 2', '12:30', '13:00', 63, 37, 'Tue'),
(166, 'XII TKJ 2', '07:00', '08:00', 50, 12, 'Wed'),
(167, 'XII TKJ 2', '08:00', '09:00', 6, 2, 'Wed'),
(168, 'XII TKJ 2', '09:00', '10:30', 12, 33, 'Wed'),
(169, 'XII TKJ 2', '10:30', '14:00', 64, 7, 'Wed'),
(170, 'XII TKJ 2', '07:00', '09:00', 18, 3, 'Thu'),
(171, 'XII TKJ 2', '09:00', '10:00', 11, 5, 'Thu'),
(172, 'XII TKJ 2', '10:00', '11:30', 1, 1, 'Thu'),
(173, 'XII TKJ 2', '07:15', '08:55', 19, 4, 'Fri'),
(174, 'XII TKJ 2', '08:55', '13:50', 60, 26, 'Fri'),
(175, 'XII TKJ 3', '07:00', '08:00', 55, 36, 'Mon'),
(176, 'XII TKJ 3', '08:00', '10:00', 18, 3, 'Mon'),
(177, 'XII TKJ 3', '10:00', '11:00', 6, 2, 'Mon'),
(178, 'XII TKJ 3', '11:00', '13:30', 12, 33, 'Mon'),
(179, 'XII TKJ 3', '07:00', '11:00', 60, 26, 'Tue'),
(182, 'XII TKJ 3', '07:00', '09:00', 19, 4, 'Thu'),
(183, 'XII TKJ 3', '09:00', '14:00', 61, 38, 'Thu'),
(184, 'XII TFL 1', '07:00', '08:00', 55, 36, 'Mon'),
(185, 'XII TFL 1', '08:00', '10:00', 17, 4, 'Mon'),
(186, 'XII TFL 1', '10:00', '13:00', 7, 3, 'Mon'),
(187, 'XII TKJ 3', '07:00', '08:00', 59, 37, 'Fri'),
(188, 'XII TKJ 3', '08:00', '09:00', 11, 5, 'Fri'),
(189, 'XII TKJ 3', '09:00', '10:30', 50, 12, 'Fri'),
(190, 'XII TKJ 3', '10:30', '14:00', 61, 7, 'Fri'),
(191, 'XII TKR 1', '07:00', '08:00', 55, 36, 'Mon'),
(192, 'XII TKR 1', '08:00', '13:00', 66, 19, 'Mon'),
(193, 'XII TFL 1', '07:00', '11:30', 65, 22, 'Tue'),
(194, 'XII TFL 1', '12:30', '14:00', 1, 1, 'Tue'),
(195, 'XII TKR 1', '13:00', '23:59', 54, 35, 'Mon'),
(196, 'XII TFL 1', '07:00', '11:00', 65, 23, 'Wed'),
(207, 'XII TFL 1', '07:00', '07:30', 61, 37, 'Thu'),
(208, 'XII TKR 1', '07:00', '09:00', 67, 20, 'Tue'),
(209, 'XII TKR 1', '09:00', '11:30', 17, 4, 'Tue'),
(210, 'XII TKR 1', '12:30', '13:00', 50, 12, 'Tue'),
(211, 'XII TKR 1', '13:00', '23:59', 54, 35, 'Tue'),
(212, 'XII TKR 1', '07:00', '11:30', 69, 21, 'Wed'),
(213, 'XII TKR 1', '12:30', '13:00', 70, 37, 'Wed'),
(214, 'XII TKR 1', '13:00', '23:59', 54, 35, 'Wed'),
(218, 'XII TFL 1', '07:00', '07:30', 61, 37, 'Thu'),
(219, 'XII TFL 1', '08:00', '09:00', 11, 5, 'Thu'),
(220, 'XII TFL 1', '09:00', '10:00', 6, 2, 'Thu'),
(221, 'XII TFL 1', '11:00', '14:00', 68, 24, 'Thu'),
(222, 'XII TKR 1', '07:00', '08:00', 11, 5, 'Thu'),
(223, 'XII TKR 1', '08:00', '09:30', 1, 1, 'Thu'),
(224, 'XII TKR 1', '09:30', '11:00', 12, 33, 'Thu'),
(225, 'XII TKR 1', '11:00', '14:00', 67, 20, 'Thu'),
(226, 'XII TKR 1', '14:00', '23:59', 54, 35, 'Thu'),
(230, 'XII TFL 1', '07:15', '08:30', 13, 33, 'Fri'),
(231, 'XII TFL 1', '08:30', '08:55', 50, 12, 'Fri'),
(232, 'XII TFL 1', '09:20', '11:00', 71, 25, 'Fri'),
(233, 'XII TKR 1', '07:15', '09:20', 72, 7, 'Fri'),
(234, 'XII TKR 1', '09:20', '10:10', 6, 2, 'Fri'),
(235, 'XII TKR 1', '10:10', '13:25', 18, 3, 'Fri'),
(236, 'XII TKR 1', '13:25', '23:59', 54, 35, 'Fri'),
(237, 'XII TKR 2', '07:00', '08:00', 55, 36, 'Mon'),
(238, 'XII TKR 2', '08:00', '09:30', 1, 1, 'Mon'),
(239, 'XII TKR 2', '09:30', '10:00', 41, 37, 'Mon'),
(240, 'XII TKR 2', '10:00', '11:00', 11, 5, 'Mon'),
(241, 'XII TKR 2', '11:00', '11:30', 50, 12, 'Mon'),
(242, 'XII TKR 2', '11:30', '23:59', 54, 35, 'Mon'),
(243, 'XII TKR 2', '07:00', '09:00', 18, 3, 'Tue'),
(244, 'XII TKR 2', '09:00', '14:00', 73, 20, 'Tue'),
(245, 'XII TKR 2', '14:00', '12:59', 54, 35, 'Tue'),
(246, 'XII TKR 2', '07:00', '08:30', 12, 33, 'Wed'),
(247, 'XII TKR 2', '08:30', '13:30', 74, 19, 'Wed'),
(248, 'XII TKR 2', '13:30', '23:59', 54, 35, 'Wed'),
(249, 'XII TKR 2', '07:00', '11:30', 63, 21, 'Thu'),
(250, 'XII TKR 2', '12:30', '13:30', 6, 2, 'Thu'),
(251, 'XII TKR 2', '13:30', '23:59', 54, 35, 'Thu'),
(252, 'XII TKR 2', '07:15', '09:20', 17, 4, 'Fri'),
(253, 'XII TKR 2', '09:20', '11:25', 72, 7, 'Fri'),
(254, 'XII TKR 2', '11:25', '23:59', 54, 35, 'Fri'),
(255, 'XII TKR 3', '07:00', '08:00', 55, 36, 'Mon'),
(256, 'XII TKR 3', '08:00', '08:30', 13, 37, 'Mon'),
(257, 'XII TKR 3', '08:30', '11:00', 72, 7, 'Mon'),
(258, 'XII TKR 3', '11:00', '14:00', 17, 4, 'Mon'),
(259, 'XII TKR 3', '14:00', '23:59', 54, 35, 'Mon'),
(260, 'XII TKR 3', '07:00', '08:00', 11, 5, 'Tue'),
(261, 'XII TKR 3', '08:00', '09:30', 1, 1, 'Tue'),
(262, 'XII TKR 3', '09:30', '11:30', 18, 3, 'Tue'),
(263, 'XII TKR 3', '11:30', '23:59', 54, 35, 'Tue'),
(264, 'XII TFL 2', '07:00', '08:00', 55, 36, 'Mon'),
(265, 'XII TFL 2', '08:00', '09:00', 6, 2, 'Mon'),
(266, 'XII TFL 2', '09:00', '10:00', 11, 5, 'Mon'),
(267, 'XI TFL 2', '10:00', '13:30', 59, 7, 'Mon'),
(268, 'XII TKR 3', '07:00', '11:00', 67, 20, 'Wed'),
(269, 'XII TKR 3', '11:00', '13:00', 6, 2, 'Wed'),
(270, 'XII TKR 3', '13:00', '23:59', 54, 35, 'Wed'),
(271, 'XII TKR 3', '07:00', '11:00', 72, 19, 'Thu'),
(272, 'XII TKR 3', '11:00', '11:30', 50, 12, 'Thu'),
(273, 'XII TKR 3', '11:30', '23:59', 54, 35, 'Thu'),
(274, 'XII TFL 2', '07:00', '07:30', 50, 12, 'Tue'),
(275, 'XII TFL 2', '08:00', '09:00', 11, 5, 'Tue'),
(276, 'XII TFL 2', '09:00', '11:00', 7, 3, 'Tue'),
(277, 'XI TFL 2', '11:00', '13:30', 13, 33, 'Tue'),
(278, 'XII TKR 3', '07:15', '11:00', 74, 21, 'Fri'),
(279, 'XII TKR 3', '11:00', '13:50', 12, 33, 'Fri'),
(280, 'XII TKR 3', '13:50', '23:59', 54, 35, 'Fri'),
(281, 'XII TFL 2', '07:00', '09:00', 68, 24, 'Wed'),
(282, 'XII TFL 2', '09:00', '11:00', 17, 4, 'Wed'),
(283, 'XII TFL 2', '11:00', '11:30', 70, 37, 'Wed'),
(284, 'XI TFL 2', '12:30', '14:00', 1, 1, 'Wed'),
(285, 'XII TFL 2', '07:00', '11:00', 65, 23, 'Thu'),
(286, 'XII TFL 2', '10:00', '14:00', 75, 25, 'Thu'),
(287, 'XII TFL 2', '07:15', '11:00', 65, 24, 'Fri'),
(288, 'XII TKJ 3', '13:30', '23:59', 54, 35, 'Mon'),
(289, 'XII TKJ 3', '11:00', '23:59', 54, 35, 'Tue'),
(290, 'XII TKJ 3', '07:00', '08:30', 1, 1, 'Wed'),
(291, 'XII TKJ 3', '08:30', '14:00', 62, 28, 'Wed'),
(292, 'XII TKJ 3', '14:00', '23:59', 54, 35, 'Wed'),
(293, 'XII TKJ 3', '14:00', '23:59', 54, 35, 'Thu'),
(294, 'XII TKJ 3', '14:00', '23:59', 54, 35, 'Fri'),
(295, 'XII TFL 1', '13:00', '23:59', 54, 35, 'Mon'),
(296, 'XII TFL 1', '14:00', '23:59', 54, 35, 'Tue'),
(297, 'XII TFL 1', '11:00', '23:59', 54, 35, 'Wed'),
(298, 'XII TFL 1', '14:00', '23:59', 54, 35, 'Thu'),
(299, 'XII TFL 1', '11:00', '23:59', 54, 35, 'Fri'),
(300, 'XII TFL 2', '10:00', '13:30', 59, 7, 'Mon'),
(301, 'XII TFL 2', '13:30', '23:59', 54, 35, 'Mon'),
(306, 'X RPL 1', '07:00', '08:00', 55, 36, 'Mon'),
(307, 'X RPL 1', '08:00', '10:30', 76, 39, 'Mon'),
(308, 'X RPL 1', '10:30', '11:30', 23, 40, 'Mon'),
(309, 'X RPL 1', '11:30', '14:00', 23, 41, 'Mon'),
(310, 'X RPL 1', '14:00', '23:59', 54, 35, 'Mon'),
(311, 'X RPL 1', '07:00', '08:30', 33, 1, 'Tue'),
(312, 'X RPL 1', '08:30', '09:30', 77, 34, 'Tue'),
(313, 'X RPL 1', '09:30', '14:00', 6, 2, 'Tue'),
(314, 'X RPL 1', '14:00', '23:59', 54, 35, 'Tue'),
(315, 'X RPL 1', '07:00', '08:30', 78, 30, 'Wed'),
(316, 'X RPL 1', '08:30', '10:00', 19, 4, 'Wed'),
(317, 'X RPL 1', '10:00', '10:30', 61, 37, 'Wed'),
(318, 'X RPL 1', '10:30', '11:30', 51, 12, 'Wed'),
(319, 'X RPL 1', '12:30', '14:00', 23, 10, 'Wed'),
(320, 'X RPL 2', '14:00', '23:59', 54, 35, 'Wed'),
(321, 'X RPL 1', '07:00', '08:00', 21, 3, 'Thu'),
(322, 'X RPL 1', '08:00', '09:00', 24, 5, 'Thu'),
(323, 'X RPL 1', '09:00', '10:30', 41, 13, 'Thu'),
(324, 'X RPL 1', '10:30', '13:00', 41, 42, 'Thu'),
(325, 'X RPL 1', '13:00', '23:59', 54, 35, 'Thu'),
(326, 'X RPL 1', '07:15', '08:55', 21, 3, 'Fri'),
(327, 'X RPL 1', '08:55', '09:45', 24, 5, 'Fri'),
(328, 'X RPL 1', '09:45', '11:00', 41, 13, 'Fri'),
(329, 'X RPL 1', '11:00', '13:50', 41, 42, 'Fri'),
(330, 'X RPL 1', '13:50', '23:59', 54, 35, 'Fri'),
(331, '', '14:00', '23:59', 54, 35, 'Wed'),
(332, 'X RPL 1', '14:00', '23:59', 54, 35, 'Wed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`) VALUES
(1, 'Pendidikan Agama Islam'),
(2, 'Bahasa Indonesia'),
(3, 'Matematika'),
(4, 'Bahasa Inggris'),
(5, 'PPKn'),
(7, 'Produk Kreatif Kewirausahaan'),
(8, 'Sejarah Indonesia'),
(9, 'Kimia '),
(10, 'Fisika '),
(11, 'Seni Budaya '),
(12, 'Bimbingan Konseling  '),
(13, 'Simulasi Digital '),
(19, 'Pemeliharaan Kelistrikan Kendaraan\r\nRingan'),
(20, 'Pemeliharaan Sasis dan Pemindah Tenaga Kendaraan Ringan'),
(21, 'Pemeliharaan Mesin Kendaraan Ringan'),
(22, 'Teknik Pemesinan Konvensional'),
(23, 'Teknik Fabrikasi Logam'),
(24, 'Teknik Pemesinan Non Konvensiona'),
(25, 'Perancangan Teknik dan Gambar Manufaktur Fabrikasi Logam'),
(26, 'Administrasi Sistem Jaringan '),
(27, 'Teknologi Layanan Jaringan'),
(28, 'Administrasi Infrastruktur Jaringan'),
(29, 'PemrogramanBeorientasi Obyek'),
(30, 'Penjasorkes'),
(31, 'Pemrograman Web dan Perangkat\r\nBergerak'),
(32, 'Basis Data'),
(33, 'Kewirausahaan'),
(34, 'Bahasa Sunda'),
(35, 'Pulang'),
(36, 'Upacara'),
(37, 'Wali Kelas'),
(38, 'Tekhnologi Layanan Jaringan'),
(39, 'komputer dan Jaringan Dasar'),
(40, 'Sistem Komputer'),
(41, 'Dasar Dasar Desain Grafis'),
(42, 'Pemrograman Dasar');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`);

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`),
  ADD CONSTRAINT `kelas_ibfk_2` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
