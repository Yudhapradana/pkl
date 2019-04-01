-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2019 at 05:43 AM
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
-- Table structure for table `keluar_masuk_dana`
--

CREATE TABLE `keluar_masuk_dana` (
  `id_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_dana_kegiatan` int(11) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` enum('masuk','keluar') NOT NULL,
  `id_sekolah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keluar_masuk_dana`
--

INSERT INTO `keluar_masuk_dana` (`id_kegiatan`, `nama_kegiatan`, `jumlah`, `id_dana_kegiatan`, `nama_toko`, `tanggal`, `gambar`, `status`, `id_sekolah`) VALUES
(1, 'Tanda Terima Honranium Pegawai Tidak Tetap/PTT bagian Bulan Januari 2017', 7550000, 2, '', '2017-01-03', '', 'keluar', 15),
(2, 'Belanja Pemeliharaan (Pembelian Tinta Printer)', 300000, 2, '', '2017-01-02', '', 'keluar', 15),
(3, 'Tanda Terima Honranium Guru Tidak Tetap/GTT bagian Bulan Januari 2017', 4125000, 2, '', '2017-01-03', '', 'keluar', 15),
(4, 'Belanja Transpor Mengikuti Kegiatan Penyusunan Perangkat Pembelanjaan PAK di Aula Kantor Kemenag Kab. Malang', 50000, 2, '', '2017-01-06', '', 'keluar', 15),
(5, 'Belanja Pemeliharaan (Pembelian Klip)', 10000, 2, '', '2017-01-06', '', 'keluar', 15),
(6, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-01-07', '', 'keluar', 15),
(7, 'Belanja Pemeliharaan (Pembelian Pylox)', 111000, 2, '', '2017-01-07', '', 'keluar', 15),
(8, 'Belanja Transpor Mengikuti Kegiatan MGMP PJOK (2 orang)', 50000, 2, '', '2017-01-07', '', 'keluar', 15),
(9, 'Belanja Bahan Habis Pakai Untuk Kegiatan Pembelajaran (Pembelian Bahan-Bahan untuk Lab. IPA)', 2137600, 2, '', '2017-01-09', '', 'keluar', 15),
(10, 'Belanja Pemeliharaan (Service Laptop dan Printer)', 445000, 2, '', '2017-01-10', '', 'keluar', 15),
(11, 'Belanja Pemeliharaan Rekening Telepon Bulan Januari 2017', 523100, 2, '', '2017-01-11', '', 'keluar', 15),
(12, 'Belanja Pembayaran Rekening Air Januari 2017', 1264750, 2, '', '2017-01-11', '', 'keluar', 15),
(13, 'Belanja Pembayaran Rekening Listrik Januari 2017', 2015400, 2, '', '2017-01-11', '', 'keluar', 15),
(14, 'Belanja Pembayaran Rekening Internet Januari 2017', 2248000, 2, '', '2017-01-11', '', 'keluar', 15),
(15, 'Belanja Transpor Mengikuti Kegiatan MGBK (3 orang)', 75000, 2, '', '2017-01-11', '', 'keluar', 15),
(16, 'Belanja Pemeliharaan (Belanja Retribusi Kebersihan Lingkungan)', 60000, 2, '', '2017-01-12', '', 'keluar', 15),
(17, 'Belanja Pemeliharaan (Belanja Gembok)', 160000, 2, '', '2017-01-13', '', 'keluar', 15),
(18, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-01-14', '', 'keluar', 15),
(19, 'Belanja Transpor Mengikuti Rapat Persiapan Pendatang Ujian Nasional Tahun 2016/2017 (1 Orang)', 25000, 2, '', '2017-01-16', '', 'keluar', 15),
(20, 'Belanja Pemeliharaan (Pembelian Catylac 44177)', 555000, 2, '', '2017-01-16', '', 'keluar', 15),
(21, 'Belanja Transpor Mengikuti Kegiatan Rapat Koordinasi Persiapan Review Program Unggulan Sekolah Jenjang SMP (2 Orang)', 50000, 2, '', '2017-01-17', '', 'keluar', 15),
(22, 'Belanja Peralatan Untuk Kegiatan Pembelajaran Mata Pelajaran Pra-Karya', 1455000, 2, '', '2017-01-18', '', 'keluar', 15),
(23, 'Belanja Transpor Mengikuti Kegiatan MGMP IPS (3 orang)', 105000, 2, '', '2017-01-18', '', 'keluar', 15),
(24, 'Belanja Transpor Mengikuti Kegiatan MGMP PAI (2 orang)', 70000, 2, '', '2017-01-19', '', 'keluar', 15),
(25, 'Belanja Transpor Mengikuti Kegiatan MGMP PPKN (2 orang)', 70000, 2, '', '2017-01-19', '', 'keluar', 15),
(26, 'Belanja Pemeliharaan (Pembelian Sanlex 925, dll Nota terlampir)', 720000, 2, '', '2017-01-19', '', 'keluar', 15),
(27, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-01-21', '', 'keluar', 15),
(28, 'Belanja Konsumsi Untuk MGMP OR dari MKKS', 50000, 2, '', '2017-01-21', '', 'keluar', 15),
(29, 'Belanja Transpor Mengikuti Kegiatan MGMP IPA (3 orang)', 105000, 2, '', '2017-01-21', '', 'keluar', 15),
(30, 'Belanja Transpor Mengikuti Kegiatan MGMP PJOK (2 orang)', 70000, 2, '', '2017-01-21', '', 'keluar', 15),
(31, 'Belanja Pemeliharaan (Perbaikan Printer Ruang Guru dan Ganti Cartridge)', 215000, 2, '', '2017-01-23', '', 'keluar', 15),
(32, 'Belanja Transpor Mengikuti Kegiatan MGMP Bhs Inggris (2 orang)', 70000, 2, '', '2017-01-23', '', 'keluar', 15),
(33, 'Belanja Fotocopy Kegiatan Manajemen Sekolah (Media Fotokopi)', 72700, 2, '', '2017-01-23', '', 'keluar', 15),
(34, 'Belanja Transpor Mengikuti Kegiatan MGMP Bhs Indonesia (2 orang)', 70000, 2, '', '2017-01-24', '', 'keluar', 15),
(35, 'Belanja Pemeliharaan (Pembelian Kbl Duct 50x50)', 120000, 2, '', '2017-01-25', '', 'keluar', 15),
(36, 'Belanja Transpor Mengikuti Kegiatan MGMP Matematika (3 orang)', 105000, 2, '', '2017-01-26', '', 'keluar', 15),
(37, 'Belanja Transpor Mengikuti Kegiatan MGMP Mulok Baja (1orang)', 35000, 2, '', '2017-01-27', '', 'keluar', 15),
(38, 'Belanja Pemeliharaan (Pembelian Stop Shawr Tel VC2)', 90000, 2, '', '2017-01-27', '', 'keluar', 15),
(39, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-01-28', '', 'keluar', 15),
(40, 'Belanja Transpor Mengikuti Kegiatan Bedah Analisis Kompetensi USBN PAI (2 orang)', 70000, 2, '', '2017-01-31', '', 'keluar', 15),
(41, 'Belanja Transpor Menggunakan Home Visit', 25000, 2, '', '2017-01-27', '', 'keluar', 15),
(42, 'Belanja Pembayaran Rekening Koran Januari 2017', 350000, 2, '', '2017-01-31', '', 'keluar', 15),
(43, 'Belanja Transpor Pembina Pengembangan Diri Januari 2017', 3450000, 2, '', '2017-01-31', '', 'keluar', 15),
(44, 'Belanja Makanan dan Minuman Harian Pendidik dan Tenaga Kependidikan Januari 2017 (21x60xRp. 2000)', 2520000, 2, '', '2017-01-31', '', 'keluar', 15),
(45, 'Belanja Fotocopy / Penggandaan Untuk Kegiatan Manajemen Ketatausahaan Bagian Bulan Januari 2017', 2247900, 2, '', '2017-01-31', '', 'keluar', 15),
(46, 'Belanja ATK Januari 2017', 2054750, 2, '', '2017-01-31', '', 'keluar', 15),
(47, 'Belanja Pemeliharaan (Pembelian HUB TP LINK / Nota Terlampir)', 550000, 2, '', '2017-01-31', '', 'keluar', 15),
(48, 'Belanja Modal (Pengadaan Kekurangan Buku Untuk Kelas VII, VIII, dan IX dengan Nota Terlampir)', 1728600, 2, '', '2017-01-31', '', 'keluar', 15),
(49, 'Tanda Terima Honranium Pegawai Tidak Tetap/PTT bagian Bulan Februari 2017', 5400000, 2, '', '2017-02-01', '', 'keluar', 15),
(50, 'Tanda Terima Honranium Guru Tidak Tetap/GTT bagian Bulan Februari 2017', 4125000, 2, '', '2017-02-01', '', 'keluar', 15),
(51, 'Belanja Transpor Mengikuti Kegiatan MGMP Matematika (3 orang)', 105000, 2, '', '2017-02-02', '', 'keluar', 15),
(52, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-02-04', '', 'keluar', 15),
(53, 'Belanja Transpor Mengikuti Kegiatan Penyusunan Naskah PUA-UN Jenjang SMP/MTS Tahun 2016/2017 (3 orang)', 75000, 2, '', '2017-02-07', '', 'keluar', 15),
(54, 'Belanja Pemeliharaan (Pembelian Kran dan TBA)', 188000, 2, '', '2017-02-08', '', 'keluar', 15),
(55, 'Belanja Transpor Mengikuti Kegiatan MGMP IPS (3 orang)', 105000, 2, '', '2017-02-08', '', 'keluar', 15),
(56, 'Belanja Pemeliharaan (Pembelian Kabel VGA dan Kabel Tetis)', 135000, 2, '', '2017-02-08', '', 'keluar', 15),
(57, 'Belanja Peralatan Kebersihan', 1655000, 2, '', '2017-02-09', '', 'keluar', 15),
(58, 'Belanja Pembayaran Rekening Telepon Februari 2017', 621500, 2, '', '2017-02-09', '', 'keluar', 15),
(59, 'Belanja Pembayaran Rekening Air Ferbruari 2017', 1586600, 2, '', '2017-02-09', '', 'keluar', 15),
(60, 'Belanja Pembayaran Rekening Listrik Februari 2017', 1926300, 2, '', '2017-02-09', '', 'keluar', 15),
(61, 'Belanja Pembayaran Rekening Internet Februari 2017', 2248000, 2, '', '2017-02-09', '', 'keluar', 15),
(62, 'Belanja Pemeliharaan (Pembelian MCB 25A)', 100000, 2, '', '2017-02-10', '', 'keluar', 15),
(63, 'Belanja Konsumsi Kegiatan Workshop Penyusunan Program Sistem Penjaminan Mutu Integral (SPMI)', 1400000, 2, '', '2017-02-10', '', 'keluar', 15),
(64, 'Belanja Pemeliharaan (Pembelian Kabel VGA)', 205000, 2, '', '2017-02-11', '', 'keluar', 15),
(65, 'Belanja Transpor Mengikuti Kegiatan MGMP Mulok Bahasa Jawa (1orang)', 35000, 2, '', '2017-02-11', '', 'keluar', 15),
(66, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-02-11', '', 'keluar', 15),
(67, 'Belanja Peralatan Kebersihan (Keset)', 295000, 2, '', '2017-02-12', '', 'keluar', 15),
(68, 'Belanja Untuk Keperluan Pembelajaran IPA (Bahan-Bahan Praktikum Lab IPA)', 2388550, 2, '', '2017-02-13', '', 'keluar', 15),
(69, 'Belanja Transpor Mengikuti Kegiatan MGBK (2 orang)', 70000, 2, '', '2017-02-14', '', 'keluar', 15),
(70, 'Belanja Transpor Mengikuti Sosialisasi Aplikasi DAPODIK DASMEN Semester 2 Tahun 2016/2017', 25000, 2, '', '2017-02-16', '', 'keluar', 15),
(71, 'Belanja Fotocopy dan Penggandaan Soal Try Out Tahap 2', 3240000, 2, '', '2017-02-16', '', 'keluar', 15),
(72, 'Belanja Bahan Habis Pakai (Nota Terlampir)', 210400, 2, '', '2017-02-17', '', 'keluar', 15),
(73, 'Belanja Pemeliharaan (Belanja Retribusi Kebersihan Lingkungan)', 60000, 2, '', '2017-02-17', '', 'keluar', 15),
(74, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-02-18', '', 'keluar', 15),
(75, 'Belanja Transpor Menggunakan Workshop Pemberdayaan Guru untuk Meningkatkan Potensi dan Kemampuan Menulis Karya Sasta, di Hotel Purnama Batu selama 4 Hari (2 Orang)', 100000, 2, '', '2017-02-20', '', 'keluar', 15),
(76, 'Belanja Fotocopy dan Penggandaan Soal Penilaian Tengah Semester Genap Tahun 2016/2017', 4653000, 2, '', '2017-02-21', '', 'keluar', 15),
(77, 'Belanja Pemeliharaan (Pembelian Bahan Untuk Perbaikan dan Pengecatan Fasilitas Sekolah)', 1443500, 2, '', '2017-02-22', '', 'keluar', 15),
(78, 'Belanja Transpor Dalam Rangka Home Visit ke Rumah Hose Armando Riko (IX-B0', 25000, 2, '', '2017-02-22', '', 'keluar', 15),
(79, 'Belanja Transpor Menjadi Peserta Undangan Temu Anak Se-Kota Batu (2 Anak)', 50000, 2, '', '2017-02-24', '', 'keluar', 15),
(80, 'Belanja Transpor Mengikuti Kegiatan Pearson Teacher Training Session di SMP BSS Malang (1 orang)', 50000, 2, '', '2017-02-25', '', 'keluar', 15),
(81, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-02-25', '', 'keluar', 15),
(82, 'Belanja Pemeliharaan (Pembelian Bambu dan Kayu)', 155500, 2, '', '2017-02-26', '', 'keluar', 15),
(83, 'Belanja Transpor Mengikuti Kegiatan MGMP PAK di SMP Immanuel Batu (1 orang)', 35000, 2, '', '2017-02-27', '', 'keluar', 15),
(84, 'Belanja Fotocopy Kegiatan Manajemen Sekolah (Media Fotokopi)', 515700, 2, '', '2017-02-27', '', 'keluar', 15),
(85, 'Belanja Transpor Mengikuti Bimtek Pemanfaatan Jejaring Pendidikan di Dinas Pendidikan Kota Batu selama 4 Hari (2 Orang)', 100000, 2, '', '2017-02-27', '', 'keluar', 15),
(86, 'Belanja Transpor Mengikuti Kegiatan MGMP Prakarya (1 orang)', 35000, 2, '', '2017-02-28', '', 'keluar', 15),
(87, 'Belanja Transpor - Transpor Mengantar Anak yang Sakit Bulan Februari 2017', 200000, 2, '', '2017-02-28', '', 'keluar', 15),
(88, 'Belanja Pemeliharaan (Service Speaker)', 70000, 2, '', '2017-02-28', '', 'keluar', 15),
(89, 'Belanja Pemeliharaan (Belanja Pasir, Bata Merah, Semen, Dolocid, dll)', 2390000, 2, '', '2017-02-28', '', 'keluar', 15),
(90, 'Belanja Pembayaran Rekening Koran Februari 2017', 350000, 2, '', '2017-02-28', '', 'keluar', 15),
(91, 'Belanja Makanan dan Minuman Harian Pendidik dan Tenaga Kependidikan Februari 2017 (19x60xRp. 2000)', 2280000, 2, '', '2017-02-28', '', 'keluar', 15),
(92, 'Belanja Fotocopy / Penggandaan Untuk Kegiatan Manajemen Ketatausahaan Bagian Bulan Februari 2017', 1790350, 2, '', '2017-02-28', '', 'keluar', 15),
(93, 'Belanja ATK Februari 2017', 3184000, 2, '', '2017-02-28', '', 'keluar', 15),
(94, 'Belanja Transpor Pembina Pengembangan Diri Februari 2017', 3450000, 2, '', '2017-02-28', '', 'keluar', 15),
(95, 'Tanda Terima Honranium Pegawai Tidak Tetap/PTT bagian Bulan Maret 2017', 5400000, 2, '', '2017-03-01', '', 'keluar', 15),
(96, 'Tanda Terima Honranium Guru Tidak Tetap/GTT bagian Bulan Maret 2017', 4125000, 2, '', '2017-03-01', '', 'keluar', 15),
(97, 'Belanja Pemeliharaan (Pembelian DS 40/40 SE 400 Blanko KW I)', 2010000, 2, '', '2017-03-01', '', 'keluar', 15),
(98, 'Belanja Alat Peraga dan Praktikum Mata Pelajaran IPA', 1423800, 2, '', '2017-03-01', '', 'keluar', 15),
(99, 'Belanja Pemeliharaan (Belanja Retribusi Kebersihan Lingkungan)', 60000, 2, '', '2017-03-02', '', 'keluar', 15),
(100, 'Belanja Transpor Mengikuti Kegiatan Koordinasi Tim Proktor/Help Desk Provinsi Jawa Timur Tahun 2017 di Hotel Victori Batu Selama 3 hari (1 Orang)', 50000, 2, '', '2017-03-02', '', 'keluar', 15),
(101, 'Belanja Transpor Mengikuti Kegiatan Pelatihan Proktor dan Teknisi Ujian Nasional Berbasis Komputer (UNBK) Tahun Pelajaran 2016/2017 (2 orang)', 50000, 2, '', '2017-03-02', '', 'keluar', 15),
(102, 'Belanja Pemeliharaan (Pembelian Paku dan Keni)', 20000, 2, '', '2017-03-04', '', 'keluar', 15),
(103, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-03-04', '', 'keluar', 15),
(104, 'Belanja Transpor Mengikuti Undangan Pelatihan dan Koordinasi Tim Helpdesk Provinsi dan Kota/Kabupaten di Surabaya Suite Hotel selama 4 hari (1 Orang)', 150000, 2, '', '2017-03-06', '', 'keluar', 15),
(105, 'Belanja Pembayaran Rekening Telepon Maret 2017', 335750, 2, '', '2017-03-07', '', 'keluar', 15),
(106, 'Belanja Pembayaran Rekening Air Maret 2017', 1308000, 2, '', '2017-03-07', '', 'keluar', 15),
(107, 'Belanja Pembayaran Rekening Listrik Maret 2017', 1958900, 2, '', '2017-03-07', '', 'keluar', 15),
(108, 'Belanja Pembayaran Rekening Internet Maret 2017', 2248000, 2, '', '2017-03-07', '', 'keluar', 15),
(109, 'Belanja Transpor Mengikuti Pertemuan Forum Komunikasi UKS oleh Dinas Kesehatan Kota Batu Tahun 2017 (1 Orang)', 25000, 2, '', '2017-03-07', '', 'keluar', 15),
(110, 'Belanja ATK untuk Manajemen Ketatausahaan dan Bidang Kurikuum Bagian Bulan Maret 2017', 4174000, 2, '', '2017-03-08', '', 'keluar', 15),
(111, 'Belanja untuk Kegiatan PRAUN (Biaya Cetak Naskah Soal, Sampul, dan Perangkat PraUjian Nasional 2017)', 6575000, 2, '', '2017-03-09', '', 'keluar', 15),
(112, 'Belanja untuk Kegiatan PRAUN (Biaya Cetak LJK, dan Jasa Pemindaian/Scan LJK PraUjian 2017)', 1770000, 2, '', '2017-03-09', '', 'keluar', 15),
(113, 'Belanja Transpor Mengikuti OSN Jenjang SMP/MTs  Tingkat Kota Batu Tahun 2017', 100000, 2, '', '2017-03-09', '', 'keluar', 15),
(114, 'Tanda Terima Honorarium Penguji Ujian Sekolah Praktik Tahun Pelajaran 2016/2017', 2808000, 2, '', '2017-03-10', '', 'keluar', 15),
(115, 'Belanja Konsumsi untuk Kegiataan Ujian Sekolah Praktek Tahun Pelajaran 2016/2017', 2400000, 2, '', '2017-03-10', '', 'keluar', 15),
(116, 'Belanja Fotocopy dan Penggandaan Soal Penilaian Akhir Tahun Kelas IX Tahun 2017', 4290000, 2, '', '2017-03-10', '', 'keluar', 15),
(117, 'Belanja Pemeliharaan / Perbaikan LCD Ruang Kelas', 4950000, 2, '', '2017-03-10', '', 'keluar', 15),
(118, 'Belanja Pemeliharaan (Ongkos Tukang Perbaikan LCD, 2 Orang x 7 Hari)', 1400000, 2, '', '2017-03-10', '', 'keluar', 15),
(119, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-03-11', '', 'keluar', 15),
(120, 'Belanja Transpor Mengikuti Kegiatan MGMP PAK kota Batu (1 orang)', 35000, 2, '', '2017-03-13', '', 'keluar', 15),
(121, 'Belanja Transpor Mengikuti Kegiatan Koordinasi Persiapan Seleksi Sekolah Adiwiyata Tingkat Provinsi Jawa Timur Tahun 2017 (2 Orang)', 50000, 2, '', '2017-03-14', '', 'keluar', 15),
(122, 'Belanja Transpor Mengikuti Kegiatan Penyuluhan Menciptakan Lngkungan Sehat', 25000, 2, '', '2017-03-15', '', 'keluar', 15),
(123, 'Belanja Transpor Mengikuti Kegiatan MGMP Mulok Bahasa Jawa (1orang)', 35000, 2, '', '2017-03-17', '', 'keluar', 15),
(124, 'Belanja Transpor Mengikuti Kegiatan Penggabungan Naskah Soal UASBN (2 Orang)', 70000, 2, '', '2017-03-17', '', 'keluar', 15),
(125, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-03-18', '', 'keluar', 15),
(126, 'Belanja Transporr Mengikuti Training of Trainer FA 2 peserta didik', 50000, 2, '', '2017-03-18', '', 'keluar', 15),
(127, 'Belanja Transpor Mengikuti Kegiatan Kampanya Anti Rokok (2 Peserta Didik)', 50000, 2, '', '2017-03-23', '', 'keluar', 15),
(128, 'Belanja Transpor Menjadi Peserta Kegiatan Informasi P4GN 92 (2 Peserta Didik)', 50000, 2, '', '2017-03-23', '', 'keluar', 15),
(129, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 960000, 2, '', '2017-03-25', '', 'keluar', 15),
(130, 'Belanja Transpor Mengikuti Kegiatan Verifikasi dan Klarifikasi Calon Sekolah Adiwiyata Tingkat Provinsi', 50000, 2, '', '2017-03-27', '', 'keluar', 15),
(131, 'Belanja Cetak Kertas Berlogo untuk Kegiatan Penilaian Tengah Semester dan Penilaian Akhir Tahun (16 Rim x Rp. 125000)', 2000000, 2, '', '2017-03-27', '', 'keluar', 15),
(132, 'Belanja Pemeliharaan (Pembelian Switch HUB 24 Port D-Link)', 750000, 2, '', '2017-03-29', '', 'keluar', 15),
(133, 'Belanja Pembayaran Rekening Koran Maret 2017', 350000, 2, '', '2017-03-31', '', 'keluar', 15),
(134, 'Honorarium Lembur dalam Rangka Update, Verifikasi, Sinkronisasi Data Peserta Didik, Pendidik, dan Tenaga Kependidikan Semester Genap Tahun Pelajaran 2016/2017', 1492500, 2, '', '2017-03-31', '', 'keluar', 15),
(135, 'Belanja Makanan dan Minuman Harian Pendidik dan Tenaga Kependidikan Maret 2017 (4 hari x 40 paket coffee break x Rp. 10000))', 1600000, 2, '', '2017-03-31', '', 'keluar', 15),
(136, 'Belanja Makanan dan Minuman Harian Pendidik dan Tenaga Kependidikan Januari 2017 (22 x 60 x Rp. 2000)', 2640000, 2, '', '2017-03-31', '', 'keluar', 15),
(137, 'Belanja Transport Pembina Pengembangan Diri Bulan Maret 2017', 3450000, 2, '', '2017-03-31', '', 'keluar', 15),
(138, 'Tanda Terima Bantuan Transpor Untuk Peserta Didik Tidak Mampu Bulan Maret 2017', 5850000, 2, '', '2017-03-31', '', 'keluar', 15),
(139, 'Belanja Pemeliharaan (Ongkos Tukang Pengecatan Fasilitas Sekolah)', 800000, 2, '', '2017-03-31', '', 'keluar', 15),
(140, 'Insentif Pengelolaan Laporan Dalam Rangka Penyusunan Laporan Bantuan Operasional Sekolah Bulan Januari s.d Maret 2017', 1350000, 2, '', '2017-03-31', '', 'keluar', 15),
(141, 'Belanja Fotocopy / Penggandaan Untuk Kegiatan Manajemen Ketatausahaan Bagian Bulan Maret 2017', 2480850, 2, '', '2017-03-31', '', 'keluar', 15),
(142, 'Honorarium Pengampuh Jam Tambahan Pembelajaran Intensif Tahap 1', 7800000, 2, '', '2017-03-31', '', 'keluar', 15),
(143, 'Honorarium Pengampuh Jam Tambahan Pembelajaran Intensif Tahap 2', 4700000, 2, '', '2017-03-31', '', 'keluar', 15),
(144, 'Honorarium Pengampuh Jam Tambahan Pembelajaran Intensif Program Khusus Peserta Didik Upper dan Lower', 2500000, 2, '', '2017-03-31', '', 'keluar', 15),
(145, 'Belanja Pemeliharaan (Perbaikan Printer Ruang Guru dan Ganti Cartridge)', 1645000, 2, '', '2017-03-31', '', 'keluar', 15),
(146, 'Tanda Terima Transpor Pembina Untuk Kegiatan Pembinaan Peserta  Olimpiade Siswa Nasional (OSN) Matematika, IPA, dan IPS Tahun 2017', 750000, 2, '', '2017-03-31', '', 'keluar', 15),
(147, 'Belanja Transpor Menggunakan Home Visit', 25000, 2, '', '2017-01-31', '', 'keluar', 15),
(148, 'Nyoba', 2, 2, '', '2017-05-21', '', 'keluar', 15),
(149, 'makan', 10000, 2, '', '2019-01-22', 'beecbee36e486c6957ce1384a9c1529a.jpg', 'keluar', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keluar_masuk_dana`
--
ALTER TABLE `keluar_masuk_dana`
  ADD PRIMARY KEY (`id_kegiatan`),
  ADD KEY `id_jenis_pengeluaran` (`id_dana_kegiatan`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keluar_masuk_dana`
--
ALTER TABLE `keluar_masuk_dana`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keluar_masuk_dana`
--
ALTER TABLE `keluar_masuk_dana`
  ADD CONSTRAINT `fk_id_sekolah3` FOREIGN KEY (`id_sekolah`) REFERENCES `sekolah` (`id_sekolah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
