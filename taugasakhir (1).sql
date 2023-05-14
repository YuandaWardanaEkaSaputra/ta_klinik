-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Bulan Mei 2023 pada 02.28
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taugasakhir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis_obat`
--

CREATE TABLE `tbl_jenis_obat` (
  `id_jenis_obat` int(11) NOT NULL,
  `jenis_obat` varchar(100) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_jenis_obat`
--

INSERT INTO `tbl_jenis_obat` (`id_jenis_obat`, `jenis_obat`, `keterangan`) VALUES
(3, 'tablet', ''),
(4, 'kapsul', ''),
(5, 'salep', ''),
(6, 'herbal', 'kajsnjhdasdad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `kategori`) VALUES
(1, 'umum'),
(2, 'Gigi'),
(3, 'uncategorized'),
(5, ' '),
(6, 'Penyakit dalam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_obat`
--

CREATE TABLE `tbl_obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `dosis` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_jenis_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_obat`
--

INSERT INTO `tbl_obat` (`id_obat`, `nama_obat`, `dosis`, `harga`, `id_jenis_obat`) VALUES
(5, 'Amoxilin', '5mg', 11500, 4),
(6, 'Oskadon', '10mg', 7500, 3),
(7, 'situplasma suto', '300mg', 5000, 4),
(8, 'jamu', '8494imf f', 200000, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `kd_pasien` char(12) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` enum('pria','wanita') NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` int(15) NOT NULL,
  `no_ktp` varchar(20) NOT NULL,
  `agama` text NOT NULL,
  `menikah` enum('kawin','belumkawin','cerai') NOT NULL,
  `gol_darah` enum('a','b','ab','o') NOT NULL,
  `brt_badan` text NOT NULL,
  `tng_badan` text NOT NULL,
  `instansi_penjamin` enum('mandiri','asuransi','perusahaanpenjaminpasien') NOT NULL,
  `pekerjaan_pasien` text NOT NULL,
  `dept_bagian` text NOT NULL,
  `telp_kantor` varchar(15) NOT NULL,
  `email` text NOT NULL,
  `nama_pngjwb` text NOT NULL,
  `pkj_pngjwb` text NOT NULL,
  `hub_pngjwb` text NOT NULL,
  `bpjs` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_pasien`
--

INSERT INTO `tbl_pasien` (`kd_pasien`, `nama_pasien`, `tempat_lahir`, `tgl_lahir`, `gender`, `alamat`, `no_telp`, `no_ktp`, `agama`, `menikah`, `gol_darah`, `brt_badan`, `tng_badan`, `instansi_penjamin`, `pekerjaan_pasien`, `dept_bagian`, `telp_kantor`, `email`, `nama_pngjwb`, `pkj_pngjwb`, `hub_pngjwb`, `bpjs`) VALUES
('PAS0004', 'Lalan Faturahman', 'Tangerang', '1999-01-21', 'pria', 'PISANGAN', 2147483647, '76662288993883', '', 'kawin', 'a', '', '', 'mandiri', '', '', '', '', '', '', '', ''),
('PAS0005', 'Anis', 'Jakarta', '1990-01-17', 'pria', 'desa karawaci timur', 897652370, '365487127486219', '', 'kawin', 'a', '', '', 'mandiri', '', '', '', '', '', '', '', ''),
('PAS0006', 'roti', 'subang', '2001-02-02', 'pria', 'yuuu', 59585784, '848994355434544', '', 'kawin', 'a', '', '', 'mandiri', '', '', '', '', '', '', '', ''),
('PAS0007', 'yuan', 'subang', '2001-02-02', 'pria', 'indonesia', 2147483647, '98797966', '', 'kawin', 'a', '', '', 'mandiri', '', '', '', '', '', '', '', ''),
('PAS0008', 'dd', 'fddfd', '2022-03-04', 'pria', 'fasfsd', 342423, '4254325235', 'asdfafd', '', 'ab', '42daa', '324ascsa', 'perusahaanpenjaminpasien', 'asda', 'fadaf', '413242', 'adfs', '', '', '', ''),
('PAS0009', 'wkwk', 'subang', '2001-02-02', 'wanita', 'fsadf asdfsdafg', 2147483647, '42423452345', 'dfasdf', '', 'a', '3242fc', '423dfas', '', 'dsfsadsa dsf', 'sdfas asvd', '4242542423', 'czczsdsdf', 'fasdfasdf sdfsa', '', 'sadfasfd', 'dsafasdf4'),
('PAS0010', 'kiki', 'jakarta', '2002-09-09', 'pria', 'rt03rw02kec.mantingan,kab.ngawi,prov.jawa timur ', 2147483647, '12345678', 'islam', '', 'a', '67kg', '200cm', 'mandiri', 'pelajar', 'pelajar', '29328373', 'kiki@gamail.com', 'nonel', '', 'saudara', 'kososng'),
('PAS0011', 'andi', 'ngawi', '2002-09-09', 'pria', 'madiun,jawa timur', 2147483647, '8489943554345009', 'islam', '', 'a', '56kg', '170cm', 'mandiri', 'mahasiswa', '-', '0', 'andi@gmail.com', 'sukir', '', 'ayah kandung', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `nik_pegawai` bigint(20) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `gender` enum('pria','wanita') NOT NULL,
  `jabatan` enum('administrasi','apoteker','dokter') NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `biaya_pemeriksaan` int(20) DEFAULT NULL,
  `tempat_lahir` text NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`nik_pegawai`, `nama_pegawai`, `gender`, `jabatan`, `id_kategori`, `biaya_pemeriksaan`, `tempat_lahir`, `tgl_lahir`, `no_telp`, `alamat`) VALUES
(423535, 'fgfd', 'pria', 'dokter', 6, 5353453, 'sdfg', '1995-12-31', '4235232563', 'vsdvs svasvasfsafd'),
(3637897650002, 'Dr Jaka', 'pria', 'dokter', 1, 25000, 'Bogor', '1990-08-13', '08187654567', 'kota tangerang'),
(36590987640002, 'Dr Amanda', 'wanita', 'dokter', 2, 20000, 'Tangerang', '1993-08-31', '878654327973', 'tangerang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pembayaran`
--

CREATE TABLE `tbl_pembayaran` (
  `no_bayar` varchar(15) NOT NULL,
  `id_resep` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_pembayaran`
--

INSERT INTO `tbl_pembayaran` (`no_bayar`, `id_resep`, `total_harga`, `total_bayar`, `kembalian`, `tgl_bayar`) VALUES
('INV0002', 4, 37500, 50000, 12500, '2019-09-28'),
('INV0003', 5, 36500, 50000, 13500, '2019-09-29'),
('INV0004', 6, 30000, 100000, 70000, '2023-01-25'),
('INV0005', 8, 25000, 6554645, 6529645, '2023-01-29'),
('INV0008', 14, 5568453, 7777777, 2209324, '2023-04-12'),
('INV0009', 15, 5569953, 434343545, 428773592, '2023-04-15'),
('INV0010', 16, 236500, 2000000, 1763500, '2023-05-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pendaftaran`
--

CREATE TABLE `tbl_pendaftaran` (
  `no_pendaftaran` varchar(12) NOT NULL,
  `nik_pegawai` bigint(20) NOT NULL,
  `kd_pasien` char(12) NOT NULL,
  `tgl_daftar` date NOT NULL,
  `keluhan` text NOT NULL,
  `status` enum('selesai','tunggu','periksa') NOT NULL,
  `no_urut` int(11) NOT NULL,
  `upk_poli` text NOT NULL,
  `penjamin` text NOT NULL,
  `no_penjamin` text NOT NULL,
  `rujukan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_pendaftaran`
--

INSERT INTO `tbl_pendaftaran` (`no_pendaftaran`, `nik_pegawai`, `kd_pasien`, `tgl_daftar`, `keluhan`, `status`, `no_urut`, `upk_poli`, `penjamin`, `no_penjamin`, `rujukan`) VALUES
('0205230001', 3637897650002, 'PAS0011', '2023-05-02', 'mual mual', 'selesai', 1, 'ugd', 'mandiri', '0', 'rumah'),
('1204230001', 3637897650002, 'PAS0008', '2023-04-12', 'sdfsd', 'selesai', 1, '34sf', 'sdfsd', 'sdf4535', 'svsdfas'),
('1204230002', 423535, 'PAS0009', '2023-04-12', 'fdffd', 'selesai', 2, 'asdadf', 'sadad', 'afafda31243', 'sadsafda'),
('1504230001', 423535, 'PAS0010', '2023-04-15', 'poseng', 'selesai', 1, 'ugd', 'pribadi', '122324fjf', 'puskesmas sdnsn'),
('2501230001', 3637897650002, 'PAS0006', '2023-01-25', 'poseng', 'selesai', 1, '', '', '', ''),
('2501230002', 3637897650002, 'PAS0006', '2023-01-25', 'poseng', 'selesai', 2, '', '', '', ''),
('2809190001', 36590987640002, 'PAS0004', '2019-09-28', 'sakit pusing', 'selesai', 1, '', '', '', ''),
('2809190002', 3637897650002, 'PAS0005', '2019-09-28', 'sakit mata', 'tunggu', 2, '', '', '', ''),
('2901230001', 36590987640002, 'PAS0006', '2023-01-29', 'gggg', 'selesai', 1, '', '', '', ''),
('2901230002', 3637897650002, 'PAS0007', '2023-01-29', 'poseng', 'tunggu', 2, '', '', '', ''),
('2909190001', 3637897650002, 'PAS0005', '2019-09-29', 'nyeri di ulu hati', 'selesai', 1, '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rekam`
--

CREATE TABLE `tbl_rekam` (
  `id_rekam` int(11) NOT NULL,
  `no_pendaftaran` varchar(12) NOT NULL,
  `tanggal` date NOT NULL,
  `diagnosa` varchar(50) NOT NULL,
  `rujukan` enum('ya','tidak') NOT NULL,
  `rumah_sakit_tujuan` varchar(50) DEFAULT 'Pasien tidak di rujuk',
  `poli_tujuan` varchar(30) DEFAULT 'pasien tidak di rujuk'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_rekam`
--

INSERT INTO `tbl_rekam` (`id_rekam`, `no_pendaftaran`, `tanggal`, `diagnosa`, `rujukan`, `rumah_sakit_tujuan`, `poli_tujuan`) VALUES
(4, '2809190001', '2019-09-28', 'migrain', 'tidak', 'pasien tidak di rujuk', 'pasien tidak di rujuk'),
(5, '2809190002', '2019-09-28', 'meriang', 'ya', 'Rumah sakit harapan', 'poli penyakit dalam'),
(6, '2909190001', '2019-09-29', 'maag', 'ya', 'Rumah sakit sari asih', 'penyakit dalam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_resep`
--

CREATE TABLE `tbl_resep` (
  `id_resep` int(11) NOT NULL,
  `no_pendaftaran` varchar(12) NOT NULL,
  `tanggal` date NOT NULL,
  `diagnosa` text NOT NULL,
  `nama_obat` text NOT NULL,
  `aturan_pakai` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `status_pasien` enum('ditangani','belumditangani') NOT NULL,
  `status_obat` enum('analisisobat','obatdiracik','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_resep`
--

INSERT INTO `tbl_resep` (`id_resep`, `no_pendaftaran`, `tanggal`, `diagnosa`, `nama_obat`, `aturan_pakai`, `kategori`, `status_pasien`, `status_obat`) VALUES
(3, '2809190001', '2019-09-28', 'migrain', 'Amoxilin', '4x1', 'uncategorized', 'ditangani', 'analisisobat'),
(4, '2809190002', '2019-09-28', 'meriang', 'situplasma suto,Oskadon', '3x1,4x1', 'uncategorized', 'ditangani', 'analisisobat'),
(5, '2909190001', '2019-09-29', 'maag', 'Amoxilin', '3x1', 'uncategorized', 'ditangani', 'analisisobat'),
(6, '2501230001', '2023-01-25', 'sehat', 'situplasma suto', '4543', 'uncategorized', 'ditangani', 'analisisobat'),
(7, '2901230002', '2023-01-29', 'sehat', 'situplasma suto', '4543', 'uncategorized', 'ditangani', 'analisisobat'),
(8, '2901230001', '2023-01-29', 'sehat', 'situplasma suto', 'hbs534', 'uncategorized', 'ditangani', 'analisisobat'),
(14, '1204230002', '2023-04-12', 'ffdd', 'Amoxilin,jamu,situplasma suto', '3x1,3x1,3x1', 'umum', 'belumditangani', 'analisisobat'),
(15, '1504230001', '2023-04-15', 'sehat', 'Amoxilin,situplasma suto,jamu', '3x1,4543,hbs534', 'umum', 'belumditangani', 'analisisobat'),
(16, '0205230001', '2023-05-02', 'sehat', 'jamu,Amoxilin', '3x1,3x1', 'umum', 'ditangani', 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL DEFAULT '123456',
  `level` enum('superadmin','staffpendaftaran','dokter','apoteker','kasir') NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `level`, `kategori`, `status`) VALUES
(6, 'gigi', 'gigi', 'dokter', 'gigi', 1),
(7, 'ali', '1', 'superadmin', 'uncategorized', 1),
(8, 'kasir', '12345', 'kasir', 'umum', 1),
(9, 'lalan', '12', 'apoteker', 'uncategorized', 1),
(10, 'dokter', '12345', 'dokter', 'umum', 1),
(11, 'staff', '12345', 'staffpendaftaran', 'umum', 1),
(12, 'apoteker', '12345', 'apoteker', 'umum', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_jenis_obat`
--
ALTER TABLE `tbl_jenis_obat`
  ADD PRIMARY KEY (`id_jenis_obat`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_obat`
--
ALTER TABLE `tbl_obat`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `tbl_obat_ibfk_1` (`id_jenis_obat`);

--
-- Indeks untuk tabel `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD PRIMARY KEY (`kd_pasien`);

--
-- Indeks untuk tabel `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`nik_pegawai`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD PRIMARY KEY (`no_bayar`),
  ADD UNIQUE KEY `id_resep` (`id_resep`);

--
-- Indeks untuk tabel `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD PRIMARY KEY (`no_pendaftaran`),
  ADD KEY `tbl_pendaftaran_ibfk_2` (`nik_pegawai`),
  ADD KEY `tbl_pendaftaran_ibfk_3` (`kd_pasien`);

--
-- Indeks untuk tabel `tbl_rekam`
--
ALTER TABLE `tbl_rekam`
  ADD PRIMARY KEY (`id_rekam`),
  ADD KEY `no_pendaftaran` (`no_pendaftaran`);

--
-- Indeks untuk tabel `tbl_resep`
--
ALTER TABLE `tbl_resep`
  ADD PRIMARY KEY (`id_resep`),
  ADD KEY `tbl_resep_ibfk_1` (`no_pendaftaran`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_jenis_obat`
--
ALTER TABLE `tbl_jenis_obat`
  MODIFY `id_jenis_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_obat`
--
ALTER TABLE `tbl_obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_rekam`
--
ALTER TABLE `tbl_rekam`
  MODIFY `id_rekam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_resep`
--
ALTER TABLE `tbl_resep`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_obat`
--
ALTER TABLE `tbl_obat`
  ADD CONSTRAINT `tbl_obat_ibfk_1` FOREIGN KEY (`id_jenis_obat`) REFERENCES `tbl_jenis_obat` (`id_jenis_obat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD CONSTRAINT `tbl_pegawai_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori` (`id_kategori`);

--
-- Ketidakleluasaan untuk tabel `tbl_pembayaran`
--
ALTER TABLE `tbl_pembayaran`
  ADD CONSTRAINT `tbl_pembayaran_ibfk_2` FOREIGN KEY (`id_resep`) REFERENCES `tbl_resep` (`id_resep`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_pendaftaran`
--
ALTER TABLE `tbl_pendaftaran`
  ADD CONSTRAINT `tbl_pendaftaran_ibfk_2` FOREIGN KEY (`nik_pegawai`) REFERENCES `tbl_pegawai` (`nik_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pendaftaran_ibfk_3` FOREIGN KEY (`kd_pasien`) REFERENCES `tbl_pasien` (`kd_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_rekam`
--
ALTER TABLE `tbl_rekam`
  ADD CONSTRAINT `tbl_rekam_ibfk_1` FOREIGN KEY (`no_pendaftaran`) REFERENCES `tbl_pendaftaran` (`no_pendaftaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_resep`
--
ALTER TABLE `tbl_resep`
  ADD CONSTRAINT `tbl_resep_ibfk_1` FOREIGN KEY (`no_pendaftaran`) REFERENCES `tbl_pendaftaran` (`no_pendaftaran`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
