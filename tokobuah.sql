-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 06:56 AM
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
('1234', 'Jeruk Bali', 'Lampung Barat', '15-mei-2020'),
('1435', 'Apel ', 'Bandar Lampung', '19-mei-2020'),
('8787', 'Duku', 'palembang', '14-2020');

-- --------------------------------------------------------

--
-- Table structure for table `gudang`
--

CREATE TABLE `gudang` (
  `No_Penyimpanan` varchar(50) NOT NULL,
  `Jenis` varchar(50) NOT NULL,
  `Stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gudang`
--

INSERT INTO `gudang` (`No_Penyimpanan`, `Jenis`, `Stok`) VALUES
('123412', 'Jeruk', 35),
('6767', 'Apel amerika', 40),
('8723', 'Duku Meliaceee', 45);

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

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`ID_Karyawan`, `Nama`, `Alamat`, `Gaji`, `Umur`, `Jenis_Kelamin`) VALUES
('118140088', 'Ardi Gaya Manalu', 'jln.Ryachudu', 'Rp; 2.000 jt', 20, 'Laki-laki'),
('118140112', 'Michael Jireh Martua', 'Jln.Bekasi', 'Rp: 4.500 jt', 20, 'laki_laki'),
('118140150', 'Nur Muhammad Husein Paku Alamsyah', '-', 'Rp: 5.500 jt', 23, 'laki_laki');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('ardimanalu', '118140088');

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

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`ID_pembeli`, `Nama`, `Alamat`, `No_HP`) VALUES
('118140088', 'ardi manalu', 'jln.Ryachudu', 812341),
('118140112', 'Michael Jireh Martua', 'jln.bekasi', 64323232),
('118140150', 'Nur Muhammad Husein Paku Alamsyah', '-', 12312121);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(30) NOT NULL,
  `password` varchar(9) NOT NULL,
  `Nama Lengkap` varchar(40) NOT NULL,
  `No_HP` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `password`, `Nama Lengkap`, `No_HP`) VALUES
('ardimanalu', '118140088', 'Ardi gaya Manalu', '091234567');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_buah`
--

CREATE TABLE `tabel_buah` (
  `Nama` varchar(50) NOT NULL,
  `Harga_Pokok` varchar(20) NOT NULL,
  `ID_Distributor` varchar(20) NOT NULL,
  `Expired` varchar(20) NOT NULL,
  `Daerah` varchar(20) NOT NULL,
  `Jenis` varchar(20) NOT NULL,
  `Kualitas` varchar(20) NOT NULL,
  `NO_Transaksi` varchar(10) NOT NULL,
  `No_Penyimpanan` varchar(50) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `Stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_buah`
--

INSERT INTO `tabel_buah` (`Nama`, `Harga_Pokok`, `ID_Distributor`, `Expired`, `Daerah`, `Jenis`, `Kualitas`, `NO_Transaksi`, `No_Penyimpanan`, `tanggal`, `Stok`) VALUES
('Apel ', 'Rp:12.000', '1435', '30-mei-2020', 'Bandar Lampung', 'Apel amerika', 'Baguss', '5656', '6767', '19-mei-2020', 40),
('Duku', 'Rp:10.000', '8787', '19-mei-2020', 'palembang', 'Duku Meliaceee', 'Bagus, enakk', '2132', '8723', '14-2020', 45),
('Jeruk Bali', 'Rp:10.000', '1234', '19-mei-2020', 'Lampung Barat', 'Jeruk', 'Bagus', '123312', '123412', '15-mei-2020', 35);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `NO_Transaksi` varchar(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Harga_Pokok` varchar(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`NO_Transaksi`, `Nama`, `Harga_Pokok`, `tanggal`) VALUES
('123312', 'Jeruk Bali', 'Rp:10.000', '15-mei-2020'),
('2132', 'Duku', 'Rp:10.000', '14-2020'),
('5656', 'Apel ', 'Rp:12.000', '19-mei-2020');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`ID_pembeli`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tabel_buah`
--
ALTER TABLE `tabel_buah`
  ADD PRIMARY KEY (`Nama`),
  ADD KEY `No_Penyimpanan` (`No_Penyimpanan`),
  ADD KEY `NO_Transaksi` (`NO_Transaksi`),
  ADD KEY `ID_Distributor` (`ID_Distributor`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`NO_Transaksi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `distributor`
--
ALTER TABLE `distributor`
  ADD CONSTRAINT `distributor_ibfk_1` FOREIGN KEY (`ID_Distributor`) REFERENCES `tabel_buah` (`ID_Distributor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gudang`
--
ALTER TABLE `gudang`
  ADD CONSTRAINT `gudang_ibfk_1` FOREIGN KEY (`No_Penyimpanan`) REFERENCES `tabel_buah` (`No_Penyimpanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`username`) REFERENCES `register` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`NO_Transaksi`) REFERENCES `tabel_buah` (`NO_Transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
