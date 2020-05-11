-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 07:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuah`
--

-- --------------------------------------------------------

--
-- Table structure for table `buah`
--

CREATE TABLE `buah` (
  `Nama` varchar(50) NOT NULL,
  `Harga_Pokok` varchar(20) NOT NULL,
  `Pajak` varchar(20) NOT NULL,
  `Expired` varchar(20) NOT NULL,
  `Daerah` varchar(50) NOT NULL,
  `Jenis` varchar(45) NOT NULL,
  `Kualitas` varchar(45) NOT NULL,
  `Harga_Jual` varchar(50) NOT NULL,
  `NO_Transaksi` varchar(50) NOT NULL,
  `NO_Penyimpanan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `ID_Distributor` varchar(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Daerah` varchar(100) NOT NULL,
  `Harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`ID_Distributor`, `Nama`, `Daerah`, `Harga`) VALUES
('12345', 'ardi', 'lampung', 'Rp:12.000');

-- --------------------------------------------------------

--
-- Table structure for table `gudang`
--

CREATE TABLE `gudang` (
  `No_Penyimpanan` varchar(50) NOT NULL,
  `Jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gudang`
--

INSERT INTO `gudang` (`No_Penyimpanan`, `Jenis`) VALUES
('1234', '-'),
('sdawdw', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `ID_Karyawan` varchar(50) NOT NULL,
  `Nama` varchar(35) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Gaji` varchar(20) NOT NULL,
  `Umur` int(5) NOT NULL,
  `Jenis_Kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `ID_pembeli` varchar(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `No_HP` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `toko_buah`
--

CREATE TABLE `toko_buah` (
  `Nama` varchar(50) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Jadwal` varchar(50) NOT NULL,
  `ID_Distributor` varchar(10) NOT NULL,
  `ID_karyawan` varchar(10) NOT NULL,
  `ID_pembeli` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `NO_Transaksi` varchar(50) NOT NULL,
  `Tanggal` varchar(20) NOT NULL,
  `ID_pembeli` varchar(10) NOT NULL,
  `ID_karyawan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buah`
--
ALTER TABLE `buah`
  ADD PRIMARY KEY (`Nama`),
  ADD KEY `NO_Transaksi` (`NO_Transaksi`,`NO_Penyimpanan`),
  ADD KEY `NO_Penyimpanan` (`NO_Penyimpanan`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`ID_Distributor`);

--
-- Indexes for table `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`No_Penyimpanan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`ID_Karyawan`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`ID_pembeli`);

--
-- Indexes for table `toko_buah`
--
ALTER TABLE `toko_buah`
  ADD PRIMARY KEY (`Nama`),
  ADD KEY `ID_Distributor` (`ID_Distributor`),
  ADD KEY `ID_karyawan` (`ID_karyawan`,`ID_pembeli`),
  ADD KEY `ID_pembeli` (`ID_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`NO_Transaksi`),
  ADD KEY `ID_pembeli` (`ID_pembeli`,`ID_karyawan`),
  ADD KEY `ID_karyawan` (`ID_karyawan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buah`
--
ALTER TABLE `buah`
  ADD CONSTRAINT `buah_ibfk_2` FOREIGN KEY (`NO_Penyimpanan`) REFERENCES `gudang` (`No_Penyimpanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buah_ibfk_3` FOREIGN KEY (`Nama`) REFERENCES `toko_buah` (`Nama`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buah_ibfk_4` FOREIGN KEY (`NO_Transaksi`) REFERENCES `transaksi` (`NO_Transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `toko_buah`
--
ALTER TABLE `toko_buah`
  ADD CONSTRAINT `toko_buah_ibfk_1` FOREIGN KEY (`ID_Distributor`) REFERENCES `distributor` (`ID_Distributor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `toko_buah_ibfk_2` FOREIGN KEY (`ID_karyawan`) REFERENCES `karyawan` (`ID_Karyawan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `toko_buah_ibfk_3` FOREIGN KEY (`ID_pembeli`) REFERENCES `pembeli` (`ID_pembeli`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`ID_pembeli`) REFERENCES `pembeli` (`ID_pembeli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`ID_karyawan`) REFERENCES `karyawan` (`ID_Karyawan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
