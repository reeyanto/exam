-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2022 at 01:23 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pesantren`
--

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(5) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL,
  `kode_kriteria` varchar(5) NOT NULL,
  `jenis_kriteria` varchar(10) NOT NULL,
  `bobot_kriteria` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `kode_kriteria`, `jenis_kriteria`, `bobot_kriteria`) VALUES
(1, 'Kriteria 1', 'K1', 'Cost', 10),
(2, 'Kriteria 2', 'K2', 'Benefit', 10),
(3, 'Kriteria 3', 'K3', 'Cost', 20),
(4, 'Kriteria 4', 'K4', 'Cost', 15),
(5, 'Kriteria 5', 'K5', 'Cost', 20);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_normalisasi_alternatif`
--

CREATE TABLE `nilai_normalisasi_alternatif` (
  `id_nilai_normalisasi` int(5) NOT NULL,
  `id_kriteria` int(5) NOT NULL,
  `id_santri` int(5) NOT NULL,
  `nilai_alternatif` int(5) NOT NULL,
  `nilai_normalisasi` float DEFAULT NULL,
  `nilai_normalisasi_terbobot` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilai_normalisasi_alternatif`
--

INSERT INTO `nilai_normalisasi_alternatif` (`id_nilai_normalisasi`, `id_kriteria`, `id_santri`, `nilai_alternatif`, `nilai_normalisasi`, `nilai_normalisasi_terbobot`) VALUES
(1, 1, 1, 80, NULL, NULL),
(2, 2, 1, 75, NULL, NULL),
(3, 3, 1, 80, NULL, NULL),
(4, 4, 1, 40, NULL, NULL),
(5, 5, 1, 50, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_preferensi_alternatif`
--

CREATE TABLE `nilai_preferensi_alternatif` (
  `id_nilai_preferensi` int(5) NOT NULL,
  `id_santri` int(5) NOT NULL,
  `nilai_preferensi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `santri`
--

CREATE TABLE `santri` (
  `id_santri` int(5) NOT NULL,
  `nama_santri` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `alamat_santri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `santri`
--

INSERT INTO `santri` (`id_santri`, `nama_santri`, `jenis_kelamin`, `asal_sekolah`, `alamat_santri`) VALUES
(1, 'Santri 1', 'Laki-laki', 'Asal Sekolah 1', 'Alamat 1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`) VALUES
(1, 'test', 'test', '098f6bcd4621d373cade4e832627b4f6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `nilai_normalisasi_alternatif`
--
ALTER TABLE `nilai_normalisasi_alternatif`
  ADD PRIMARY KEY (`id_nilai_normalisasi`);

--
-- Indexes for table `nilai_preferensi_alternatif`
--
ALTER TABLE `nilai_preferensi_alternatif`
  ADD PRIMARY KEY (`id_nilai_preferensi`);

--
-- Indexes for table `santri`
--
ALTER TABLE `santri`
  ADD PRIMARY KEY (`id_santri`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nilai_normalisasi_alternatif`
--
ALTER TABLE `nilai_normalisasi_alternatif`
  MODIFY `id_nilai_normalisasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nilai_preferensi_alternatif`
--
ALTER TABLE `nilai_preferensi_alternatif`
  MODIFY `id_nilai_preferensi` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `santri`
--
ALTER TABLE `santri`
  MODIFY `id_santri` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
