-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2019 at 05:47 AM
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
-- Database: `pengelolaan-dana`
--

-- --------------------------------------------------------

--
-- Table structure for table `sumber_dana`
--

CREATE TABLE `sumber_dana` (
  `id_sumber_dana` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `id_jenis_sumber_dana` int(11) NOT NULL,
  `nama_pemasukkan` varchar(100) NOT NULL,
  `saldo_awal` int(11) NOT NULL DEFAULT '0',
  `saldo_bank` int(11) NOT NULL DEFAULT '0',
  `bunga_bank` float NOT NULL DEFAULT '0',
  `saldo_kas_tunai` int(11) NOT NULL DEFAULT '0',
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sumber_dana`
--

INSERT INTO `sumber_dana` (`id_sumber_dana`, `id_sekolah`, `id_jenis_sumber_dana`, `nama_pemasukkan`, `saldo_awal`, `saldo_bank`, `bunga_bank`, `saldo_kas_tunai`, `jumlah`, `tanggal`) VALUES
(4, 15, 1, 'Bosnas Januari 2017', 0, 0, 0, 0, 0, '2017-01-01'),
(5, 15, 1, 'Bosnas Februari 2017', 0, 0, 0, 0, 0, '2017-02-01'),
(6, 15, 1, 'Bosnas Maret 2017', 0, 185000000, 0, 0, 185000000, '2017-03-01'),
(7, 15, 1, 'Bosnas April 2017', 1, 0, 0, 0, 1, '2017-04-01'),
(8, 15, 1, 'Bosnas Mei 2017', 1, 1, 0, 0, 2, '2017-05-01'),
(9, 15, 1, 'Bosnas Juni 2017', 1, 1, 0, 1, 3, '2017-06-01'),
(15, 15, 1, 'Bosnas Agustus 2017', 20000, 0, 0, 0, 20000, '2017-08-15'),
(16, 15, 1, 'Saldo Akhir Periode Januari - Maret 2017', -185000000, 0, 0, 0, -185000000, '2017-04-01'),
(17, 15, 1, 'Saldo Akhir Periode Januari - Maret 2018', 0, 0, 0, 0, 0, '2018-04-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sumber_dana`
--
ALTER TABLE `sumber_dana`
  ADD PRIMARY KEY (`id_sumber_dana`),
  ADD KEY `fk_id_sekolah_3` (`id_sekolah`),
  ADD KEY `fk_id_jenis_sumber_dana` (`id_jenis_sumber_dana`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sumber_dana`
--
ALTER TABLE `sumber_dana`
  MODIFY `id_sumber_dana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sumber_dana`
--
ALTER TABLE `sumber_dana`
  ADD CONSTRAINT `fk_id_jenis_sumber_dana` FOREIGN KEY (`id_jenis_sumber_dana`) REFERENCES `jenis_sumber_dana` (`id_jenis_sumber_dana`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_sekolah_3` FOREIGN KEY (`id_sekolah`) REFERENCES `sekolah` (`id_sekolah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
