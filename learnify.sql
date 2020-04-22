-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 Apr 2020 pada 08.13
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `learnify`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(64) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(0, 'admin', '$2y$10$EX0L5MeIQldpkCuTZW.mjujTaj.Yy20IW0GOluecU/c.es.9r6E5.', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `nip` int(64) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_guru` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_mapel` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `email`, `nama_guru`, `password`, `nama_mapel`) VALUES
(1222111, 'faiz@gmail.com', 'muhammad Faizin', '$2y$10$AlipZN3raTSAa04tJX2b9OrEqgEupL1Bc8pW1x2rnOYB24SgAt1we', 'Pendidikan Agama'),
(1819107728, 'lintang@gmail.com', 'lintang kusuma adji S,pd.', '$2y$10$iUKanYtl6fJMIm8PgFaQTelTPUXBAsytRjEf.j5vp69hhQFC4ZyPq', 'Matematika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(255) NOT NULL,
  `kelas` varchar(128) NOT NULL,
  `nama_siswa` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `materi`
--

CREATE TABLE IF NOT EXISTS `materi` (
`id` int(11) NOT NULL,
  `nama_guru` varchar(128) NOT NULL,
  `nama_mapel` varchar(128) NOT NULL,
  `video` varchar(255) NOT NULL,
  `deskripsi` varchar(1024) NOT NULL,
  `kelas` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `materi`
--

INSERT INTO `materi` (`id`, `nama_guru`, `nama_mapel`, `video`, `deskripsi`, `kelas`) VALUES
(26, 'Imas Kartika S,pd.', 'Matematika', 'Belajar_Matematika_Dasar-_Pengenalan_Metode_Aljabar(seri_040).mp4', 'Dilihat dari etomologi katanya, kata ‘aljabar’ diambil dari bahasa arab al-jabr yang berarti penyatuan bagian yang rusak. Kata al-jabr juga merupakan bagian dari judul buku Ilm al-jabr wa’l-mu??bala yang ditulis oleh Muhammad al-Khwarizmi.\r\n\r\nPada awalnya, kata al-jabr mengacu pada proses pembedahan untuk memperbaiki struktur tulang yang rusak. Baru setelah abad ke-16, istilah al-jabr (aljabar) digunakan untuk istilah matematika.\r\n\r\nAljabar merupakan salah satu cabang besar dari ilmu matematika. Kemahiran dalam materi ini akan membantu kamu dalam menguasai cabang matematika lainnya. Dalam aljabar, kamu akan bertemu dengan materi-materi, antara lain: teori persamaan &amp; pertidaksamaan, logaritma, fungsi kuadrat, bentuk akar, dan polinomial.\r\n\r\nWalaupun banyak yang mengatakan bahwa operasi aljabar adalah materi yang cukup sulit, bukan berarti tidak bisa dipelajari dan ditaklukan. Dengan banyak berlatih, kamu tentu bisa menguasai materi yang ada.', 'X'),
(27, 'Imas Kartika S,pd.', 'Bahasa Inggris', 'login11.mp4', 'Ini cuma test', 'XI'),
(28, 'Imas Kartika S,pd.', 'Matematika', 'Quipper_Video_-_Bahasa_Inggris_Kelas_10_-_Making_An_Appointment.mp4', 'Di video ini ibu akan menjelaskan tentang matematika berbahasa inggris karena videonta gak ada lagi', 'XII'),
(29, 'muhammad andre spd', 'Matematika', 'VID-20180612-WA0011.mp4', 'hdisjdalmdald', 'X'),
(30, 'Imas Kartika S,pd.', 'Matematika', 'VID-20180612-WA00111.mp4', 'dslpdmlsacmalmla,', 'X'),
(31, 'lintang kusuma adji S,pd.', 'Matematika', 'VID-20180612-WA00112.mp4', 'nanml;asm;lfmam;l', 'XI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
`id` int(64) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `password`, `email`, `image`, `is_active`, `date_created`) VALUES
(37, 'Muhammad nur faizin', '$2y$10$iUKanYtl6fJMIm8PgFaQTelTPUXBAsytRjEf.j5vp69hhQFC4ZyPq', 'faizin@gmail.com', 'default.jpg', 1, 1585716607);

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE IF NOT EXISTS `token` (
`id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `token`
--

INSERT INTO `token` (`id`, `email`, `token`, `date_created`) VALUES
(23, 'Nurulannisa@gmail.com', '57z9zVOln+f1pNcduIAp+jsEgTEHeIvD0WD7CrwcnAg=', 1584970468);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
 ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
MODIFY `id` int(64) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
