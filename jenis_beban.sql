-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2019 at 05:46 AM
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
-- Table structure for table `jenis_beban`
--

CREATE TABLE `jenis_beban` (
  `id_jenis_beban` int(11) NOT NULL,
  `nama_jenis_beban` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_beban`
--

INSERT INTO `jenis_beban` (`id_jenis_beban`, `nama_jenis_beban`) VALUES
(1, 'Beban Pegawai'),
(2, 'Beban Persediaan'),
(3, 'Beban Jasa'),
(4, 'Beban Pemeliharaan'),
(5, 'Beban Perjalanan Dinas'),
(6, 'Beban Hibah'),
(7, 'Beban Bantuan Sosial'),
(8, 'Beban Penyisihan Piutang'),
(9, 'Beban Penyusutan/Amortisasi'),
(10, 'Beban Transfer'),
(11, 'Beban Lain-lain');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_beban`
--
ALTER TABLE `jenis_beban`
  ADD PRIMARY KEY (`id_jenis_beban`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_beban`
--
ALTER TABLE `jenis_beban`
  MODIFY `id_jenis_beban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
