-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 04:55 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(5) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama_alternatif`) VALUES
(39, 'Rahma Aulia'),
(40, 'Ardiansyah'),
(41, 'Attayasa Mirrauhillah'),
(42, 'Gilang Andika Rizki Ramadhan'),
(43, 'Mamay Sri Wahyani'),
(44, 'Kesih'),
(45, 'Muhamad Soni'),
(46, 'Siska Wulandari'),
(47, 'Nurul Syazwana'),
(48, 'Surya Gilang Ramadhan'),
(49, 'Muhamad Adlulatif'),
(50, 'Dian Ayu Sulistiani'),
(51, 'Selly Septiana'),
(52, 'Ridwan Ripandi'),
(53, 'Puryaningsih'),
(54, 'Wulan Sari'),
(55, 'Ade Widia Adiyanti'),
(56, 'Luthfi\'ah Hana Sajidah'),
(57, 'Muhammad Suni'),
(58, 'Yogi Imanudin'),
(59, 'Syifa Fitriani'),
(60, 'Ega Sapitri'),
(61, 'Muhammad Sirajudin'),
(62, 'Rahmat'),
(63, 'Hendra'),
(64, 'Iis Alinda'),
(65, 'Risca Andini'),
(66, 'Suted'),
(67, 'Selawati'),
(68, 'Astuti'),
(69, 'Susi'),
(70, 'Afifah'),
(71, 'Leni Puspita Nengsih'),
(72, 'Rohyati'),
(73, 'Rizal Adrian'),
(74, 'Nani'),
(75, 'Sahwati'),
(76, 'Muhammad Fadli Mulyana'),
(77, 'Sindi Aulia Saputri'),
(78, 'Susan'),
(79, 'Wahyu Hidayat'),
(80, 'Ikhwan Mua\'ziz'),
(81, 'Puput Pitriyah'),
(82, 'Sartinah'),
(83, 'Fitriyani'),
(84, 'Umi Kulsum'),
(85, 'Mimin'),
(86, 'Roni Romansyah'),
(87, 'Okto Riansyah'),
(88, 'Siti Umairoh');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` double(11,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(39, 39, 0.0221),
(40, 40, 0.0184),
(41, 41, 0.0221),
(42, 42, 0.0263),
(43, 43, 0.0184),
(44, 44, 0.0201),
(45, 45, 0.0153),
(46, 46, 0.0190),
(47, 47, 0.0186),
(48, 48, 0.0174),
(49, 49, 0.0252),
(50, 50, 0.0212),
(51, 51, 0.0190),
(52, 52, 0.0201),
(53, 53, 0.0231),
(54, 54, 0.0171),
(55, 55, 0.0251),
(56, 56, 0.0209),
(57, 57, 0.0134),
(58, 58, 0.0239),
(59, 59, 0.0291),
(60, 60, 0.0192),
(61, 61, 0.0192),
(62, 62, 0.0209),
(63, 63, 0.0201),
(64, 64, 0.0252),
(65, 65, 0.0165),
(66, 66, 0.0153),
(67, 67, 0.0184),
(68, 68, 0.0192),
(69, 69, 0.0212),
(70, 70, 0.0212),
(71, 71, 0.0174),
(72, 72, 0.0174),
(73, 73, 0.0174),
(74, 74, 0.0192),
(75, 75, 0.0266),
(76, 76, 0.0212),
(77, 77, 0.0184),
(78, 78, 0.0184),
(79, 79, 0.0190),
(80, 80, 0.0165),
(81, 81, 0.0192),
(82, 82, 0.0239),
(83, 83, 0.0203),
(84, 84, 0.0174),
(85, 85, 0.0174),
(86, 86, 0.0162),
(87, 87, 0.0209),
(88, 88, 0.0203);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(5) NOT NULL,
  `kode_kriteria` varchar(5) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `bobot` int(5) NOT NULL,
  `tipe` enum('cost','benefit') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama_kriteria`, `bobot`, `tipe`) VALUES
(7, 'C1', 'Sikap', 4, 'benefit'),
(8, 'C2', 'Nilai Rapot', 3, 'benefit'),
(9, 'C3', 'Prestasi Non Akademik', 4, 'benefit'),
(10, 'C4', 'Absensi', 3, 'benefit'),
(11, 'C5', 'Ekstrakurikuler', 2, 'benefit');

-- --------------------------------------------------------

--
-- Table structure for table `opt_alternatif`
--

CREATE TABLE `opt_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `id_subkriteria` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabel ini digunakan agar kriteria nya bisa dinamis';

--
-- Dumping data for table `opt_alternatif`
--

INSERT INTO `opt_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `id_subkriteria`) VALUES
(198, 39, 7, 43),
(199, 39, 8, 49),
(200, 39, 9, 52),
(201, 39, 10, 62),
(202, 39, 11, 66),
(203, 40, 7, 43),
(204, 40, 8, 49),
(205, 40, 9, 52),
(206, 40, 10, 60),
(207, 40, 11, 65),
(208, 41, 7, 43),
(209, 41, 8, 49),
(210, 41, 9, 52),
(211, 41, 10, 62),
(212, 41, 11, 66),
(213, 42, 7, 43),
(214, 42, 8, 49),
(215, 42, 9, 53),
(216, 42, 10, 62),
(217, 42, 11, 66),
(218, 43, 7, 43),
(219, 43, 8, 49),
(220, 43, 9, 52),
(221, 43, 10, 60),
(222, 43, 11, 65),
(223, 44, 7, 43),
(224, 44, 8, 49),
(225, 44, 9, 52),
(226, 44, 10, 60),
(227, 44, 11, 66),
(228, 45, 7, 42),
(229, 45, 8, 48),
(230, 45, 9, 52),
(231, 45, 10, 59),
(232, 45, 11, 65),
(233, 46, 7, 42),
(234, 46, 8, 49),
(235, 46, 9, 52),
(236, 46, 10, 60),
(237, 46, 11, 66),
(238, 47, 7, 43),
(239, 47, 8, 49),
(240, 47, 9, 52),
(241, 47, 10, 59),
(242, 47, 11, 66),
(243, 48, 7, 42),
(244, 48, 8, 49),
(245, 48, 9, 52),
(246, 48, 10, 60),
(247, 48, 11, 65),
(248, 49, 7, 43),
(249, 49, 8, 49),
(250, 49, 9, 53),
(251, 49, 10, 60),
(252, 49, 11, 67),
(253, 50, 7, 43),
(254, 50, 8, 49),
(255, 50, 9, 52),
(256, 50, 10, 61),
(257, 50, 11, 66),
(258, 51, 7, 42),
(259, 51, 8, 49),
(260, 51, 9, 52),
(261, 51, 10, 60),
(262, 51, 11, 66),
(263, 52, 7, 42),
(264, 52, 8, 49),
(265, 52, 9, 52),
(266, 52, 10, 61),
(267, 52, 11, 66),
(268, 53, 7, 43),
(269, 53, 8, 49),
(270, 53, 9, 53),
(271, 53, 10, 61),
(272, 53, 11, 65),
(273, 54, 7, 43),
(274, 54, 8, 49),
(275, 54, 9, 52),
(276, 54, 10, 59),
(277, 54, 11, 65),
(278, 55, 7, 42),
(279, 55, 8, 49),
(280, 55, 9, 53),
(281, 55, 10, 61),
(282, 55, 11, 67),
(283, 56, 7, 42),
(284, 56, 8, 49),
(285, 56, 9, 52),
(286, 56, 10, 62),
(287, 56, 11, 66),
(288, 57, 7, 42),
(289, 57, 8, 48),
(290, 57, 9, 52),
(291, 57, 10, 58),
(292, 57, 11, 65),
(293, 58, 7, 42),
(294, 58, 8, 49),
(295, 58, 9, 53),
(296, 58, 10, 61),
(297, 58, 11, 66),
(298, 59, 7, 43),
(299, 59, 8, 49),
(300, 59, 9, 54),
(301, 59, 10, 62),
(302, 59, 11, 66),
(303, 60, 7, 42),
(304, 60, 8, 49),
(305, 60, 9, 52),
(306, 60, 10, 62),
(307, 60, 11, 65),
(308, 61, 7, 42),
(309, 61, 8, 49),
(310, 61, 9, 52),
(311, 61, 10, 62),
(312, 61, 11, 65),
(313, 62, 7, 42),
(314, 62, 8, 49),
(315, 62, 9, 52),
(316, 62, 10, 62),
(317, 62, 11, 66),
(318, 63, 7, 42),
(319, 63, 8, 49),
(320, 63, 9, 52),
(321, 63, 10, 61),
(322, 63, 11, 66),
(323, 64, 7, 43),
(324, 64, 8, 49),
(325, 64, 9, 53),
(326, 64, 10, 61),
(327, 64, 11, 66),
(328, 65, 7, 42),
(329, 65, 8, 48),
(330, 65, 9, 52),
(331, 65, 10, 60),
(332, 65, 11, 65),
(333, 66, 7, 42),
(334, 66, 8, 48),
(335, 66, 9, 52),
(336, 66, 10, 59),
(337, 66, 11, 65),
(338, 67, 7, 42),
(339, 67, 8, 49),
(340, 67, 9, 52),
(341, 67, 10, 61),
(342, 67, 11, 65),
(343, 68, 7, 42),
(344, 68, 8, 49),
(345, 68, 9, 52),
(346, 68, 10, 62),
(347, 68, 11, 65),
(348, 69, 7, 43),
(349, 69, 8, 49),
(350, 69, 9, 52),
(351, 69, 10, 61),
(352, 69, 11, 66),
(353, 70, 7, 43),
(354, 70, 8, 49),
(355, 70, 9, 52),
(356, 70, 10, 61),
(357, 70, 11, 66),
(358, 71, 7, 42),
(359, 71, 8, 49),
(360, 71, 9, 52),
(361, 71, 10, 60),
(362, 71, 11, 65),
(363, 72, 7, 42),
(364, 72, 8, 49),
(365, 72, 9, 52),
(366, 72, 10, 60),
(367, 72, 11, 65),
(368, 73, 7, 42),
(369, 73, 8, 49),
(370, 73, 9, 52),
(371, 73, 10, 60),
(372, 73, 11, 65),
(373, 74, 7, 42),
(374, 74, 8, 49),
(375, 74, 9, 52),
(376, 74, 10, 62),
(377, 74, 11, 65),
(378, 75, 7, 43),
(379, 75, 8, 49),
(380, 75, 9, 53),
(381, 75, 10, 61),
(382, 75, 11, 67),
(383, 76, 7, 43),
(384, 76, 8, 49),
(385, 76, 9, 52),
(386, 76, 10, 61),
(387, 76, 11, 66),
(388, 77, 7, 42),
(389, 77, 8, 49),
(390, 77, 9, 52),
(391, 77, 10, 61),
(392, 77, 11, 65),
(393, 78, 7, 42),
(394, 78, 8, 49),
(395, 78, 9, 52),
(396, 78, 10, 61),
(397, 78, 11, 65),
(398, 79, 7, 42),
(399, 79, 8, 49),
(400, 79, 9, 52),
(401, 79, 10, 60),
(402, 79, 11, 66),
(403, 80, 7, 42),
(404, 80, 8, 48),
(405, 80, 9, 52),
(406, 80, 10, 60),
(407, 80, 11, 65),
(408, 81, 7, 42),
(409, 81, 8, 49),
(410, 81, 9, 52),
(411, 81, 10, 62),
(412, 81, 11, 65),
(413, 82, 7, 43),
(414, 82, 8, 49),
(415, 82, 9, 53),
(416, 82, 10, 60),
(417, 82, 11, 66),
(418, 83, 7, 43),
(419, 83, 8, 49),
(420, 83, 9, 52),
(421, 83, 10, 62),
(422, 83, 11, 65),
(423, 84, 7, 42),
(424, 84, 8, 49),
(425, 84, 9, 52),
(426, 84, 10, 60),
(427, 84, 11, 65),
(428, 85, 7, 42),
(429, 85, 8, 49),
(430, 85, 9, 52),
(431, 85, 10, 60),
(432, 85, 11, 65),
(433, 86, 7, 42),
(434, 86, 8, 49),
(435, 86, 9, 52),
(436, 86, 10, 59),
(437, 86, 11, 65),
(438, 87, 7, 42),
(439, 87, 8, 49),
(440, 87, 9, 52),
(441, 87, 10, 62),
(442, 87, 11, 66),
(443, 88, 7, 43),
(444, 88, 8, 49),
(445, 88, 9, 52),
(446, 88, 10, 62),
(447, 88, 11, 65);

-- --------------------------------------------------------

--
-- Table structure for table `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `nama_subkriteria` varchar(50) NOT NULL,
  `bobot` int(5) NOT NULL,
  `nilai_sub` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_kriteria`, `nama_subkriteria`, `bobot`, `nilai_sub`) VALUES
(39, 7, 'Sangat Kurang', 1, 'E'),
(40, 7, 'Kurang', 2, 'D'),
(41, 7, 'Cukup', 3, 'C'),
(42, 7, 'Baik', 4, 'B'),
(43, 7, 'Sangat Baik', 5, 'A'),
(46, 8, 'Sangat Rendah', 1, '<60'),
(47, 8, 'Rendah', 2, '61-70'),
(48, 8, 'Cukup', 3, '71-80'),
(49, 8, 'Tinggi', 4, '81-90'),
(50, 8, 'Sangat Tinggi', 5, '>91'),
(52, 9, 'Sangat Rendah', 1, 'Tidak Partisipasi'),
(53, 9, 'Rendah', 2, 'Berpartisipasi'),
(54, 9, 'Sedang', 3, 'Juara 3'),
(55, 9, 'Tinggi', 4, 'Juara 2'),
(56, 9, 'Sangat Tinggi', 5, 'Juara 1'),
(58, 10, 'Sangat Malas', 1, 'X>10'),
(59, 10, 'Malas', 2, '6-10'),
(60, 10, 'Biasa', 3, '3-5'),
(61, 10, 'Rajin', 4, '1-2'),
(62, 10, 'Sangat Rajin', 5, 'Tidak Pernah '),
(65, 11, 'Tidak Aktif', 1, 'Tidak Pernah Ikut'),
(66, 11, 'Agak Aktif', 2, 'Ikut 1 Organisasi'),
(67, 11, 'Sedang', 3, 'Ikut 2 Organisasi'),
(68, 11, 'Aktif', 4, 'Ikut 3-4 Organisasi'),
(69, 11, 'Sangat Aktif', 5, 'Ikut >5 Organisasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_subkriteria` (`id_subkriteria`);

--
-- Indexes for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT for table `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `opt_alternatif`
--
ALTER TABLE `opt_alternatif`
  ADD CONSTRAINT `opt_alternatif_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `opt_alternatif_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `opt_alternatif_ibfk_3` FOREIGN KEY (`id_subkriteria`) REFERENCES `subkriteria` (`id_subkriteria`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `subkriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
