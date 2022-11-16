-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 08:33 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manajemenperpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `username` varchar(35) NOT NULL,
  `induk` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `pertanyaanKunci` varchar(50) NOT NULL,
  `jawaban` varchar(35) NOT NULL,
  `role` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`username`, `induk`, `nama`, `password`, `pertanyaanKunci`, `jawaban`, `role`) VALUES
('admin', '001', 'AdminPustakawan', '12345', 'Siapa nama panggilanmu saat masih kecil?', 'mimin', 1),
('dosen', '10001', 'DosenTelyu', '1234', 'Siapa nama panggilanmu saat masih kecil?', 'PakDosen', 2),
('edwardbilly', '1301201291', 'Edward Billy', '1234', 'Apa nama SMA anda?', 'Telkom', 3),
('ryan', '1301204125', 'candra', '12345', 'Siapa nama panggilanmu saat masih kecil?', 'can', 3);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` varchar(15) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `kategori` varchar(35) NOT NULL,
  `totalHalaman` int(5) NOT NULL,
  `isbn` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `kategori`, `totalHalaman`, `isbn`) VALUES
('0002', 'Cara kaya', 'Bisnis', 120, '123321-321-321'),
('9009', 'Coding dengan Netbeans', 'Tutorial', 100, '123321-321');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `pinjamId` varchar(25) NOT NULL,
  `idBuku` varchar(25) NOT NULL,
  `judulBuku` varchar(50) NOT NULL,
  `username` varchar(35) NOT NULL,
  `noInduk` varchar(35) NOT NULL,
  `tanggal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`pinjamId`, `idBuku`, `judulBuku`, `username`, `noInduk`, `tanggal`) VALUES
('689788', '2', 'Cara kaya', 'ryan', '1301204125', 'Nov 16, 2022');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `pinjamId` varchar(25) NOT NULL,
  `idBuku` varchar(25) NOT NULL,
  `judulBuku` varchar(50) NOT NULL,
  `username` varchar(35) NOT NULL,
  `noInduk` varchar(35) NOT NULL,
  `tanggalPinjam` varchar(35) NOT NULL,
  `tanggalKembali` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`pinjamId`, `idBuku`, `judulBuku`, `username`, `noInduk`, `tanggalPinjam`, `tanggalKembali`) VALUES
('467313', '9009', 'Coding dengan Netbeans', 'edwardbilly', '1301201291', 'Nov 17, 2022', 'Nov 25, 2022'),
('528838', '9009', 'Coding dengan Netbeans', 'edwardbilly', '1301201291', 'Nov 17, 2022', 'Nov 18, 2022'),
('993280', '9009', 'Coding dengan Netbeans', 'edwardbilly', '1301201291', 'Nov 19, 2022', 'Nov 21, 2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`pinjamId`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`pinjamId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
