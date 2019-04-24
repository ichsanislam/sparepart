-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 04:21 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparepart`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_barang`
--

CREATE TABLE `table_barang` (
  `kd_barang` varchar(100) NOT NULL,
  `nm_barang` varchar(100) DEFAULT NULL,
  `hrg_jual` varchar(100) DEFAULT NULL,
  `hrg_beli` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_barang`
--

INSERT INTO `table_barang` (`kd_barang`, `nm_barang`, `hrg_jual`, `hrg_beli`, `satuan`, `kategori`) VALUES
('b001', 'mdskmkd', '121221', '121111', '1', 'Yamaha');

-- --------------------------------------------------------

--
-- Table structure for table `table_penjualan`
--

CREATE TABLE `table_penjualan` (
  `tgl_faktur` varchar(100) DEFAULT NULL,
  `no_faktur` varchar(100) NOT NULL,
  `kode_barang` varchar(100) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `nama_konsumen` varchar(100) DEFAULT NULL,
  `jumlah` varchar(100) DEFAULT NULL,
  `harga_satuan` varchar(100) DEFAULT NULL,
  `harga_total` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_penjualan`
--

INSERT INTO `table_penjualan` (`tgl_faktur`, `no_faktur`, `kode_barang`, `nama_barang`, `nama_konsumen`, `jumlah`, `harga_satuan`, `harga_total`) VALUES
('23-04-2019', 'P001', 'b001', 'mdskmkd', 'mmamas', '121221', '1', '121221');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_barang`
--
ALTER TABLE `table_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indexes for table `table_penjualan`
--
ALTER TABLE `table_penjualan`
  ADD PRIMARY KEY (`no_faktur`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
