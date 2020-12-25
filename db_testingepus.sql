-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2020 at 05:30 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_testingepus`
--

-- --------------------------------------------------------

--
-- Table structure for table `_antrianpasien`
--

CREATE TABLE `_antrianpasien` (
  `id_antrianpasien` varchar(10) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `no_antrian` varchar(10) DEFAULT NULL,
  `id_loginpasien` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `_antrianpasien`
--

INSERT INTO `_antrianpasien` (`id_antrianpasien`, `status`, `no_antrian`, `id_loginpasien`) VALUES
('1', 'open', '1', '1'),
('2', 'open', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `_dokter`
--

CREATE TABLE `_dokter` (
  `id_dokter` int(10) UNSIGNED NOT NULL,
  `dokter_nip` varchar(45) DEFAULT NULL,
  `dokter_nama` varchar(45) DEFAULT NULL,
  `dokter_jenkel` varchar(45) DEFAULT NULL,
  `dokter_spesialis` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `_loginpasien`
--

CREATE TABLE `_loginpasien` (
  `id_loginpasien` varchar(10) NOT NULL,
  `pasien_ktp` varchar(45) DEFAULT NULL,
  `passwod` varchar(45) DEFAULT NULL,
  `_id_pasien` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `_loginpasien`
--

INSERT INTO `_loginpasien` (`id_loginpasien`, `pasien_ktp`, `passwod`, `_id_pasien`) VALUES
('1', '36711111111111', '123456789', '1'),
('2', '36722222222222', '123456789', '2');

-- --------------------------------------------------------

--
-- Table structure for table `_obat`
--

CREATE TABLE `_obat` (
  `id_obat` int(10) UNSIGNED NOT NULL,
  `kd_obat` varchar(45) DEFAULT NULL,
  `obat_nama` varchar(45) NOT NULL,
  `obat_jenis` varchar(45) DEFAULT NULL,
  `obat_kadaluarsa` varchar(45) DEFAULT NULL,
  `obat_produsen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `_pasien`
--

