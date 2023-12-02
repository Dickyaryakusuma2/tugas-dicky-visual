-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 06:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apk_dicky`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelahiran`
--

CREATE TABLE `kelahiran` (
  `id_kelahiran` int(11) NOT NULL,
  `tgl_kelahiran` date NOT NULL,
  `nama_bayi` varchar(100) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `berat_bayi` int(11) NOT NULL,
  `panjang_bayi` int(11) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `lokasi_lahir` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `id_kartu_keluarga` int(11) NOT NULL,
  `penolong` varchar(100) NOT NULL,
  `status_pengajuan` int(2) NOT NULL,
  `tanggal_pengajuan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelahiran`
--

INSERT INTO `kelahiran` (`id_kelahiran`, `tgl_kelahiran`, `nama_bayi`, `jk`, `berat_bayi`, `panjang_bayi`, `nama_ayah`, `nama_ibu`, `lokasi_lahir`, `tempat_lahir`, `id_kartu_keluarga`, `penolong`, `status_pengajuan`, `tanggal_pengajuan`) VALUES
(9, '2023-01-19', 'Dodo', 'Laki-Laki', 5, 20, '', 'Siti', 'Rumah Sakit', 'Banjarmasin', 1, 'Tuti', 1, '2023-01-18 17:08:21'),
(10, '2023-01-19', 'Udin', 'Laki-Laki', 2, 10, '', 'Ramnah', 'Rumah Sakit', 'Banjarmasin', 1, 'Tuti', 1, '2023-01-19 05:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `kematian`
--

CREATE TABLE `kematian` (
  `id_kematian` int(11) NOT NULL,
  `tgl_meninggal` date NOT NULL,
  `sebab` text NOT NULL,
  `id_warga` int(11) NOT NULL,
  `tempat_kematian` varchar(100) NOT NULL,
  `nama_pelapor` varchar(50) NOT NULL,
  `hubungan_pelapor` varchar(50) NOT NULL,
  `status_pengajuan` int(2) NOT NULL,
  `tanggal_pengajuan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kematian`
--

INSERT INTO `kematian` (`id_kematian`, `tgl_meninggal`, `sebab`, `id_warga`, `tempat_kematian`, `nama_pelapor`, `hubungan_pelapor`, `status_pengajuan`, `tanggal_pengajuan`) VALUES
(5, '2023-01-19', 'Sakit', 1, 'Rumah Sakit Ulin', 'Dodo', 'Saudara', 1, '2023-01-18 17:25:03'),
(6, '2023-01-19', 'sakit', 1, 'Rumah Sakit Ulin', 'Dodo', 'Saudara', 1, '2023-01-19 05:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `ktp_sementara`
--

CREATE TABLE `ktp_sementara` (
  `id_ktp_sementara` int(11) NOT NULL,
  `id_warga` int(11) NOT NULL,
  `berlaku_tanggal` date NOT NULL,
  `berlaku_sampai_tanggal` date NOT NULL,
  `status_pengajuan` int(2) NOT NULL,
  `tanggal_pengajuan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ktp_sementara`
--

INSERT INTO `ktp_sementara` (`id_ktp_sementara`, `id_warga`, `berlaku_tanggal`, `berlaku_sampai_tanggal`, `status_pengajuan`, `tanggal_pengajuan`) VALUES
(5, 1, '2023-01-19', '2023-03-28', 1, '2023-01-18 17:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gambar` text NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `username`, `password`, `no_hp`, `email`, `gambar`, `level`) VALUES
(1, 'Admin Utama', '21232f297a57a5a743894a0e4a801fc3', '08823333333', 'admin@admin.com', '', 1),
(2, 'Maryon Setiawan', 'e0dc1c969db5fa159c0e3ccc290e2314', '08783181134', 'camat@gmail.com', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sk_domisili`
--

CREATE TABLE `sk_domisili` (
  `id_sk_domisili` int(11) NOT NULL,
  `id_warga` int(11) NOT NULL,
  `status` varchar(40) NOT NULL,
  `domisili` varchar(100) NOT NULL,
  `status_pengajuan` int(2) NOT NULL,
  `tanggal_pengajuan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_domisili`
--

INSERT INTO `sk_domisili` (`id_sk_domisili`, `id_warga`, `status`, `domisili`, `status_pengajuan`, `tanggal_pengajuan`) VALUES
(7, 1, '', 'jl. garis 1 komp.mitra bakti jalur 8 no.154', 1, '2023-01-18 17:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `sk_usaha`
--

CREATE TABLE `sk_usaha` (
  `id_sk_usaha` int(11) NOT NULL,
  `id_warga` int(11) NOT NULL,
  `jenis_usaha` varchar(100) NOT NULL,
  `status_pengajuan` int(2) NOT NULL,
  `tanggal_pengajuan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sk_usaha`
--

INSERT INTO `sk_usaha` (`id_sk_usaha`, `id_warga`, `jenis_usaha`, `status_pengajuan`, `tanggal_pengajuan`) VALUES
(8, 1, 'Meubel', 1, '2023-01-18 17:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `warga`
--

CREATE TABLE `warga` (
  `id_warga` int(11) NOT NULL,
  `nik_warga` varchar(30) NOT NULL,
  `nama_warga` varchar(100) NOT NULL,
  `tempat_lahir_warga` varchar(100) NOT NULL,
  `tanggal_lahir_warga` date NOT NULL,
  `jenis_kelamin_warga` varchar(20) NOT NULL,
  `alamat_ktp_warga` varchar(100) NOT NULL,
  `agama_warga` varchar(50) NOT NULL,
  `pendidikan_terakhir_warga` varchar(50) NOT NULL,
  `pekerjaan_warga` varchar(50) NOT NULL,
  `bisa_membaca` varchar(20) NOT NULL,
  `status_perkawinan` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `foto_warga` text NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warga`
--

INSERT INTO `warga` (`id_warga`, `nik_warga`, `nama_warga`, `tempat_lahir_warga`, `tanggal_lahir_warga`, `jenis_kelamin_warga`, `alamat_ktp_warga`, `agama_warga`, `pendidikan_terakhir_warga`, `pekerjaan_warga`, `bisa_membaca`, `status_perkawinan`, `no_hp`, `foto_warga`, `password`) VALUES
(1, '988311', 'Sandy', 'Tapin', '2000-06-07', 'Laki-Laki', 'jl. garis 1 komp.mitra bakti jalur 8 no.154', 'Islam', 'SMA', 'Programmmer', 'BISA', 'SUDAH MENIKAH', '082251552839', '', ''),
(2, '2837', 'Udin', 'Tapin', '2000-06-01', 'Laki-Laki', 'bjmm', 'Hindu', 'SMK', 'Programmmer', 'BISA', 'SUDAH MENIKAH', '082251552839', '', '6bec9c852847242e384a4d5ac0962ba0'),
(3, '78682431', 'Rizal', 'Banjarmasin', '2000-05-31', 'Laki-Laki', 'Jl. pangerannn', 'Islam', 'SMK', 'Programmmer', 'BISA', 'JANDA / DUDA', '081545651813', '', '150fb021c56c33f82eef99253eb36ee1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelahiran`
--
ALTER TABLE `kelahiran`
  ADD PRIMARY KEY (`id_kelahiran`);

--
-- Indexes for table `kematian`
--
ALTER TABLE `kematian`
  ADD PRIMARY KEY (`id_kematian`);

--
-- Indexes for table `ktp_sementara`
--
ALTER TABLE `ktp_sementara`
  ADD PRIMARY KEY (`id_ktp_sementara`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `sk_domisili`
--
ALTER TABLE `sk_domisili`
  ADD PRIMARY KEY (`id_sk_domisili`);

--
-- Indexes for table `sk_usaha`
--
ALTER TABLE `sk_usaha`
  ADD PRIMARY KEY (`id_sk_usaha`);

--
-- Indexes for table `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`id_warga`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kelahiran`
--
ALTER TABLE `kelahiran`
  MODIFY `id_kelahiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kematian`
--
ALTER TABLE `kematian`
  MODIFY `id_kematian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ktp_sementara`
--
ALTER TABLE `ktp_sementara`
  MODIFY `id_ktp_sementara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sk_domisili`
--
ALTER TABLE `sk_domisili`
  MODIFY `id_sk_domisili` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sk_usaha`
--
ALTER TABLE `sk_usaha`
  MODIFY `id_sk_usaha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `warga`
--
ALTER TABLE `warga`
  MODIFY `id_warga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
