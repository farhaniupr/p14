-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15 Okt 2020 pada 14.44
-- Versi Server: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akuns`
--

CREATE TABLE IF NOT EXISTS `akuns` (
  `id` bigint(20) unsigned NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `email` longtext,
  `pass` longtext,
  `passl` longtext
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akuns`
--

INSERT INTO `akuns` (`id`, `created_at`, `updated_at`, `deleted_at`, `email`, `pass`, `passl`) VALUES
(1, '2020-10-13 10:55:27.084', '2020-10-13 15:44:05.572', NULL, 'farhaniupr@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(3, '2020-10-13 12:50:01.587', '2020-10-13 12:50:01.587', NULL, 'farhani@mhs.it.upr.ac.id', '3132333481dc9bdb52d04dc20036dbd8313ed055', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akuns`
--
ALTER TABLE `akuns`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_akuns_deleted_at` (`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akuns`
--
ALTER TABLE `akuns`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
