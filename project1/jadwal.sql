-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 10:51 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

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
(13, 'DR. Dadang Jaenudin, S.Pd, M.Si', 7, 'R7', 'https://i.pinimg.com/736x/5d/85/94/5d859443c301a3666085058e6faa47ec.jpg');

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
(1, 'XII RPL 1', '15:37', '15:38', 1, 1, 'Mon'),
(2, 'XII RPL 1', '14:41', '14:42', 6, 2, 'Tue'),
(3, 'XII RPL 1', '14:43', '14:44', 7, 3, 'Wed'),
(4, 'XII RPL 1', '14:45', '14:46', 10, 4, 'Thu'),
(5, 'XII RPL 1', '14:47', '14:48', 11, 5, 'Fri'),
(6, 'XII RPL 2', '14:49', '14:50', 12, 6, 'Sat'),
(7, 'XII RPL 1', '14:51', '14:52', 13, 7, 'Sun');

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
(7, 'PKK');

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
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