CREATE TABLE `_pasien` (
  `id_pasien` varchar(10) NOT NULL,
  `pasien_ktp` varchar(45) DEFAULT NULL,
  `pasien_nama` varchar(45) DEFAULT NULL,
  `pasien_alamat` varchar(255) DEFAULT NULL,
  `pasien_tempatlahir` varchar(45) DEFAULT NULL,
  `pasien_tgllahir` timestamp NULL DEFAULT NULL,
  `pasien_telepon` varchar(45) DEFAULT NULL,
  `pasien_jenkel` varchar(45) DEFAULT NULL,
  `pasien_agama` varchar(45) DEFAULT NULL,
  `pasien_noasuransi` varchar(45) DEFAULT NULL,
  `pasien_jenisasuransi` varchar(45) DEFAULT NULL,
  `pasien_goldar` varchar(45) DEFAULT NULL,
  `pasien_kelurahan` varchar(45) DEFAULT NULL,
  `pasien_kecamatan` varchar(45) DEFAULT NULL,
  `pasien_kotakabupaten` varchar(45) DEFAULT NULL,
  `pasien_provinsi` varchar(45) DEFAULT NULL,
  `pasien_nokk` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `_pasien`
--

INSERT INTO `_pasien` (`id_pasien`, `pasien_ktp`, `pasien_nama`, `pasien_alamat`, `pasien_tempatlahir`, `pasien_tgllahir`, `pasien_telepon`, `pasien_jenkel`, `pasien_agama`, `pasien_noasuransi`, `pasien_jenisasuransi`, `pasien_goldar`, `pasien_kelurahan`, `pasien_kecamatan`, `pasien_kotakabupaten`, `pasien_provinsi`, `pasien_nokk`) VALUES
('1', 'Te7t3+8YK!is7t9c9MpGKw==', 'P!Nv5Xbw1F6PB!t8WA7dTA==', 'u4z8FuCJ9kO5sBAXlYKaOA==', 'eON9CeR8Xyts!pSU01Hl7Q==', '1994-01-10 17:00:00', 'eDwCi9fWlRt69dQCcQFVfg==', 'sQn6i938acnyw8FFX6NYWA==', 'OqeiDQ27+3KXB18+RJwKtg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'UIW!F8MjDftllMj17yJpkg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'Rz2MnPPV9sMRChTfwnXYjg=='),
('2', 'AHbKaWNCm35L2A5R+aMGqQ==', 'lOXpPVQsnQ8FseTH+Y08eA==', 'inyAaOMo8hu+sv9kmx5dFQ==', 'inyAaOMo8hu+sv9kmx5dFQ==', '2020-08-02 17:00:00', 'se9s9+oXQrNtqfAX1QX7GQ==', 'sQn6i938acnyw8FFX6NYWA==', 'OqeiDQ27+3KXB18+RJwKtg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'UIW!F8MjDftllMj17yJpkg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'Rz2MnPPV9sMRChTfwnXYjg==', 'Rz2MnPPV9sMRChTfwnXYjg==');

-- --------------------------------------------------------

--
-- Table structure for table `_penyakit`
--

CREATE TABLE `_penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `penyakit_nama` varchar(100) DEFAULT NULL,
  `penyakit_deskripsi` varchar(255) DEFAULT NULL,
  `penyakit_jenis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `_rekammedis`
--

CREATE TABLE `_rekammedis` (
  `rekammedis_id` varchar(50) NOT NULL,
  `id_dokter` int(10) UNSIGNED NOT NULL,
  `id_pasien` varchar(10) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `rekammedis_tglkunjungan` timestamp NULL DEFAULT NULL,
  `rekammedis_keluhan` varchar(255) DEFAULT NULL,
  `rekammedis_diagnosa` varchar(255) DEFAULT NULL,
  `rekammedis_tindakan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `_resepobat`
--

CREATE TABLE `_resepobat` (
  `id_resepobat` int(11) NOT NULL,
  `rekammedis_id` varchar(50) NOT NULL,
  `id_obat` int(10) UNSIGNED NOT NULL,
  `resepobat_jumlah` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `_antrianpasien`
--
ALTER TABLE `_antrianpasien`
  ADD KEY `fk__antrianpasien__loginpasien1_idx` (`id_loginpasien`);

--
-- Indexes for table `_dokter`
--
ALTER TABLE `_dokter`
  ADD PRIMARY KEY (`id_dokter`) USING BTREE;

--
-- Indexes for table `_loginpasien`
--
ALTER TABLE `_loginpasien`
  ADD PRIMARY KEY (`id_loginpasien`),
  ADD KEY `fk__loginpasien__pasien1_idx` (`_id_pasien`);

--
-- Indexes for table `_obat`
--
ALTER TABLE `_obat`
  ADD PRIMARY KEY (`id_obat`) USING BTREE;

--
-- Indexes for table `_pasien`
--
ALTER TABLE `_pasien`
  ADD PRIMARY KEY (`id_pasien`) USING BTREE;

--
-- Indexes for table `_penyakit`
--
ALTER TABLE `_penyakit`
  ADD PRIMARY KEY (`id_penyakit`) USING BTREE;

--
-- Indexes for table `_rekammedis`
--
ALTER TABLE `_rekammedis`
  ADD PRIMARY KEY (`rekammedis_id`,`id_dokter`,`id_pasien`,`id_penyakit`) USING BTREE,
  ADD KEY `fk__dokter_has__pasien__pasien1_idx` (`id_pasien`) USING BTREE,
  ADD KEY `fk__dokter_has__pasien__dokter_idx` (`id_dokter`) USING BTREE,
  ADD KEY `fk__rekammedis__penyakit1_idx` (`id_penyakit`) USING BTREE,
  ADD KEY `rekammedis_id` (`rekammedis_id`) USING BTREE;

--
-- Indexes for table `_resepobat`
--
ALTER TABLE `_resepobat`
  ADD PRIMARY KEY (`id_resepobat`,`rekammedis_id`,`id_obat`) USING BTREE,
  ADD KEY `fk__rekammedis_has__obat__obat1_idx` (`id_obat`) USING BTREE,
  ADD KEY `fk__rekammedis_has__obat__rekammedis1_idx` (`rekammedis_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `_dokter`
--
ALTER TABLE `_dokter`
  MODIFY `id_dokter` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_obat`
--
ALTER TABLE `_obat`
  MODIFY `id_obat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_penyakit`
--
ALTER TABLE `_penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_resepobat`
--
ALTER TABLE `_resepobat`
  MODIFY `id_resepobat` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `_antrianpasien`
--
ALTER TABLE `_antrianpasien`
  ADD CONSTRAINT `fk__antrianpasien__loginpasien1` FOREIGN KEY (`id_loginpasien`) REFERENCES `_loginpasien` (`id_loginpasien`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_loginpasien`
--
ALTER TABLE `_loginpasien`
  ADD CONSTRAINT `fk__loginpasien__pasien1` FOREIGN KEY (`_id_pasien`) REFERENCES `_pasien` (`id_pasien`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_rekammedis`
--
ALTER TABLE `_rekammedis`
  ADD CONSTRAINT `fk__dokter_has__pasien__dokter` FOREIGN KEY (`id_dokter`) REFERENCES `_dokter` (`id_dokter`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk__dokter_has__pasien__pasien1` FOREIGN KEY (`id_pasien`) REFERENCES `_pasien` (`id_pasien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk__rekammedis__penyakit1` FOREIGN KEY (`id_penyakit`) REFERENCES `_penyakit` (`id_penyakit`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_resepobat`
--
ALTER TABLE `_resepobat`
  ADD CONSTRAINT `fk__rekammedis_has__obat__obat1` FOREIGN KEY (`id_obat`) REFERENCES `_obat` (`id_obat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk__rekammedis_has__obat__rekammedis1` FOREIGN KEY (`rekammedis_id`) REFERENCES `_rekammedis` (`rekammedis_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
