-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 06, 2026 at 09:12 PM
-- Server version: 8.4.3
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `jumlah` int DEFAULT '0',
  `harga` decimal(12,2) NOT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `crated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `kategori`, `jumlah`, `harga`, `lokasi`, `crated_at`) VALUES
(4, 'Laptop Dell XPS 15', 'Elektronik', 5, 15000000.00, 'Gudang A', '2026-05-06 20:55:39'),
(5, 'Laptop Asus VivoBook', 'Elektronik', 8, 9500000.00, 'Gudang A', '2026-05-06 20:55:39'),
(6, 'Monitor LG 24 inch', 'Elektronik', 12, 3200000.00, 'Gudang A', '2026-05-06 20:55:39'),
(7, 'Printer HP LaserJet', 'Elektronik', 3, 4500000.00, 'Gudang A', '2026-05-06 20:55:39'),
(8, 'Scanner Canon DR', 'Elektronik', 2, 6000000.00, 'Gudang A', '2026-05-06 20:55:39'),
(9, 'Keyboard Logitech MX', 'Elektronik', 20, 850000.00, 'Gudang B', '2026-05-06 20:55:39'),
(10, 'Mouse Wireless Logitech', 'Elektronik', 25, 450000.00, 'Gudang B', '2026-05-06 20:55:39'),
(11, 'Headset Sony WH-1000', 'Elektronik', 10, 3500000.00, 'Gudang B', '2026-05-06 20:55:39'),
(12, 'Webcam Logitech C920', 'Elektronik', 7, 1200000.00, 'Gudang B', '2026-05-06 20:55:39'),
(13, 'UPS APC 650VA', 'Elektronik', 4, 1800000.00, 'Gudang A', '2026-05-06 20:55:39'),
(14, 'Router TP-Link AC1200', 'Elektronik', 6, 950000.00, 'Gudang A', '2026-05-06 20:55:39'),
(15, 'Switch Hub 8 Port', 'Elektronik', 5, 650000.00, 'Gudang A', '2026-05-06 20:55:39'),
(16, 'Proyektor Epson EB-X51', 'Elektronik', 2, 8500000.00, 'Gudang C', '2026-05-06 20:55:39'),
(17, 'Televisi Samsung 43 inch', 'Elektronik', 3, 6500000.00, 'Gudang C', '2026-05-06 20:55:39'),
(18, 'Hardisk Eksternal 1TB', 'Elektronik', 15, 750000.00, 'Gudang B', '2026-05-06 20:55:39'),
(19, 'Meja Kerja Kayu Jati', 'Furnitur', 8, 2500000.00, 'Gudang C', '2026-05-06 20:55:39'),
(20, 'Kursi Ergonomis Kantor', 'Furnitur', 15, 1800000.00, 'Gudang C', '2026-05-06 20:55:39'),
(21, 'Lemari Arsip 4 Laci', 'Furnitur', 5, 3200000.00, 'Gudang C', '2026-05-06 20:55:39'),
(22, 'Rak Buku Besi', 'Furnitur', 10, 850000.00, 'Gudang C', '2026-05-06 20:55:39'),
(23, 'Meja Rapat Oval', 'Furnitur', 2, 7500000.00, 'Gudang C', '2026-05-06 20:55:39'),
(24, 'Kursi Rapat Lipat', 'Furnitur', 30, 450000.00, 'Gudang C', '2026-05-06 20:55:39'),
(25, 'Sofa Ruang Tunggu', 'Furnitur', 3, 4500000.00, 'Gudang C', '2026-05-06 20:55:39'),
(26, 'Loker Karyawan 6 Pintu', 'Furnitur', 4, 2800000.00, 'Gudang C', '2026-05-06 20:55:39'),
(27, 'Papan Tulis Whiteboard', 'Furnitur', 6, 650000.00, 'Gudang C', '2026-05-06 20:55:39'),
(28, 'Partisi Kantor 180cm', 'Furnitur', 12, 1200000.00, 'Gudang C', '2026-05-06 20:55:39'),
(29, 'Pulpen Pilot G2 (box)', 'Alat Tulis', 50, 85000.00, 'Gudang B', '2026-05-06 20:55:39'),
(30, 'Pensil 2B Faber Castell (lusin)', 'Alat Tulis', 30, 45000.00, 'Gudang B', '2026-05-06 20:55:39'),
(31, 'Kertas HVS A4 80gr (rim)', 'Alat Tulis', 100, 55000.00, 'Gudang B', '2026-05-06 20:55:39'),
(32, 'Stabilo Boss (set 4 warna)', 'Alat Tulis', 40, 35000.00, 'Gudang B', '2026-05-06 20:55:39'),
(33, 'Spidol Whiteboard (set)', 'Alat Tulis', 25, 65000.00, 'Gudang B', '2026-05-06 20:55:39'),
(34, 'Penggaris Besi 30cm', 'Alat Tulis', 20, 25000.00, 'Gudang B', '2026-05-06 20:55:39'),
(35, 'Gunting Besar', 'Alat Tulis', 15, 35000.00, 'Gudang B', '2026-05-06 20:55:39'),
(36, 'Selotip Bening (lusin)', 'Alat Tulis', 30, 48000.00, 'Gudang B', '2026-05-06 20:55:39'),
(37, 'Map Plastik Bening', 'Alat Tulis', 200, 5000.00, 'Gudang B', '2026-05-06 20:55:39'),
(38, 'Binder Clip (kotak)', 'Alat Tulis', 60, 15000.00, 'Gudang B', '2026-05-06 20:55:39'),
(39, 'Mesin Fotokopi Ricoh', 'Peralatan', 1, 35000000.00, 'Gudang A', '2026-05-06 20:55:39'),
(40, 'Mesin Penghancur Kertas', 'Peralatan', 2, 2500000.00, 'Gudang A', '2026-05-06 20:55:39'),
(41, 'AC Split Daikin 1 PK', 'Peralatan', 8, 4800000.00, 'Gudang A', '2026-05-06 20:55:39'),
(42, 'Kipas Angin Stand Panasonic', 'Peralatan', 10, 650000.00, 'Gudang A', '2026-05-06 20:55:39'),
(43, 'Dispenser Hot & Cold', 'Peralatan', 4, 850000.00, 'Gudang A', '2026-05-06 20:55:39'),
(44, 'Kulkas Kecil Sharp 100L', 'Peralatan', 2, 2200000.00, 'Gudang A', '2026-05-06 20:55:39'),
(45, 'Microwave Panasonic 25L', 'Peralatan', 2, 1500000.00, 'Gudang A', '2026-05-06 20:55:39'),
(46, 'Tangga Lipat Aluminium', 'Peralatan', 3, 750000.00, 'Gudang C', '2026-05-06 20:55:39'),
(47, 'APAR Tabung 3kg', 'Peralatan', 10, 450000.00, 'Gudang C', '2026-05-06 20:55:39'),
(48, 'Kamera CCTV Hikvision', 'Peralatan', 8, 650000.00, 'Gudang A', '2026-05-06 20:55:39'),
(49, 'Kotak P3K Lengkap', 'Lainnya', 5, 350000.00, 'Gudang B', '2026-05-06 20:55:39'),
(50, 'Helm Proyek (lusin)', 'Lainnya', 3, 600000.00, 'Gudang C', '2026-05-06 20:55:39'),
(51, 'Rompi Safety (lusin)', 'Lainnya', 3, 450000.00, 'Gudang C', '2026-05-06 20:55:39'),
(52, 'Karpet Lantai 3x4m', 'Lainnya', 6, 850000.00, 'Gudang C', '2026-05-06 20:55:39'),
(53, 'Tempat Sampah Besar', 'Lainnya', 15, 125000.00, 'Gudang C', '2026-05-06 20:55:39'),
(54, 'Cermin Dinding 60x80cm', 'Lainnya', 4, 350000.00, 'Gudang C', '2026-05-06 20:55:39'),
(55, 'Advan Workpro', 'Elektronik', 19, 5200000.00, 'Gedung A', '2026-05-06 21:02:51'),
(56, 'Buku Sidu', 'Alat Tulis', 24, 3000.00, '', '2026-05-06 21:08:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
