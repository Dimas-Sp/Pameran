-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 07:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwal`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` text NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `kode_ruangan` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `id_mapel`, `kode_ruangan`, `img`) VALUES
(1, 'Dikri Maulana, S.Ag', 1, 'R1', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(6, 'Atit Hartati, S.Pd', 2, 'R2', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(7, 'Saefudin, S.Ag', 3, 'R3', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(10, 'Nuraini, S.Pd', 4, 'R4', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(11, 'Drs. Yayat, M.Pd', 5, 'R5', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
(12, 'Dra. Lorensia Purawanti', 6, 'R6', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg'),
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
(34, 'Dra. Erni Riana Syari', 12, 'R. 5,9,12,14,16,18,22,25/R.BK', ''),
(35, 'Yudiansyah, S.Pd ', 12, 'R. 8,14,16,17,18,23,25 /\r\nR.BK', ''),
(37, 'Dra. Erni Riana Syari', 12, 'R. 5,9,12,14,16,18,22,25/R.BK', ''),
(38, 'Yudiansyah, S.Pd ', 12, 'R. 8,14,16,17,18,23,25 /\r\nR.BK', ''),
(39, 'Andri Sunaryawansayah', 12, 'R. 7,8,14,16,23, 25 / R.BK', ''),
(40, 'Aprianto, S.Kom', 13, 'R. Simdig', ''),
(41, 'Ajeng Astri Utami, S.Pd', 13, 'R. Simdig', ''),
(43, 'Dra. Erni Riana Syari', 12, 'R. 5,9,12,14,16,18,22,25/R.BK', ''),
(44, 'Yudiansyah, S.Pd ', 12, 'R. 8,14,16,17,18,23,25 /\r\nR.BK', ''),
(45, 'Andri Sunaryawansayah', 12, 'R. 7,8,14,16,23, 25 / R.BK', ''),
(46, 'Aprianto, S.Kom', 13, 'R. Simdig', ''),
(47, 'Ajeng Astri Utami, S.Pd', 13, 'R. Simdig', ''),
(49, 'Dra. Erni Riana Syari', 12, 'R. 5,9,12,14,16,18,22,25/R.BK', ''),
(50, 'Yudiansyah, S.Pd ', 12, 'R. 8,14,16,17,18,23,25 /\r\nR.BK', ''),
(51, 'Andri Sunaryawansayah', 12, 'R. 7,8,14,16,23, 25 / R.BK', ''),
(52, 'Aprianto, S.Kom', 13, 'R. Simdig', ''),
(53, 'Ajeng Astri Utami, S.Pd', 13, 'R. Simdig', '');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
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
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `jam_masuk`, `jam_keluar`, `id_guru`, `id_mapel`, `day`) VALUES
(1, 'X RPL 1', '11:24', '11:25', 1, 1, 'Mon'),
(2, 'X RPL 2', '11:00', '14:42', 6, 2, 'Mon'),
(3, 'XI RPL 1', '14:43', '14:44', 7, 3, 'Mon'),
(4, 'XI RPL 2', '14:45', '14:46', 10, 4, 'Mon'),
(5, 'XII RPL 1', '14:47', '14:48', 11, 5, 'Mon'),
(6, 'XII RPL 2', '14:49', '14:50', 12, 6, 'Mon'),
(7, 'X TKJ 1', '14:51', '14:52', 13, 7, 'Mon'),
(8, 'X TKJ 2', '0', '0', 1, 1, 'Mon'),
(9, 'X TKJ 3', '0', '0', 1, 1, 'Mon'),
(10, 'XI TKJ 1', '0', '0', 1, 1, 'Mon'),
(11, 'XI TKJ 2', '0', '0', 1, 1, 'Mon'),
(12, 'XI TKJ 3', '0', '0', 1, 1, 'Mon'),
(13, 'XII TKJ 1', '', '', 1, 1, 'Mon'),
(14, 'XII TKJ 2', '', '', 1, 1, 'Mon'),
(15, 'XII TKJ 3', '', '', 1, 1, 'Mon'),
(16, 'X TKR 1', '', '', 1, 1, 'Mon'),
(17, 'X TKR 2', '', '', 1, 1, 'Mon'),
(18, 'X TKR 3', '', '', 1, 1, 'Mon'),
(19, 'XI TKR 1', '', '', 1, 1, 'Mon'),
(20, 'XI TKR 2', '', '', 1, 1, 'Mon'),
(21, 'XI TKR 3', '', '', 1, 1, 'Mon'),
(22, 'XII TKR 1', '', '', 1, 1, 'Mon'),
(23, 'XII TKR 2', '', '', 1, 1, 'Mon'),
(24, 'XII TKR 3', '', '', 1, 1, 'Mon'),
(25, 'X TFL 1', '', '', 1, 1, 'Mon'),
(26, 'X TFL 2', '', '', 1, 1, 'Mon'),
(27, 'XI TFL 1', '', '', 1, 1, 'Mon'),
(28, 'XI TFL 2', '', '', 1, 1, 'Mon'),
(29, 'XII TFL 1', '', '', 1, 1, 'Mon'),
(30, 'XII TFL 2', '', '', 1, 1, 'Mon'),
(31, 'XIII TFL 1', '', '', 1, 1, 'Mon'),
(32, 'XIII TFL 2', '', '', 1, 1, 'Mon'),
(33, 'X TP 1', '', '', 1, 1, 'Mon'),
(34, 'X TP 2', '', '', 1, 1, 'Mon'),
(35, 'X RPL 1', '11:24', '11:25', 1, 1, 'Tue'),
(36, 'X RPL 2', '11:00', '14:42', 6, 2, 'Tue'),
(37, 'XI RPL 1', '14:43', '14:44', 7, 3, 'Tue'),
(38, 'XI RPL 2', '14:45', '14:46', 10, 4, 'Tue'),
(39, 'XII RPL 1', '13:05', '13:15', 11, 5, 'Tue'),
(40, 'XII RPL 2', '13:16', '13:21', 12, 6, 'Tue'),
(41, 'X TKJ 1', '14:51', '14:52', 13, 7, 'Tue'),
(42, 'X TKJ 2', '0', '0', 1, 1, 'Tue'),
(43, 'X TKJ 3', '0', '0', 1, 1, 'Tue'),
(44, 'XI TKJ 1', '0', '0', 1, 1, 'Tue'),
(45, 'XI TKJ 2', '0', '0', 1, 1, 'Tue'),
(46, 'XI TKJ 3', '0', '0', 1, 1, 'Tue'),
(47, 'XII TKJ 1', '', '', 1, 1, 'Tue'),
(48, 'XII TKJ 2', '', '', 1, 1, 'Tue'),
(49, 'XII TKJ 3', '', '', 1, 1, 'Tue'),
(50, 'X TKR 1', '', '', 1, 1, 'Tue'),
(51, 'X TKR 2', '', '', 1, 1, 'Tue'),
(52, 'X TKR 3', '', '', 1, 1, 'Tue'),
(53, 'XI TKR 1', '', '', 1, 1, 'Tue'),
(54, 'XI TKR 2', '', '', 1, 1, 'Tue'),
(55, 'XI TKR 3', '', '', 1, 1, 'Tue'),
(56, 'XII TKR 1', '', '', 1, 1, 'Tue'),
(57, 'XII TKR 2', '', '', 1, 1, 'Tue'),
(58, 'XII TKR 3', '', '', 1, 1, 'Tue'),
(59, 'X TFL 1', '', '', 1, 1, 'Tue'),
(60, 'X TFL 2', '', '', 1, 1, 'Tue'),
(61, 'XI TFL 1', '', '', 1, 1, 'Tue'),
(62, 'XI TFL 2', '', '', 1, 1, 'Tue'),
(63, 'XII TFL 1', '', '', 1, 1, 'Tue'),
(64, 'XII TFL 2', '', '', 1, 1, 'Tue'),
(65, 'XIII TFL 1', '', '', 1, 1, 'Tue'),
(66, 'XIII TFL 2', '', '', 1, 1, 'Tue'),
(67, 'X TP 1', '', '', 1, 1, 'Tue'),
(68, 'X TP 2', '', '', 1, 1, 'Tue'),
(69, 'X RPL 1', '11:24', '11:25', 1, 1, 'Wed'),
(70, 'X RPL 2', '11:00', '14:42', 6, 2, 'Wed'),
(71, 'XI RPL 1', '14:43', '14:44', 7, 3, 'Wed'),
(72, 'XI RPL 2', '14:45', '14:46', 10, 4, 'Wed'),
(73, 'XII RPL 1', '14:47', '14:48', 11, 5, 'Wed'),
(74, 'XII RPL 2', '14:49', '14:50', 12, 6, 'Wed'),
(75, 'X TKJ 1', '14:51', '14:52', 13, 7, 'Wed'),
(76, 'X TKJ 2', '0', '0', 1, 1, 'Wed'),
(77, 'X TKJ 3', '0', '0', 1, 1, 'Mon'),
(78, 'XI TKJ 1', '0', '0', 1, 1, 'Mon'),
(79, 'XI TKJ 2', '0', '0', 1, 1, 'Mon'),
(80, 'XI TKJ 3', '0', '0', 1, 1, 'Mon'),
(81, 'XII TKJ 1', '', '', 1, 1, 'Mon'),
(82, 'XII TKJ 2', '', '', 1, 1, 'Mon'),
(83, 'XII TKJ 3', '', '', 1, 1, 'Mon'),
(84, 'X TKR 1', '', '', 1, 1, 'Mon'),
(85, 'X TKR 2', '', '', 1, 1, 'Mon'),
(86, 'X TKR 3', '', '', 1, 1, 'Mon'),
(87, 'XI TKR 1', '', '', 1, 1, 'Mon'),
(88, 'XI TKR 2', '', '', 1, 1, 'Mon'),
(89, 'XI TKR 3', '', '', 1, 1, 'Mon'),
(90, 'XII TKR 1', '', '', 1, 1, 'Mon'),
(91, 'XII TKR 2', '', '', 1, 1, 'Mon'),
(92, 'XII TKR 3', '', '', 1, 1, 'Mon'),
(93, 'X TFL 1', '', '', 1, 1, 'Mon'),
(94, 'X TFL 2', '', '', 1, 1, 'Mon'),
(95, 'XI TFL 1', '', '', 1, 1, 'Mon'),
(96, 'XI TFL 2', '', '', 1, 1, 'Mon'),
(97, 'XII TFL 1', '', '', 1, 1, 'Mon'),
(98, 'XII TFL 2', '', '', 1, 1, 'Mon'),
(99, 'XIII TFL 1', '', '', 1, 1, 'Mon'),
(100, 'XIII TFL 2', '', '', 1, 1, 'Mon'),
(101, 'X TP 1', '', '', 1, 1, 'Mon');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`) VALUES
(1, 'Pendidikan Agama Islam'),
(2, 'Bahasa Indonesia'),
(3, 'Matematika'),
(4, 'Bahasa Inggris'),
(5, 'PPKn'),
(6, 'KWU'),
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
(30, 'Penjas'),
(31, 'Pemrograman Web dan Perangkat\r\nBergerak'),
(32, 'Basis Data'),
(33, 'Kewirausahaan'),
(34, 'Bahasa Sunda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
