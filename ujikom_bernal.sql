-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2022 pada 19.16
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_bernal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailfasilitaskamar`
--

CREATE TABLE `detailfasilitaskamar` (
  `iddetailfasilitaskamar` int(11) NOT NULL,
  `fasilitasid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detailfasilitaskamar`
--

INSERT INTO `detailfasilitaskamar` (`iddetailfasilitaskamar`, `fasilitasid`, `kamarid`, `created_at`, `updated_at`) VALUES
(3, 8, 1, '2022-03-12 10:51:00', '2022-03-12 10:51:00'),
(4, 9, 1, '2022-03-12 10:51:01', '2022-03-12 10:51:01'),
(7, 9, 3, '2022-03-12 11:02:57', '2022-03-12 11:02:57'),
(8, 8, 4, '2022-03-12 11:24:40', '2022-03-12 11:24:40'),
(9, 9, 5, '2022-03-12 11:25:45', '2022-03-12 11:25:45'),
(10, 9, 6, '2022-03-12 11:32:03', '2022-03-12 11:32:03'),
(11, 9, 7, '2022-03-12 17:07:58', '2022-03-12 17:07:58'),
(12, 8, 8, '2022-03-12 17:11:30', '2022-03-12 17:11:30'),
(13, 9, 8, '2022-03-12 17:11:30', '2022-03-12 17:11:30'),
(14, 9, 10, '2022-03-13 15:22:42', '2022-03-13 15:22:42'),
(15, 8, 11, '2022-03-13 15:23:13', '2022-03-13 15:23:13'),
(16, 9, 11, '2022-03-13 15:23:13', '2022-03-13 15:23:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailreservasi`
--

