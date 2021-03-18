-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Mar 2021 pada 18.14
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `json`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` int(3) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tgl_lahir` varchar(15) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `nama_ibu_k` varchar(50) NOT NULL,
  `gender` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `username`, `password`, `nama`, `umur`, `alamat`, `telp`, `email`, `tgl_lahir`, `kode_pos`, `nama_ibu_k`, `gender`) VALUES
(1, 'cust1', '91ec1f9324753048c0096d036a694f86', 'Customer 1', 25, 'Muara Bahari', '09289301', 'test@gmail.com', '', '', '', ''),
(3, 'sandi', '827ccb0eea8a706c4c34a16891f84e7b', 'ariessandi x', 29, 'jakarta', '987899', 'sandi@yahoo.com', '', '', '', ''),
(4, 'aries', '827ccb0eea8a706c4c34a16891f84e7b', 'aries s', 25, 'jakarta', '987980709', 'ss@ymail.com', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `progdi` char(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `progdi`) VALUES
('09.3.00012', 'Siswanto', 'TI-D3'),
('09.5.00056', 'Bejo', 'TI-S1'),
('09.5.00031', 'Suwondo', 'TI-S1'),
('09.3.00051', 'Rani', 'TI-D3'),
('10.5.00043', 'Parjo', 'TI-S1'),
('12.3.00405', 'Wardoyo Guntur Pamungkas', 'TI-S1'),
('10.5.00001', 'Warno', 'TI-S1'),
('10.5.00002', 'Wahyono', 'TI-S1'),
('09.3.00013', 'Wahyono', 'TI-S1'),
('10.3.00032', 'Bagas', 'TI-S1'),
('12.5.00013', 'Adi ', 'TI-S1'),
('12.4.00013', 'Setiyowati', 'SI-S1'),
('12.5.00045', 'Wahyu_Sudewo', 'TI-S1'),
('12.5.00046', 'Bagas Adi Purnama', 'TI-S1'),
('12.4.00041', 'Widodo Saputro Duwe Boto', 'SI-S1'),
('17.01.53.0', 'Budi', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kdmk` char(6) NOT NULL,
  `nmmk` varchar(35) NOT NULL,
  `sks` int(11) NOT NULL,
  `prodi` char(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kdmk`, `nmmk`, `sks`, `prodi`) VALUES
('112233', 'Pemrograman Internet I', 3, 'TI-D3'),
('104531', 'Pemrograman Database', 3, 'TI-D3'),
('812345', 'Basis Data Lanjut', 3, 'TI-S1'),
('780123', 'Interpersonal Skill', 2, 'TI-S1'),
('672134', 'Kewirausahaan', 2, 'TI-S1'),
('671234', 'PTK', 3, 'TI-S1'),
('123211', 'Algoritma & Pemrograman', 3, 'TI-S1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `thakd` char(5) NOT NULL,
  `nim` char(10) NOT NULL,
  `kdmk` char(6) NOT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`thakd`, `nim`, `kdmk`, `nilai`) VALUES
('20122', '09.3.00012', '112233', NULL),
('20122', '09.5.00056', '780123', NULL),
('20122', '09.5.00056', '812345', NULL),
('20122', '10.5.00001', 'M01', NULL),
('20122', '10.5.00001', 'M02', NULL),
('20122', '11.5.00001', 'M01', NULL),
('20122', '11.5.00001', 'M02', NULL),
('20122', '11.5.00001', 'M03', NULL),
('20122', '12.5.00001', 'M04', NULL),
('20122', '12.5.00001', 'M05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kdmk`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`thakd`,`nim`,`kdmk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
