-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2020 at 04:39 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsis`
--

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` varchar(5) NOT NULL,
  `kriteria` varchar(45) NOT NULL,
  `bobot` double NOT NULL,
  `poin1` double NOT NULL,
  `poin2` double NOT NULL,
  `poin3` double NOT NULL,
  `poin4` double NOT NULL,
  `poin5` double NOT NULL,
  `sifat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `bobot`, `poin1`, `poin2`, `poin3`, `poin4`, `poin5`, `sifat`) VALUES
('kr002', 'Grade', 4, 1, 2, 3, 4, 5, 'benefit'),
('kr003', 'Sertifikasi', 5, 1, 2, 3, 4, 5, 'cost'),
('kr004', 'Keikutsertaan', 3, 1, 2, 3, 4, 5, 'benefit'),
('kr005', 'Tema', 5, 1, 2, 3, 4, 5, 'benefit'),
('kr006', 'Kedisiplinan', 2, 1, 2, 3, 4, 5, 'benefit');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_matrik`
--

CREATE TABLE `nilai_matrik` (
  `id_matrik` int(7) NOT NULL,
  `id_peserta` varchar(7) NOT NULL,
  `id_kriteria` varchar(7) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_matrik`
--

INSERT INTO `nilai_matrik` (`id_matrik`, `id_peserta`, `id_kriteria`, `nilai`) VALUES
(301, 'al002', 'kr002', 3),
(302, 'al002', 'kr003', 2),
(303, 'al002', 'kr004', 1),
(304, 'al002', 'kr005', 4),
(305, 'al002', 'kr006', 4),
(306, 'al003', 'kr002', 2),
(307, 'al003', 'kr003', 1),
(308, 'al003', 'kr004', 2),
(309, 'al003', 'kr005', 2),
(310, 'al003', 'kr006', 1),
(311, 'al004', 'kr002', 4),
(312, 'al004', 'kr003', 1),
(313, 'al004', 'kr004', 1),
(314, 'al004', 'kr005', 3),
(315, 'al004', 'kr006', 2),
(316, 'al005', 'kr002', 5),
(317, 'al005', 'kr003', 2),
(318, 'al005', 'kr004', 1),
(319, 'al005', 'kr005', 3),
(320, 'al005', 'kr006', 2),
(321, 'al006', 'kr002', 5),
(322, 'al006', 'kr003', 2),
(323, 'al006', 'kr004', 4),
(324, 'al006', 'kr005', 4),
(325, 'al006', 'kr006', 5),
(346, 'al001', 'kr002', 4),
(347, 'al001', 'kr003', 1),
(348, 'al001', 'kr004', 2),
(349, 'al001', 'kr005', 4),
(350, 'al001', 'kr006', 2),
(351, 'al007', 'kr002', 5),
(352, 'al007', 'kr003', 3),
(353, 'al007', 'kr004', 5),
(354, 'al007', 'kr005', 3),
(355, 'al007', 'kr006', 5),
(356, 'al008', 'kr002', 4),
(357, 'al008', 'kr003', 1),
(358, 'al008', 'kr004', 3),
(359, 'al008', 'kr005', 3),
(360, 'al008', 'kr006', 3),
(361, 'al009', 'kr002', 1),
(362, 'al009', 'kr003', 2),
(363, 'al009', 'kr004', 1),
(364, 'al009', 'kr005', 4),
(365, 'al009', 'kr006', 4),
(366, 'al010', 'kr002', 3),
(367, 'al010', 'kr003', 1),
(368, 'al010', 'kr004', 3),
(369, 'al010', 'kr005', 2),
(370, 'al010', 'kr006', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_preferensi`
--

CREATE TABLE `nilai_preferensi` (
  `id_pre` int(11) NOT NULL,
  `nm_peserta` varchar(35) NOT NULL,
  `nilai` double NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tanggal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` varchar(5) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `nm_peserta` varchar(35) NOT NULL,
  `tanggal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `judul`, `nm_peserta`, `tanggal`) VALUES
('al001', 'Workshop Larisa', 'Deni Murdani', '12/12/2016'),
('al002', 'Workshop Larisa', 'R.Swasono Amoeng Widodo', '12/12/2016'),
('al003', 'Workshop Larisa', 'Rama Fikli', '12/12/2019'),
('al004', 'Workshop Larisa', 'Beni Arief Budiman', '12/12/2019'),
('al005', 'Workshop Larisa', 'Sudiyanto', '12/12/2019'),
('al006', 'Workshop Larisa', 'Hananto', '12/12/2019'),
('al007', 'Workshop Larisa', 'Holilurrohman', '12/12/2019'),
('al008', 'Workshop Larisa', 'Dody Pardomuan', '12/12/2019'),
('al009', 'Workshop Larisa', 'Diyah Indriyawanti', '12/12/2019'),
('al010', 'Workshop Larisa', 'Susy Meldiawati', '12/12/2019');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Dieni Hanifah', 'dieni', '54c054bb61018ba3d1a28fc2d54670bf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  ADD PRIMARY KEY (`id_matrik`);

--
-- Indexes for table `nilai_preferensi`
--
ALTER TABLE `nilai_preferensi`
  ADD PRIMARY KEY (`id_pre`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  MODIFY `id_matrik` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=371;

--
-- AUTO_INCREMENT for table `nilai_preferensi`
--
ALTER TABLE `nilai_preferensi`
  MODIFY `id_pre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