CREATE TABLE `detailreservasi` (
  `iddetailreservasi` int(11) NOT NULL,
  `reservasiid` int(11) NOT NULL,
  `kamar_idkamar` int(11) NOT NULL,
  `extraid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `extra`
--

CREATE TABLE `extra` (
  `idextra` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `harga` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `idfasilitas` int(11) NOT NULL,
  `namafasilitas` varchar(50) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `picture` varchar(45) NOT NULL,
  `jenisfasilitas` enum('KAMAR','HOTEL') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`idfasilitas`, `namafasilitas`, `icon`, `picture`, `jenisfasilitas`) VALUES
(1, 'Shower', '', '7982-IMG-Picture.JPG', 'HOTEL'),
(2, 'Kamar', '', '9512-IMG-Picture.JPG', 'HOTEL'),
(3, 'Kasur', '', '9343-IMG-Picture.JPG', 'HOTEL'),
(4, 'Shower', '', '1000-IMG-Picture.JPG', 'HOTEL'),
(5, 'Shower', '', '6470-IMG-Picture.jpg', 'HOTEL'),
(6, 'Shower', '', '4859-IMG-Picture.jpg', 'HOTEL'),
(7, 'Shower', '', '4524-IMG-Picture.jpg', 'HOTEL'),
(8, 'Kasur', 'fas fa-bed', '', 'KAMAR'),
(9, 'Shower', 'fas fa-shower', '', 'KAMAR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamar`
--

CREATE TABLE `kamar` (
  `idkamar` int(11) NOT NULL,
  `namakamar` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `jumlahqty` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tipekamarid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kamar`
--

INSERT INTO `kamar` (`idkamar`, `namakamar`, `harga`, `jumlahqty`, `description`, `created_at`, `update_at`, `tipekamarid`) VALUES
(4, 'Kamar 3', 1, 1, '1', '2022-03-12 11:24:40', '2022-03-12 11:24:40', 1),
(5, 'Kamar 8', 1, 1, '1', '2022-03-12 11:25:45', '2022-03-12 11:25:45', 3),
(6, 'Kamar 4', 3, 3, '3', '2022-03-12 11:32:03', '2022-03-12 11:32:03', 1),
(7, '111', 1, 1, '122', '2022-03-12 17:07:58', '2022-03-12 17:07:58', 1),
(8, '232 new', 323, 232, '32', '2022-03-12 17:11:30', '2022-03-12 17:11:30', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamargalery`
--

CREATE TABLE `kamargalery` (
  `idkamargalery` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `is_active` enum('YES','NO') NOT NULL,
  `kamarid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kamargalery`
--

INSERT INTO `kamargalery` (`idkamargalery`, `url`, `text`, `is_active`, `kamarid`, `created_at`, `updated_at`) VALUES
(4, '7825-IMG-Picture.jpg', '', 'YES', 5, '2022-03-12 11:25:45', '2022-03-12 11:25:45'),
(5, '6101-IMG-Picture.jpg', '', 'YES', 6, '2022-03-12 11:32:03', '2022-03-12 11:32:03'),
(6, '4189-IMG-Picture.jpg', '', 'YES', 7, '2022-03-12 17:07:58', '2022-03-12 17:07:58'),
(7, '2329-IMG-Picture.jpg', '', 'YES', 8, '2022-03-12 17:11:30', '2022-03-12 17:11:30'),
(8, '5703-IMG-Picture.jpg', '', 'YES', 10, '2022-03-13 15:22:42', '2022-03-13 15:22:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `idrating` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tamuid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`idrating`, `value`, `created_at`, `updated_at`, `tamuid`, `kamarid`) VALUES
(1, 4, '2022-03-16 10:25:14', '2022-03-16 10:25:14', 1, 4),
(2, 5, '2022-03-16 10:25:32', '2022-03-16 10:25:32', 2, 4),
(3, 5, '2022-03-16 10:27:09', '2022-03-16 10:27:09', 1, 5),
(4, 5, '2022-03-16 10:27:17', '2022-03-16 10:27:17', 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `idreservasi` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `lama` int(11) NOT NULL,
  `status` enum('reservasi','checkin','checkout','cancel') NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `canceled_by` int(11) DEFAULT NULL,
  `approved_date` datetime NOT NULL,
  `canceled_date` datetime NOT NULL,
  `tamuid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL,
  `qtykamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`idreservasi`, `startdate`, `enddate`, `lama`, `status`, `created_at`, `update_at`, `approved_by`, `canceled_by`, `approved_date`, `canceled_date`, `tamuid`, `kamarid`, `qtykamar`) VALUES
(1, '2022-03-16', '2022-03-16', 1, 'checkout', '2022-03-16 10:36:06', NULL, NULL, NULL, '2022-03-16 11:35:43', '2022-03-16 11:35:43', 1, 5, 1),
(2, '2022-03-16', '2022-03-16', 1, 'reservasi', '2022-03-16 10:36:33', NULL, NULL, NULL, '2022-03-16 11:36:15', '2022-03-16 11:36:15', 2, 5, 1);

--
-- Trigger `reservasi`
--
DELIMITER $$
CREATE TRIGGER `reservasi` AFTER UPDATE ON `reservasi` FOR EACH ROW BEGIN
IF new.status='cekin' THEN
BEGIN
UPDATE kamar SET jumlah=jumlah-old.jumlah_kamar WHERE idkamar-old.kamarid;
end;
END IF;
IF new.status='cekout' THEN
BEGIN
UPDATE kamar SET jumlah=jumlah+old.jumlah_kamar WHERE idkamar=old.kamarid;
end;
END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `triger hotel` AFTER UPDATE ON `reservasi` FOR EACH ROW BEGIN
   if new.status='checkin' THEN
       UPDATE kAMAR SET jumlahqty=jumlahqty-
       old.qtykamar WHERE idkamar = old.kamarid;
     END IF;
     IF new.status='chekout' THEN 
       UPDATE kamar SET
jumlahqty=jumlahqty+old.kamarid WHERE idkamar= old.kamarid;
END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review`
--

CREATE TABLE `review` (
  `idreview` int(11) NOT NULL,
  `review` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `tamuid` int(11) NOT NULL,
  `kamarid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `review`
--

INSERT INTO `review` (`idreview`, `review`, `created_at`, `updated_at`, `tamuid`, `kamarid`) VALUES
(1, 'Bagus', '2022-03-16 10:25:58', '2022-03-16 10:25:58', 1, 4),
(2, 'Sangat Bagus', '2022-03-16 10:26:16', '2022-03-16 10:26:16', 2, 4),
(3, 'Sangat Bagus', '2022-03-16 10:27:53', '2022-03-16 10:27:53', 1, 5),
(4, 'Sangat Bagus', '2022-03-16 10:28:08', '2022-03-16 10:28:08', 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

CREATE TABLE `tamu` (
  `idtamu` int(11) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jeniskelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `ismember` enum('YA','NO') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`idtamu`, `nik`, `nama`, `jeniskelamin`, `alamat`, `telepon`, `username`, `password`, `ismember`, `created_at`, `updated_at`) VALUES
(1, '123456789', 'Lilis Suryani', 'perempuan', 'Waringin', '08', 'lilis@hotel.com', '123456789', 'YA', '2022-03-16 10:22:16', '2022-03-15 17:00:00'),
(2, '123456788', 'Zeni Destia Ningsih', 'perempuan', 'Indonesia', '08', 'zeni@hotel.com', '123456789', 'YA', '2022-03-16 10:23:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipekamar`
--

CREATE TABLE `tipekamar` (
  `idtipekamar` int(11) NOT NULL,
  `tipekamar` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tipekamar`
--

INSERT INTO `tipekamar` (`idtipekamar`, `tipekamar`) VALUES
(3, 'Deluxe'),
(1, 'Super Deluxe'),
(4, 'VVIP'),
(5, 'VVIPP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `namauser` varchar(50) NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `notelepon` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `role` enum('ADMIN','RECEPTIONIST') NOT NULL,
  `photo` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`idusers`, `namauser`, `jk`, `alamat`, `notelepon`, `username`, `password`, `role`, `photo`, `created_at`, `update_at`) VALUES
(3, 'Lilis Suryani', 'perempuan', 'Indonesia', '08', 'lilis@admin.com', '$2y$10$eudEwJOHm/ISxSMYBqrSceY0OvhVi2RJ91ckwT9ABz/BOIblqqY0.', 'ADMIN', '2611-IMG-Picture.jpg', '2022-03-17 15:59:57', '2022-03-17 15:59:57'),
(4, 'Lilis Sur', 'perempuan', 'Indonesia', '08', 'lilis@resepsionis.com', '$2y$10$mrnVGY0snY5MYJgGcVY0COjf/kIG0buC7vR9HOJj8l/2y3kktTwkG', 'RECEPTIONIST', '3056-IMG-Picture.jpg', '2022-03-17 16:50:28', '2022-03-17 16:50:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detailfasilitaskamar`
--
ALTER TABLE `detailfasilitaskamar`
  ADD PRIMARY KEY (`iddetailfasilitaskamar`),
  ADD KEY `fasilitasid` (`fasilitasid`),
  ADD KEY `kamarid` (`kamarid`);

--
-- Indeks untuk tabel `detailreservasi`
--
ALTER TABLE `detailreservasi`
  ADD PRIMARY KEY (`iddetailreservasi`),
  ADD UNIQUE KEY `reservasiid` (`reservasiid`),
  ADD KEY `extraid` (`extraid`),
  ADD KEY `kamar_idkamar` (`kamar_idkamar`);

--
-- Indeks untuk tabel `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`idextra`);

--
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`idfasilitas`);

--
-- Indeks untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`idkamar`),
  ADD KEY `tipekamar` (`tipekamarid`);

--
-- Indeks untuk tabel `kamargalery`
--
ALTER TABLE `kamargalery`
  ADD PRIMARY KEY (`idkamargalery`),
  ADD KEY `kamarid` (`kamarid`);

--
-- Indeks untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`idrating`),
  ADD KEY `tamuid` (`tamuid`),
  ADD KEY `kamarid` (`kamarid`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`idreservasi`),
  ADD KEY `tamu_id` (`tamuid`),
  ADD KEY `kamarid` (`kamarid`);

--
-- Indeks untuk tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`idreview`),
  ADD KEY `tamuid` (`tamuid`),
  ADD KEY `kamarid` (`kamarid`);

--
-- Indeks untuk tabel `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`idtamu`);

--
-- Indeks untuk tabel `tipekamar`
--
ALTER TABLE `tipekamar`
  ADD PRIMARY KEY (`idtipekamar`),
  ADD KEY `tipekamar` (`tipekamar`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detailfasilitaskamar`
--
ALTER TABLE `detailfasilitaskamar`
  MODIFY `iddetailfasilitaskamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `detailreservasi`
--
ALTER TABLE `detailreservasi`
  MODIFY `iddetailreservasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `extra`
--
ALTER TABLE `extra`
  MODIFY `idextra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `idfasilitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kamar`
--
ALTER TABLE `kamar`
  MODIFY `idkamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kamargalery`
--
ALTER TABLE `kamargalery`
  MODIFY `idkamargalery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `idrating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `idreservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `review`
--
ALTER TABLE `review`
  MODIFY `idreview` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tamu`
--
ALTER TABLE `tamu`
  MODIFY `idtamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tipekamar`
--
ALTER TABLE `tipekamar`
  MODIFY `idtipekamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `kamar_ibfk_1` FOREIGN KEY (`tipekamarid`) REFERENCES `tipekamar` (`idtipekamar`);

--
-- Ketidakleluasaan untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`tamuid`) REFERENCES `tamu` (`idtamu`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`kamarid`) REFERENCES `kamar` (`idkamar`);

--
-- Ketidakleluasaan untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `reservasi_ibfk_1` FOREIGN KEY (`tamuid`) REFERENCES `tamu` (`idtamu`),
  ADD CONSTRAINT `reservasi_ibfk_2` FOREIGN KEY (`kamarid`) REFERENCES `kamar` (`idkamar`);

--
-- Ketidakleluasaan untuk tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`tamuid`) REFERENCES `tamu` (`idtamu`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`kamarid`) REFERENCES `kamar` (`idkamar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
