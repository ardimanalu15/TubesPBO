-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 05:24 AM
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
  `Harga_Jual` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buah`
--

INSERT INTO `buah` (`Nama`, `Harga_Pokok`, `Pajak`, `Expired`, `Daerah`, `Jenis`, `Kualitas`, `Harga_Jual`) VALUES
('apel', 'RP: 12.000', 'Rp;1.000', '19-mei-2020', 'Teluk timur', '-', 'Bagus', 'Rp:18.000'),
('Jeruk', 'Rp:15.000', 'Rp:1.000', '19-mei-2020', 'bandar lampung', '-', 'bagus', 'Rp:20.000');

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
  `ID_Karyawan` varchar(10) NOT NULL,
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
('12345', 'ardi', 'jln,matahari', 'Rp: 25.000', 20, 'laki_laki'),
('sdasd', 'sdsad', 'sadaads', 'asdsa', 12, 'asda');

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
  `Jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `NO_Transaksi` varchar(50) NOT NULL,
  `Tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`NO_Transaksi`, `Tanggal`) VALUES
('1234', '19-mei-2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buah`
--
ALTER TABLE `buah`
  ADD PRIMARY KEY (`Nama`);

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
  ADD PRIMARY KEY (`Nama`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`NO_Transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
