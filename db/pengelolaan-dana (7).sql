-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2019 at 04:52 PM
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
-- Table structure for table `detail_sub_kegiatan_k2`
--

CREATE TABLE `detail_sub_kegiatan_k2` (
  `id_detail_sub_kegiatan_k2` int(11) NOT NULL,
  `uraian_kegiatan` varchar(255) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `harga_satuan` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `bantuan_operasional_sekolah` enum('pusat','pembelajaran','tns','tms','kelas olahraga') DEFAULT NULL,
  `nominal_bantuan_operasional_sekolah` int(10) DEFAULT NULL,
  `bantuan_lain` enum('subsidi un','bantuan dll','grand sekolah rujukan') DEFAULT NULL,
  `nominal_bantuan_lain` int(10) DEFAULT NULL,
  `id_sub_kegiatan_k2` int(10) NOT NULL,
  `realisasi` int(10) DEFAULT NULL,
  `bukti_transaksi` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_sub_kegiatan_k2`
--

INSERT INTO `detail_sub_kegiatan_k2` (`id_detail_sub_kegiatan_k2`, `uraian_kegiatan`, `jumlah`, `satuan`, `harga_satuan`, `total`, `bantuan_operasional_sekolah`, `nominal_bantuan_operasional_sekolah`, `bantuan_lain`, `nominal_bantuan_lain`, `id_sub_kegiatan_k2`, `realisasi`, `bukti_transaksi`, `status`) VALUES
(1, 'Pengadaan Formulir dan Map Pendaftarannnnn', 20, 'Bendel', 500, 10000, 'pusat', 3000000, NULL, 0, 1, 290000, NULL, '0'),
(2, 'tambahan', 0, '', 0, 0, NULL, NULL, NULL, NULL, 1, 90000, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `form_k3`
--

CREATE TABLE `form_k3` (
  `id_dana_kegiatan` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `jenis_kegiatan` enum('pemasukkan','pembayaran','pembelian','') NOT NULL,
  `pemasukkan` int(11) NOT NULL DEFAULT '0',
  `pengeluaran` int(11) NOT NULL DEFAULT '0',
  `nama_toko` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `id_sekolah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_k3`
--

INSERT INTO `form_k3` (`id_dana_kegiatan`, `nama_kegiatan`, `jenis_kegiatan`, `pemasukkan`, `pengeluaran`, `nama_toko`, `tanggal`, `id_sekolah`) VALUES
(1, 'BONAS Triuwal 1 Tahun 2018', 'pemasukkan', 200000000, 0, '', '2018-03-01', 15),
(2, 'Fotocopy Ujian Sekolah', 'pembayaran', 0, 250000, '', '2018-02-06', 15),
(3, 'tes3', 'pembelian', 0, 140000, 'louise shop', '2019-04-01', 15),
(6, 'tes212', 'pembelian', 0, 220000, 'toko mantap djiwa', '2019-03-20', 15),
(7, 'BOSDA Triwulan 1 Tahun 2018', 'pemasukkan', 165000000, 0, '', '2018-03-01', 15);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pengguna`
--

CREATE TABLE `jenis_pengguna` (
  `id_jenis_pengguna` int(11) NOT NULL,
  `nama_jenis_pengguna` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_pengguna`
--

INSERT INTO `jenis_pengguna` (`id_jenis_pengguna`, `nama_jenis_pengguna`) VALUES
(1, 'admin_dinas'),
(2, 'bendahara_sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_sekolah`
--

CREATE TABLE `jenis_sekolah` (
  `id_jenis_sekolah` int(11) NOT NULL,
  `nama_jenis_sekolah` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_sekolah`
--

INSERT INTO `jenis_sekolah` (`id_jenis_sekolah`, `nama_jenis_sekolah`) VALUES
(0, 'ADM'),
(1, 'SD'),
(2, 'SMP');

-- --------------------------------------------------------

--
-- Table structure for table `penerimaan_k1`
--

CREATE TABLE `penerimaan_k1` (
  `id_penerimaan` int(10) NOT NULL,
  `uraian` varchar(255) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `jenis_penerimaan` enum('sisa tahun lalu','pendapatan rutin','bantuan operasional sekolah','bantuan','pendapatan asli sekolah') NOT NULL,
  `id_sekolah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran_k1`
--

CREATE TABLE `pengeluaran_k1` (
  `id_pengeluaran` int(10) NOT NULL,
  `uraian` varchar(255) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `jenis_pengeluaran` enum('program sekolah','belanja lainnya') NOT NULL,
  `id_sekolah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran_k1`
--

INSERT INTO `pengeluaran_k1` (`id_pengeluaran`, `uraian`, `jumlah`, `jenis_pengeluaran`, `id_sekolah`) VALUES
(1, 'Pengembangan Standar Kompetensi Lulusan', 4000000, 'program sekolah', 15),
(2, 'Penerimaan Peserta Didik Baru', 20, 'belanja lainnya', 15),
(3, 'tes', 10000, 'belanja lainnya', 15),
(4, 'arema', 1000000, 'belanja lainnya', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_pengguna` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
  `id_jenis_pengguna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `username`, `nama_pengguna`, `email`, `password`, `id_sekolah`, `id_jenis_pengguna`) VALUES
(1, 'admin', 'ADMIN DISPENDIK BATU', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 0, 1),
(2, 'sdcitrabunda', 'BENDAHARA SD CITRA BUNDA', 'sdcitrabunda@gmail.com', '9b5f61558162fdef8128ddd79758155a', 28, 2),
(3, 'sditibnuhajar', 'BENDAHARA SD - IT IBNU HAJAR', 'sditibnuhajar@gmail.com', '192c40e4497ab948fafd1271cc4b047b', 101, 2),
(4, 'sdimmanuel', 'BENDAHARA SD IMMANUEL', 'sdimmanuel@gmail.com', 'e5f7a672086110a7fd93077432862bd2', 29, 2),
(5, 'sdintegral', 'BENDAHARA SD INTEGRAL ALFATTAH', 'sdintegral@gmail.com', 'd84b5ba287f053a80a96e5e56854a384', 30, 2),
(6, 'sdislamalhuda', 'BENDAHARA SD ISLAM AL HUDA', 'sdislamalhuda@gmail.com', '7d8dbd1826b8b869fd77245067889446', 31, 2),
(7, 'sdksangtimur', 'BENDAHARA SD K SANG TIMUR', 'sdksangtimur@gmail.com', 'ac64ffee3c291e18c8217ae7edd3d42f', 32, 2),
(8, 'sdmuhammdiyah4', 'BENDAHARA SD MUHAMMADIYAH 04 BATU', 'sdmuhammdiyah4@gmail.com', 'da86e46c5f569a52702c6789a444d949', 33, 2),
(9, 'sdmuhammadiyah5', 'BENDAHARA SD MUHAMMADIYAH 05 BATU', 'sdmuhammadiyah5@gmail.com', '60b3f36be2509bfd690e2e6b5b3645ae', 34, 2),
(10, 'sdnegeribeji1', 'BENDAHARA SD NEGERI BEJI 01', 'sdnegeribeji1@gmail.com', '89732d06d67ff4e1ce27d0e8d278f406', 35, 2),
(11, 'sdnegeribeji2', 'BENDAHARA SD NEGERI BEJI 02', 'sdnegeribeji2@gmail.com', 'b4f2c92f91359e74fcc876df48b035eb', 36, 2),
(12, 'sdnegeribeji3', 'BENDAHARA SD NEGERI BEJI 03', 'sdnegeribeji3@gmail.com', '4cb8ccf28c929669340ebf2383ec3572', 37, 2),
(13, 'sdnegeribulukerto1', 'BENDAHARA SD NEGERI BULUKERTO 01', 'sdnegeribulukerto1@gmail.com', '9b174b228855562b20071d97cebba226', 38, 2),
(14, 'sdnegeribulukerto2', 'BENDAHARA SD NEGERI BULUKERTO 02', 'sdnegeribulukerto2@gmail.com', '30367fa60d9a025c9549b485286c20c8', 39, 2),
(15, 'sdnegeribulukerto3', 'BENDAHARA SD NEGERI BULUKERTO 03', 'sdnegeribulukerto3@gmail.com', '80fa46f9d4021f753d8c586b65033b0c', 105, 2),
(16, 'sdnegeribumiaji1', 'BENDAHARA SD NEGERI BUMIAJI 01', 'sdnegeribumiaji1@gmail.com', '3f5043c720145e48d20d74a2ceddbbfe', 40, 2),
(17, 'sdnegeribumiaji2', 'BENDAHARA SD NEGERI BUMIAJI 02', 'sdnegeribumiaji2@gmail.com', 'e43277ecb80f4b564ce025335ace4de9', 41, 2),
(18, 'sdnegeridadaprejo1', 'BENDAHARA SD NEGERI DADAPREJO 01', 'sdnegeridadaprejo1@gmail.com', 'a51432c9124c459189e4e2265a7cc27e', 42, 2),
(19, 'sdnegeridadaprejo2', 'BENDAHARA SD NEGERI DADAPREJO 02', 'sdnegeridadaprejo2@gmail.com', '565ec14305120a221a2066ef1c7edac5', 43, 2),
(20, 'sdnegerigiripurno1', 'BENDAHARA SD NEGERI GIRIPURNO 01', 'sdnegerigiripurno1@gmail.com', 'd24c16c1e4a8ce571e17d2d057c381cf', 44, 2),
(21, 'sdnegerigiripurno2', 'BENDAHARA SD NEGERI GIRIPURNO 02', 'sdnegerigiripurno2@gmail.com', '0c50d6d0a6e34baf33aff0694138a3a3', 46, 2),
(22, 'sdnegerigunungsari1', 'BENDAHARA SD NEGERI GUNUNGSARI 01', 'sdnegerigunungsari1@gmail.com', 'ca703030dc6a4a400e72aaff735f9787', 47, 2),
(24, 'sdnegerigunungsari2', 'BENDAHARA SD NEGERI GUNUNGSARI 02', 'sdnegerigunungsari2@gmail.com', 'd9cbd343492b70cbafa1ff8854ba880d', 48, 2),
(25, 'sdnegerigunungsari3', 'BENDAHARA SD NEGERI GUNUNGSARI 03', 'sdnegerigunungsari3@gmail.com', 'e095a3431ebc04388864da3ce031378c', 49, 2),
(26, 'sdnegerigunungsari4', 'BENDAHARA SD NEGERI GUNUNGSARI 04', 'sdnegerigunungsari4@gmail.com', '376d80ff0fb23c10fae7f774b85661a0', 50, 2),
(28, 'sdnegerigiripurno3', 'BENDAHARA SD NEGERI GIRIPURNO 03', 'sdnegerigiripurno3@gmail.com', '6526e41e3577a333e75ea43881437d72', 46, 2),
(30, 'sdnegerijunrejo1', 'BENDAHARA SD NEGERI JUNREJO 01', 'sdnegerijunrejo1@gmail.com', 'dceab03f09bea19d9bf995bb34668bc2', 51, 2),
(31, 'sdnegerijunrejo2', 'BENDAHARA SD NEGERI JUNREJO 02', 'sdnegerijunrejo2@gmail.com', '3fa1364cf5c8644427897f8342a25c47', 52, 2),
(32, 'sdnegerimojorejo1', 'BENDAHARA SD NEGERI MOJOREJO 01', 'sdnegerimojorejo1@gmail.com', 'fad29fbffbee32987641c87f42233222', 53, 2),
(33, 'sdnegerimojorejo2', 'BENDAHARA SD NEGERI MOJOREJO 02', 'sdnegerimojorejo2@gmail.com', 'c9a334b94024fd0820495cd54c414a2d', 54, 2),
(34, 'sdnegeringaglik1', 'BENDAHARA SD NEGERI NGAGLIK 01', 'sdnegeringaglik1@gmail.com', '0ec1f2369b009725ef49b8ea795fe566', 55, 2),
(36, 'sdnegeringaglik2', 'BENDAHARA SD NEGERI NGAGLIK 2', 'sdnegeringaglik2@gmail.com', 'b0424ac76a5c5ccd2f70f09897fbbde0', 58, 2),
(37, 'sdnegeringaglik3', 'BENDAHARA SD NEGERI NGAGLIK 03', 'sdnegeringaglik3@gmail.com', '3cef54fe04687ce7e02ecba3ed75c187', 56, 2),
(38, 'sdnegeringaglik4', 'BENDAHARA SD NEGERI NGAGLIK 04', 'sdnegeringaglik4@gmail.com', 'cdaf96f5497e20b469ae8efeb7eaa86f', 57, 2),
(39, 'sdnegeriorooroombo3', 'BENDAHARA SD NEGERI ORO-ORO OMBO 03', 'sdnegeriorooroombo3@gmail.com', '6023aa79ae936b8783ee3a52bfb3bc5a', 60, 2),
(40, 'sdnegeriorooroombo1', 'BENDAHARA SD NEGERI ORO-ORO OMBO 01', 'sdnegeriorooroombo1@gmail.com', 'd2724e5ad30b6f308d7e8839334f3818', 60, 2),
(41, 'sdnegeriorooroombo2', 'BENDAHARA SD NEGERI ORO-ORO OMBO 02', 'sdnegeriorooroombo2@gmail.com', 'd190de0ee4a41a0b945b02fa4f87d785', 61, 2),
(42, 'sdnegeripandanrejo1', 'BENDAHARA SD NEGERI PANDANREJO 01', 'sdnegeripandanrejo1@gmail.com', '40a0625b75bfc0791978c8c641a85282', 62, 2),
(43, 'sdnegeripandanrejo2', 'BENDAHARA SD NEGERI PANDANREJO 02', 'sdnegeripandanrejo2@gmail.com', 'e2b2d7c25a3620fc51f1f8861b50a705', 63, 2),
(44, 'sdnegeripendem1', 'BENDAHARA SD NEGERI PENDEM 01', 'sdnegeripendem1@gmail.com', 'a7dc01cc3100a0a6483488c7f433caff', 64, 2),
(45, 'sdnegeripendem2', 'BENDAHARA SD NEGERI PENDEM 02', 'sdnegeripendem2@gmail.com', '97cc57cac237adf5208ff189d930c9ff', 65, 2),
(46, 'sdnegeripesanggrahan1', 'BENDAHARA SD NEGERI PESANGGRAHAN 01', 'sdnegeripesanggrahan1@gmail.com', 'fbce6a99d0222b9522b9302dd129a707', 66, 2),
(47, 'sdnegeripesanggrahan2', 'BENDAHARA SD NEGERI PESANGGRAHAN 02', 'sdnegeripesanggrahan2@gmail.com', '78f745b429c36992144d1539604c34fb', 67, 2),
(48, 'sdnegeripunten1', 'BENDAHARA SD NEGERI PUNTEN 01', 'sdnegeripunten1@gmail.com', 'b0ee705934b1a7feb3ccd29d659d85d4', 68, 2),
(49, 'sdnegeripunten2', 'BENDAHARA SD NEGERI PUNTEN 02', 'sdnegeripunten2@gmail.com', '8a4dad4b40d62c37b6bca3f242bac3dd', 69, 2),
(50, 'sdnegerisidomulyo1', 'BENDAHARA SD NEGERI SIDOMULYO 01', 'sdnegerisidomulyo1@gmail.com', 'c934de6c49477354755d2812a70016e0', 70, 2),
(51, 'sdnegerisidomulyo2', 'BENDAHARA SD NEGERI SIDOMULYO 02', 'sdnegerisidomulyo2@gmail.com', 'b354c9e3cb7cf65e58652b6c017490fd', 71, 2),
(52, 'sdnegerisidomulyo3', 'BENDAHARA SD NEGERI SIDOMULYO 03', 'sdnegerisidomulyo3@gmail.com', 'f710af12ba5353171c2b8d1d783cb536', 72, 2),
(53, 'sdnegerisisir1', 'BENDAHARA SD NEGERI SISIR 01', 'sdnegerisisir1@gmail.com', 'f0c7227c124197f4127a68e06e53a158', 73, 2),
(54, 'sdnegerisisir2', 'BENDAHARA SD NEGERI SISIR 02', 'sdnegerisisir2@gmail.com', 'c5e6320a3b699914faab680ff5d0931b', 74, 2),
(55, 'sdnegerisisir3', 'BENDAHARA SD NEGERI SISIR 03', 'sdnegerisisir3@gmail.com', 'c285bc0c4f138f1a823c20c699fb3c8e', 76, 2),
(57, 'sdnegerisisir4', 'BENDAHARA SD NEGERI SISIR 04', 'sdnegerisisir4@gmail.com', '2265f0598e230124748633905abd2c03', 77, 2),
(58, 'sdnegerisisir5', 'BENDAHARA SD NEGERI SISIR 05', 'sdnegerisisir5@gmail.com', '45d5d7e2f23f4313ceb91a91c18106ae', 78, 2),
(59, 'sdnegerisisir6', 'BENDAHARA SD NEGERI SISIR 06', 'sdnegerisisir6@gmail.com', 'c2b10879b760d08b57f828001feba742', 79, 2),
(60, 'sdnegerisonggokerto1', 'BENDAHARA SD NEGERI SONGGOKERTO 01', 'sdnegerisonggokerto1@gmail.com', '7d05aa38f2e9536094405cc7e630fd45', 80, 2),
(61, 'sdnegerisonggokerto2', 'BENDAHARA SD NEGERI SONGGOKERTO 02', 'sdnegerisonggokerto2@gmail.com', '4274088edaa406809fbcd87f415d61ba', 81, 2),
(62, 'sdnegerisonggokerto3', 'BENDAHARA SD NEGERI SONGGOKERTO 03', 'sdnegerisonggokerto3@gmail.com', 'ae1c80c6fc37c8751607b159a1c10fcd', 82, 2),
(63, 'sdnegerisumberejo1', 'BENDAHARA SD NEGERI SUMBEREJO 01', 'sdnegerisumberejo1@gmail.com', '8ab7502250ff4378b50d9c6d8eabce9c', 83, 2),
(64, 'sdnegerisumberejo2', 'BENDAHARA SD NEGERI SUMBEREJO 02', 'sdnegerisumberejo2@gmail.com', '9171e9e8b4821695fb4e457d20f5a7d8', 84, 2),
(65, 'sdnegerisumberejo3', 'BENDAHARA SD NEGERI SUMBEREJO 03', 'sdnegerisumberejo3@gmail.com', '73509ea98866a3837ceadee2feb52c75', 85, 2),
(66, 'sdnegerisumbergondo1', 'BENDAHARA SD NEGERI SUMBERGONDO 01', 'sdnegerisumbergondo1@gmail.com', '4f34bb7311db23fcd226e0b94f2c3226', 86, 2),
(67, 'sdnegerisumbergondo2', 'BENDAHARA SD NEGERI SUMBERGONDO 02', 'sdnegerisumbergondo2@gmail.com', '72c94e3eea7e76c7b26f46e35802cec6', 104, 2),
(68, 'sdnegeritemas1', 'BENDAHARA SD NEGERI TEMAS 01', 'sdnegeritemas1@gmail.com', '249937ab582f6c2991d31df454c7e4f2', 87, 2),
(69, 'sdnegeritemas2', 'BENDAHARA SD NEGERI TEMAS 02', 'sdnegeritemas2@gmail.com', '8a4cee9363304929a8165200587a05f3', 88, 2),
(70, 'sdnegeritlekung1', 'BENDAHARA SD NEGERI TLEKUNG 01', 'sdnegeritlekung1@gmail.com', '5fc8addb2fb05687953e7084eafb6056', 89, 2),
(71, 'sdnegeritlekung2', 'BENDAHARA SD NEGERI TLEKUNG 02', 'sdnegeritlekung2@gmail.com', 'e3e7374889fc4b9961c3b2a335bcde15', 90, 2),
(72, 'sdnegeritorongrejo1', 'BENDAHARA SD NEGERI TORONGREJO 01', 'sdnegeritorongrejo1@gmail.com', 'dfc87558030b3fb128f8916a21d5dca2', 91, 2),
(73, 'sdnegeritorongrejo2', 'BENDAHARA SD NEGERI TORONGREJO 02', 'sdnegeritorongrejo2@gmail.com', '9839400014781574188c01b10f1bc4a7', 93, 2),
(74, 'sdnegeritorongrejo3', 'BENDAHARA SD NEGERI TORONGREJO 03', 'sdnegeritorongrejo3@gmail.com', '4f960f5a7cef079495e6704a634651e7', 94, 2),
(75, 'sdnegeritulungrejo1', 'BENDAHARA SD NEGERI TULUNGREJO 01', 'sdnegeritulungrejo1@gmail.com', '4add3a151746176958a17525ed5147d6', 95, 2),
(76, 'sdnegeritulungrejo2', 'BENDAHARA SD NEGERI TULUNGREJO 02', 'sdnegeritulungrejo2@gmail.com', '9632c5741396b2e5f04c74959975dfe9', 96, 2),
(77, 'sdnegeritulungrejo3', 'BENDAHARA SD NEGERI TULUNGREJO 03', 'sdnegeritulungrejo3@gmail.com', '6d40d244679be6be928bf72e7d67999c', 97, 2),
(78, 'sdnegeritulungrejo4', 'BENDAHARA SD NEGERI TULUNGREJO 04', 'sdnegeritulungrejo4@gmail.com', '894355e366784d9f67de99321e9a0d41', 98, 2),
(79, 'sdnegeritulungrejo5', 'BENDAHARA SD NEGERI TULUNGREJO 05', 'sdnegeritulungrejo5@gmail.com', '2f7903749d6abb1e88e01d942a6b398b', 99, 2),
(80, 'sdplusalirsyad', 'BENDAHARA SD PLUS AL IRSYAD', 'sdplusalirsyad@gmail.com', '50a92ff9e19d09bfd9f81fbb62d5e330', 100, 2),
(81, 'sdisabilulkhoir', 'BENDAHARA SDI SABILUL KHOIR BEJI', 'sdisabilulkhoir@gmail.com', '73180245e4aa9aa2e3aaa976041a528c', 102, 2),
(82, 'sdittahfidz', 'BENDAHARA SDIT TAHFIDZ AL MUNAWWAR', 'sdittahfidz@gmail.com', '7094de7d20d9fe73d7a622149ef5c1e7', 103, 2),
(83, 'smpahmadyani', 'BENDAHARA SMP AHMAD YANI', 'smpahmadyani@gmail.com', '5acb6b886f097d96549707b0627117fb', 1, 2),
(84, 'smpalorsyad', 'BENDAHARA SMP AL IRSYAD D/H CENDEKIA', 'smpalorsyad@gmail.com', 'cdb8e86d1376818cd2c924bd3af35efc', 2, 2),
(85, 'smpalizzah', 'BENDAHARA SMP AL IZZAH BATU', 'smpalizzah@gmail.com', '63cb9f62bbfb00cb9d61cb481b31d331', 3, 2),
(86, 'smparjuno', 'BENDAHARA SMP ARJUNO', 'smparjuno@gmail.com', 'b60336b7d76db0adae0d0697c9eb1929', 4, 2),
(87, 'smpassalam', 'BENDAHARA SMP AS SALAM', 'smpassalam@gmail.com', 'f638f3384684db71402e5db585fca063', 5, 2),
(88, 'smpdarushsholihin', 'BENDAHARA SMP DARUSH SHOLIHIN', 'smpdarushsholihin@gmail.com', 'df41c973b9b628391dd465030ac2af5b', 6, 2),
(89, 'smpdipopnegoro', 'BENDAHARA SMP DIPONEGORO JUNREJO BATU', 'smpdipopnegoro@gmail.com', 'a7d96bcf3054d6df68048e30db553e95', 7, 2),
(90, 'smpimmanuel', 'BENDAHARA SMP IMMANUEL', 'smpimmanuel@gmail.com', '214a3f5c58972edf184f4b1c876d598d', 8, 2),
(91, 'smpislam1', 'BENDAHARA SMP ISLAM 01', 'smpislam1@gmail.com', '916a41169f02719f29a49772940a2d74', 9, 2),
(92, 'smpislamabughonaim', 'BENDAHARA SMP ISLAM ABU GHONAIM', 'smpislamabughonaim@gmail.com', 'c69d2c3ce33b47e40c3e0b5616ea4906', 10, 2),
(93, 'smpkwidyatama', 'BENDAHARA SMP K WIDYATAMA', 'smpkwidyatama@gmail.com', '45606c57720b76798d32c3671ea3bca0', 11, 2),
(94, 'smpmaarif', 'BENDAHARA SMP MAARIF BATU', 'smpmaarif@gmail.com', '6a89874e2cbf0b6aaa1cad0dde51a5d9', 12, 2),
(95, 'smpmuhammadiyah2', 'BENDAHARA SMP MUHAMMADIYAH 02', 'smpmuhammadiyah2@gmail.com', '3900b8f5172506a75a17be93b7756b36', 13, 2),
(96, 'smpmuhammadiyah8', 'BENDAHARA SMP MUHAMMADIYAH 08', 'smpmuhammadiyah8@gmail.com', '3866d9479dce98b92b175bfa66f9517e', 14, 2),
(97, 'smpn1batu', 'BENDAHARA SMP NEGERI 01 BATU', 'smpn1batu@gmail.com', 'c316ad1bc1c14d222612aee0dbfb152a', 15, 2),
(98, 'smpn2batu', 'BENDAHARA SMP NEGERI 02 BATU', 'smpn2batu@gmail.com', '5a4fca3bb3798ec089e9df17ebad9b2d', 16, 2),
(99, 'smpn3batu', 'BENDAHARA SMP NEGERI 03 BATU', 'smpn3batu@gmail.com', '671178b1d6c235e2a767f0094799298e', 17, 2),
(100, 'smpn4batu', 'BENDAHARA SMP NEGERI 04 BATU', 'smpn4batu@gmail.com', 'a3500b82e4a4e0698b72d03b122bc476', 18, 2),
(101, 'smpn5batu', 'BENDAHARA SMP NEGERI 05 BATU', 'smpn5batu@gmail.com', '5074dbf855565637ab6c4b85fe675e97', 19, 2),
(102, 'smpn6batu', 'BENDAHARA SMP NEGERI 06 BATU', 'smpn6batu@gmail.com', 'bbad5a1a1be6b6704d95d8ba7d709ff9', 20, 2),
(103, 'smppgri1', 'BENDAHARA SMP PGRI 01', 'smppgri1@gmail.com', '06372093c309623b3bd5e8d6bd7d37c6', 21, 2),
(104, 'smppgri2', 'BENDAHARA SMP PGRI 02 BATU', 'smppgri2@gmail.com', 'ae1d50a679775c079d1fb75e7fe9eddc', 22, 2),
(105, 'smpradenpatah', 'BENDAHARA SMP RADEN PATAH', 'smpradenpatah@gmail.com', 'ad90b6dc453cef4dfb48330542a98771', 23, 2),
(106, 'smpsolaiman', 'BENDAHARA SMP SOLAIMAN', 'smpsolaiman@gmail.com', '8e1886534f31a39f5675dd78ca99a15b', 24, 2),
(107, 'smptamansiswa', 'BENDAHARA SMP TAMANSISWA', 'smptamansiswa@gmail.com', '4358104bbc4233d8b2ffde64167d646d', 25, 2),
(108, 'smpnsatuatapgunungsari4', 'BENDAHARA SMPN SATU ATAP GUNUNGSARI 04', 'smpnsatuatapgunungsari4@gmail.com', '52c229bfe0e91417a645e9295fadd420', 26, 2),
(109, 'smpnsatuatappesanggrahan2', 'BENDAHARA SMPN SATU ATAP PESANGGRAHAN 2', 'smpnsatuatappesanggrahan2@gmail.com', '2749975e01cfb1ac5f1ddce77f591465', 27, 2),
(110, 'polinema', 'polinema', 'polinema@yahoo.com', '9f969ee98bf12a7a7313383a41d7c363', 106, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `id_jenis_sekolah` int(11) NOT NULL,
  `npsn` int(11) NOT NULL,
  `id_status_sekolah` int(11) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kepala_sekolah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id_sekolah`, `nama_sekolah`, `id_jenis_sekolah`, `npsn`, `id_status_sekolah`, `kecamatan`, `alamat`, `kepala_sekolah`) VALUES
(0, 'Dinas Pendidikan', 0, 0, 0, 'Batu', 'Jl. Panglima Sudirman 507, Gedung A Lantai 2 Balaikota Among Tani', ''),
(1, 'SMP AHMAD YANI', 2, 20536792, 2, 'Batu', 'Jl. Wukir VII', 'Takim, S.pd'),
(2, 'SMP AL IRSYAD D/H CENDEKIA', 2, 20539423, 2, 'Junrejo', 'Jl. Mojowarno 01', 'Ahmad Chandra Pradana'),
(3, 'SMP AL IZZAH BATU', 2, 20539424, 2, 'Batu', 'Jl. INDRAGIRI GG PANGKUR NO 78 KOTA BATU', 'Aziz Effendy'),
(4, 'SMP ARJUNO', 2, 20536793, 2, 'Bumiaji', 'Jl. Raya Wonorejo', 'Nurhayati'),
(5, 'SMP AS SALAM', 2, 20536794, 2, 'Junrejo', 'Jl. Makam 30 RT3 RW4', 'Ali Mahmudi'),
(6, 'SMP DARUSH SHOLIHIN', 2, 20535795, 2, 'Batu', 'Jl. Suropati 139', 'Sugeng Subagya'),
(7, 'SMP DIPONEGORO JUNREJO BATU', 2, 20536796, 2, 'Junrejo', 'Jl. Raya Junrejo 3', 'Yuni Purwaningsih'),
(8, 'SMP IMMANUEL', 2, 20536814, 2, 'Batu', 'Jl. Wukir 01', 'Ratnawati Mistri Diani'),
(9, 'SMP ISLAM 01', 2, 20536815, 2, 'Batu', 'Jl. Wr. Supratman 6', 'Subandi'),
(10, 'SMP ISLAM ABU GHONAIM', 2, 69964725, 2, 'Bumiaji', 'Jl. Abdul Ghonaim NO. 37', 'Farida Kusumawaty'),
(11, 'SMP K WIDYATAMA', 2, 20536845, 2, 'Batu', 'Jalan Panglima Sudirman No. 59', 'Agatha Wayan Oka Udiyani'),
(12, 'SMP MAARIF BATU', 2, 20536832, 2, 'Batu', 'Batu', 'Supa\'at'),
(13, 'SMP MUHAMMADIYAH 02', 2, 20536833, 2, 'Batu', 'Jl. Bukit Berbunga 175', 'Mohamad Samsudi'),
(14, 'SMP MUHAMMADIYAH 08', 2, 20536834, 2, 'Batu', 'Jl. Welirag 17', 'Edy Susanto'),
(15, 'SMP NEGERI 01 BATU', 2, 20536839, 1, 'Bumiaji', 'Jl. KH. Agus Salim 55', 'Bambang Irawa, S.pd., M. Pd.'),
(16, 'SMP NEGERI 02 BATU', 2, 20536840, 1, 'Batu', 'Sisir Batu', 'Barokah Santoso'),
(17, 'SMP NEGERI 03 BATU', 2, 20536841, 1, 'Junrejo', 'Jl. Ir Soekarno NO. 8', 'Sulistyah'),
(18, 'SMP NEGERI 04 BATU', 2, 20536842, 1, 'Bumiaji', 'Jln. Diponegoro X / No. 18 RT.4 RW.1 Tulungrejo', 'Tatik Ismiati'),
(19, 'SMP NEGERI 05 BATU', 2, 20531661, 1, 'Bumiaji', 'Dsn. Lemah Putih', 'Suprapto Rasid'),
(20, 'SMP NEGERI 06 BATU', 2, 20551662, 1, 'Bumiaji', 'Jl. Raya Giripurho 284', 'Budi Prasetyo'),
(21, 'SMP PGRI 01', 2, 20539426, 2, 'Batu', 'Jl. Arjuno 40 E Kota Batu', 'Erfa Diana'),
(22, 'SMP PGRI 02 BATU', 2, 20536835, 2, 'Bumiaji', 'Jl. Raya Pandanrejo No. 1A', 'Mochamad Syamsoedin'),
(23, 'SMP RADEN PATAH', 2, 20536836, 2, 'Batu', 'Jl. Bukit Berbunga 261', 'Triono'),
(24, 'SMP SOLAIMAN', 2, 20536837, 2, 'Junrejo', 'Jl. Raya Beji 133 Po. Box 2', 'Mistiani'),
(25, 'SMP TAMANSISWA', 2, 20536838, 2, 'Batu', 'Jl. Kh Agus Salim 45 Batu', 'Onyka Abdillah'),
(26, 'SMPN SATU ATAP GUNUNGSARI 04', 2, 20539427, 1, 'Bumiaji', 'Jl. Argomulyo No.20 Brau', 'Henu Lismiyati'),
(27, 'SMPN SATU ATAP PESANGGRAHAN 2', 2, 20574662, 1, 'Batu', 'Jl. Cempaka Atas No 01', 'Sudiyono'),
(28, 'SD CITRA BUNDA', 1, 20536873, 2, 'Batu', 'Jl. Sudiro 12', 'Eny Mudyowati'),
(29, 'SD IMMANUEL', 1, 20536874, 2, 'Batu', 'Jl. Wukir Batu ', 'Kuswati'),
(30, 'SD INTEGRAL ALFATTAH', 1, 69974458, 2, 'Batu', 'Jl. Cemara Intan Gg. II Kampung Ladu RT.04 ', 'Wawan Wahidin'),
(31, 'SD ISLAM AL HUDA', 1, 20536875, 2, 'Batu', 'Jl. Abdul Gani Atas', 'Zaitun Sulaiman, S. Pd'),
(32, 'SD K SANG TIMUR', 1, 20539422, 2, 'Batu', 'Jl. Panglima Sudirman 59 A', 'Sr. Celine Marie Pij - Lucia Ardiyani'),
(33, 'SD MUHAMMADIYAH 04 BATU', 1, 20536860, 2, 'Batu', 'Jl. Wlirang 17', 'Mariani'),
(34, 'SD MUHAMMADIYAH 05 BATU', 1, 20536847, 2, 'Bumiaji', 'Jl. Masjid 14 Banaran', 'Supriyanto'),
(35, 'SD NEGERI BEJI 01', 1, 20536850, 1, 'Junrejo', 'Jl. Ir SOEKARNO (Ex. Jl. Raya Beji 42)', 'Mariatul Kiftiyah'),
(36, 'SD NEGERI BEJI 02', 1, 20536851, 1, 'Junrejo', 'Jl. Sarimun V', 'Sih Waluyo Isham'),
(37, 'SD NEGERI BEJI 03', 1, 20536852, 1, 'Junrejo', 'Jl. Sarimun V', 'Sih Waluyo Isham'),
(38, 'SD NEGERI BULUKERTO 01', 1, 20536853, 1, 'Bumiaji', 'Jl. Kenanga', 'Sukoyo'),
(39, 'SD NEGERI BULUKERTO 02', 1, 20536854, 1, 'Bumiaji', 'Jl. Imam Sujono 67', 'Sulistin'),
(40, 'SD NEGERI BUMIAJI 01', 1, 20536856, 1, 'Bumiaji', 'Jl. Abu Ghonaim 31', 'Sedarmiyati'),
(41, 'SD NEGERI BUMIAJI 02', 1, 20536857, 1, 'Bumiaji', 'Jl. Kastubi 01', 'Lesma\'un'),
(42, 'SD NEGERI DADAPREJO 01', 1, 20536858, 1, 'Junrejo', 'Jl. Martorejo 1A', 'Suparmi'),
(43, 'SD NEGERI DADAPREJO 02', 1, 20536859, 1, 'Junrejo', 'Jl. Martorejo', 'Irul Siti Sumarni'),
(44, 'SD NEGERI GIRIPURNO 01', 1, 20536876, 1, 'Bumiaji', 'Jl. Raya Giripurno 221', 'Wahyudi Heri Purwono'),
(45, 'SD NEGERI GIRIPURNO 02', 1, 20536877, 1, 'Bumiaji', 'Jl. Arjuno No 9', 'Erna inarti Ningsih'),
(46, 'SD NEGERI GIRIPURNO 03', 1, 20536878, 1, 'Bumiaji', 'Jl. Indrokilo No 01', 'Ngarni\'ayah'),
(47, 'SD NEGERI GUNUNGSARI 01', 1, 20536897, 1, 'Bumiaji', 'Jl. Brumbung 73', 'Lilis Iswanti'),
(48, 'SD NEGERI GUNUNGSARI 02', 1, 20536898, 1, 'Bumiaji', 'Jl. Wongso 45 Pagergunung', 'Winarto, S. Pd.'),
(49, 'SD NEGERI GUNUNGSARI 03', 1, 20536899, 1, 'Bumiaji', 'Dsn. Kandangan', 'Asri Suprihatin'),
(50, 'SD NEGERI GUNUNGSARI 04', 1, 20536900, 1, 'Bumiaji', 'Jl. Argomulyo 20 Brau', 'Indrayanto'),
(51, 'SD NEGERI JUNREJO 01', 1, 20536901, 1, 'Junrejo', 'Jl. Hasanudin 57', 'Sri Winarti'),
(52, 'SD NEGERI JUNREJO 02', 1, 20536903, 1, 'Junrejo', 'Jl. Raya Junrejo 6', 'Ismiwati'),
(53, 'SD NEGERI MOJOREJO 01', 1, 20536904, 1, 'Junrejo', 'Jl. Mojopahit 02', 'Sri Wahyuni'),
(54, 'SD NEGERI MOJOREJO 02', 1, 20536905, 1, 'Junrejo', 'Jl Masjid No 23', 'Subadiyo'),
(55, 'SD NEGERI NGAGLIK 01', 1, 20536906, 1, 'Batu', 'Jl. Abdul Rahman No 23', 'Ninit Catur Meindyawati'),
(56, 'SD NEGERI NGAGLIK 03', 1, 20536907, 1, 'Batu', 'Jl. Abdul Gani IV / 29', 'Masykur, S.ag'),
(57, 'SD NEGERI NGAGLIK 04', 1, 20536908, 1, 'Batu', 'Jl Darsono Barat 27', 'Suyatun'),
(58, 'SD NEGERI NGAGLIK 2', 1, 20539420, 1, 'Batu', 'Jl. Ikhwan Hadi no 41', 'Nur Samsul Ma\'arif'),
(59, 'SD NEGERI ORO-ORO OMBO 03', 1, 20536895, 1, 'Batu', 'Jl. Tvri RT 03 RW 10 Dresel', 'Rini Rukmawti, S.Pd'),
(60, 'SD NEGERI ORO-ORO OMBO 01', 1, 20536909, 1, 'Batu', 'Jl. Raya Oro-oro Ombo', 'Hariono'),
(61, 'SD NEGERI ORO-ORO OMBO 02', 1, 20536896, 1, 'Batu', 'Jl Raya Oro-oro Ombo 36', 'Budiyono'),
(62, 'SD NEGERI PANDANREJO 01', 1, 20536894, 1, 'Bumiaji', 'Jl. Raya Pandanrejo NO 1A', 'Endang Sriati'),
(63, 'SD NEGERI PANDANREJO 02', 1, 20536879, 1, 'Bumiaji', 'Jl. Raya Pandanrejo 122', 'Sutriyarni'),
(64, 'SD NEGERI PENDEM 01', 1, 20536880, 1, 'Junrejo', 'Jl. Dr. Moh. Hatta NO 118', 'Samun'),
(65, 'SD NEGERI PENDEM 02', 1, 20536881, 1, 'Junrejo', 'Jl. Dr. Moh. Hatta NO 134', 'Ramawati'),
(66, 'SD NEGERI PESANGGRAHAN 01', 1, 20536883, 1, 'Batu', 'Jl. Suropati 123', 'Indah Wahyuningsih'),
(67, 'SD NEGERI PESANGGRAHAN 02', 1, 20551660, 1, 'Batu', 'Jl Cempaka Atas 1', 'Edi Supraptono'),
(68, 'SD NEGERI PUNTEN 01', 1, 20536884, 1, 'Bumiaji', 'Jl Raya Punten 24', 'Prihastutik'),
(69, 'SD NEGERI PUNTEN 02', 1, 20536885, 1, 'Bumiaji', 'Jl Anjasmoro 12', 'Sutrisno'),
(70, 'SD NEGERI SIDOMULYO 01', 1, 20536886, 1, 'Batu', 'Jl Bukit Berbunga 70', 'Luluk Lutfiati'),
(71, 'SD NEGERI SIDOMULYO 02', 1, 20536887, 1, 'Batu', 'Jl Cemara Kipas 120', 'Etik Kusmiati'),
(72, 'SD NEGERI SIDOMULYO 03', 1, 20536889, 1, 'Batu', 'Jl Mawar Putih 141 RT 03 RW 12', 'Mochammad Djamil'),
(73, 'SD NEGERI SISIR 01', 1, 20536891, 1, 'Batu', 'Jl Arjuno 40 D', 'Eny Isnaini'),
(74, 'SD NEGERI SISIR 02', 1, 20536892, 1, 'Batu', 'Jl. Arjuno 40 D', 'Rismiyati'),
(76, 'SD NEGERI SISIR 03', 1, 20536893, 1, 'Batu', 'Jl. Imam Bonjol III / 9', 'Dra. Suprapti'),
(77, 'SD NEGERI SISIR 04', 1, 20536910, 1, 'Batu', 'Jl. Imam Bonjol III / 8', 'Endah'),
(78, 'SD NEGERI SISIR 05', 1, 20536813, 1, 'Batu', 'Jl. Arjuno 60', 'Mochamad Suntoro'),
(79, 'SD NEGERI SISIR 06', 1, 20536800, 1, 'Batu', 'Jl. Imam Bonjol Gg III No 15 B', 'Suharmi'),
(80, 'SD NEGERI SONGGOKERTO 01', 1, 20536801, 1, 'Batu', 'Jl Trunojoyo V / 2A', 'Trinil Wahyuni, S. Pd.'),
(81, 'SD NEGERI SONGGOKERTO 02', 1, 20536802, 1, 'Batu', 'Jl. Terati II / 23', 'Wiwik Hartini'),
(82, 'SD NEGERI SONGGOKERTO 03', 1, 20536803, 1, 'Batu', 'Jl. Arum Dalu 65A', 'Suliyani'),
(83, 'SD NEGERI SUMBEREJO 01', 1, 20536804, 1, 'Batu', 'Jl Indragiri 79', 'Eni Wahyuningsih'),
(84, 'SD NEGERI SUMBEREJO 02', 1, 20536805, 1, 'Batu', 'Jl Indragiri 81', 'Yudo Suwintoro'),
(85, 'SD NEGERI SUMBEREJO 03', 1, 20536806, 1, 'Batu', 'Jl. Metro NO 22 Santrean Sumberejo', 'Harini'),
(86, 'SD NEGERI SUMBERGONDO 01', 1, 20536807, 1, 'Bumiaji', 'Jl. Raya Sumbergondo 2', 'Lutfi Handayani'),
(87, 'SD NEGERI TEMAS 01', 1, 20536809, 1, 'Batu', 'Jl. Patimura 23', 'Yayuk Rahayuningsih'),
(88, 'SD NEGERI TEMAS 02', 1, 20536811, 1, 'Batu', 'Jl. Wukir VIII / 38', 'Agus Prianto'),
(89, 'SD NEGERI TLEKUNG 01', 1, 20536812, 1, 'Junrejo', 'Jl Raya Tlekung 51', 'Suwandi'),
(90, 'SD NEGERI TLEKUNG 02', 1, 20536799, 1, 'Junrejo', 'Jl Raya Tlekung RT 03 RW 06', 'Silasih'),
(91, 'SD NEGERI TORONGREJO 01', 1, 20536778, 1, 'Junrejo', 'Jl. Wukir 37', 'Sayono'),
(93, 'SD NEGERI TORONGREJO 02', 1, 20536798, 1, 'Junrejo', 'Jl. Cendana Ngukir', 'Samad'),
(94, 'SD NEGERI TORONGREJO 03', 1, 20536797, 1, 'Junrejo', 'Jl. Aji Mustofa No 53', 'Jafar Priyono'),
(95, 'SD NEGERI TULUNGREJO 01', 1, 20536776, 1, 'Bumiaji', 'Jl Diponegoro 182', 'Sri Mulyowati'),
(96, 'SD NEGERI TULUNGREJO 02', 1, 20539421, 1, 'Bumiaji', 'Jl. Asparagus 27 Junggo', 'Sugiati'),
(97, 'SD NEGERI TULUNGREJO 03', 1, 20536775, 1, 'Bumiaji', 'Jl. Raya Sumberbrantas No 116 Dusun Lemah Putih', 'Supriyanto'),
(98, 'SD NEGERI TULUNGREJO 04', 1, 20536774, 1, 'Bumiaji', 'Dsn Wonorejo', 'Komsiyatin'),
(99, 'SD NEGERI TULUNGREJO 05', 1, 20554537, 1, 'Bumiaji', 'Jl Anjarnyoto No 01 Dusun Kekep Desa Tulungrejo', 'Nunuk Suciani'),
(100, 'SD PLUS AL IRSYAD', 1, 20536848, 2, 'Batu', 'Jl. Semeru I / 8', 'Deny Makhbubi'),
(101, 'SD - IT IBNU HAJAR', 1, 20571506, 1, 'Batu', 'Jl. Perum Puri Indah Gondorejo', 'Rakhma Agustina Sulistyowati, Amd'),
(102, 'SDI SABILUL KHOIR BEJI', 1, 69727596, 2, 'Junrejo', 'Jl Makam No 33 RT 03 RW 04', 'Dra. Endang Retnowati'),
(103, 'SDIT TAHFIDZ AL MUNAWWAR', 1, 69969378, 2, 'Batu', 'Jl. Melati No 11 RT 01 RW 05', 'Rahmad Pribadi'),
(104, 'SD NEGERI SUMBERGONDO 02', 1, 20536808, 1, 'Bumiaji', 'Jl. Tegalsari 5', 'Sri Winarni'),
(105, 'SD NEGERI BULUKERTO 03', 1, 20536855, 1, 'Bumiaji', 'Jl.Nurhadi No 1 Cangar Bulukerto', 'Lilis Indahyani'),
(106, 'SD NEGERI POLINEMA', 1, 5454, 1, 'Bumiaji', 'Jl . polinema', 'Berlian');

-- --------------------------------------------------------

--
-- Table structure for table `status_sekolah`
--

CREATE TABLE `status_sekolah` (
  `id_status_sekolah` int(1) NOT NULL,
  `nama_status_sekolah` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_sekolah`
--

INSERT INTO `status_sekolah` (`id_status_sekolah`, `nama_status_sekolah`) VALUES
(0, 'Dispendik'),
(1, 'Negeri'),
(2, 'Swasta');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kegiatan_k2`
--

CREATE TABLE `sub_kegiatan_k2` (
  `id_sub_kegiatan_k2` int(11) NOT NULL,
  `uraian_kegiatan` varchar(255) NOT NULL,
  `id_pengeluaran` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kegiatan_k2`
--

INSERT INTO `sub_kegiatan_k2` (`id_sub_kegiatan_k2`, `uraian_kegiatan`, `id_pengeluaran`) VALUES
(1, 'Penerimaan Peserta Didik Baruuu', 1),
(2, 'Peningkatan Prestasi Bidang Akademik', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_sub_kegiatan_k2`
--
ALTER TABLE `detail_sub_kegiatan_k2`
  ADD PRIMARY KEY (`id_detail_sub_kegiatan_k2`);

--
-- Indexes for table `form_k3`
--
ALTER TABLE `form_k3`
  ADD PRIMARY KEY (`id_dana_kegiatan`),
  ADD KEY `fk_id_sekolah2` (`id_sekolah`);

--
-- Indexes for table `jenis_pengguna`
--
ALTER TABLE `jenis_pengguna`
  ADD PRIMARY KEY (`id_jenis_pengguna`),
  ADD KEY `id_jenis_pengguna` (`id_jenis_pengguna`);

--
-- Indexes for table `jenis_sekolah`
--
ALTER TABLE `jenis_sekolah`
  ADD PRIMARY KEY (`id_jenis_sekolah`);

--
-- Indexes for table `penerimaan_k1`
--
ALTER TABLE `penerimaan_k1`
  ADD PRIMARY KEY (`id_penerimaan`);

--
-- Indexes for table `pengeluaran_k1`
--
ALTER TABLE `pengeluaran_k1`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fk_id_jenis` (`id_jenis_pengguna`),
  ADD KEY `fk_id_sekolah` (`id_sekolah`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_sekolah`),
  ADD UNIQUE KEY `npsn` (`npsn`),
  ADD KEY `id_jenis_sekolah` (`id_jenis_sekolah`),
  ADD KEY `id_status_sekolah` (`id_status_sekolah`),
  ADD KEY `id_jenis_sekolah_2` (`id_jenis_sekolah`);

--
-- Indexes for table `status_sekolah`
--
ALTER TABLE `status_sekolah`
  ADD PRIMARY KEY (`id_status_sekolah`);

--
-- Indexes for table `sub_kegiatan_k2`
--
ALTER TABLE `sub_kegiatan_k2`
  ADD PRIMARY KEY (`id_sub_kegiatan_k2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_sub_kegiatan_k2`
--
ALTER TABLE `detail_sub_kegiatan_k2`
  MODIFY `id_detail_sub_kegiatan_k2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `form_k3`
--
ALTER TABLE `form_k3`
  MODIFY `id_dana_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jenis_pengguna`
--
ALTER TABLE `jenis_pengguna`
  MODIFY `id_jenis_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penerimaan_k1`
--
ALTER TABLE `penerimaan_k1`
  MODIFY `id_penerimaan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran_k1`
--
ALTER TABLE `pengeluaran_k1`
  MODIFY `id_pengeluaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `sub_kegiatan_k2`
--
ALTER TABLE `sub_kegiatan_k2`
  MODIFY `id_sub_kegiatan_k2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `form_k3`
--
ALTER TABLE `form_k3`
  ADD CONSTRAINT `fk_id_sekolah2` FOREIGN KEY (`id_sekolah`) REFERENCES `sekolah` (`id_sekolah`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `fk_id_jenis` FOREIGN KEY (`id_jenis_pengguna`) REFERENCES `jenis_pengguna` (`id_jenis_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_sekolah` FOREIGN KEY (`id_sekolah`) REFERENCES `sekolah` (`id_sekolah`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `fk_id_jenis_Sekolah` FOREIGN KEY (`id_jenis_sekolah`) REFERENCES `jenis_sekolah` (`id_jenis_sekolah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_status_sekolah` FOREIGN KEY (`id_status_sekolah`) REFERENCES `status_sekolah` (`id_status_sekolah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
