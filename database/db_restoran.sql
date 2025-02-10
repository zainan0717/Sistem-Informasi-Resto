-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2025 at 02:31 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(12) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `id_meja` int(12) NOT NULL,
  `nama_pemesan` varchar(250) NOT NULL,
  `nomor_hp` varchar(250) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_reservasi` date NOT NULL,
  `total_pembayaran` int(12) NOT NULL,
  `total_sudah_dibayar` int(12) NOT NULL,
  `batas_pembayaran_dp` datetime NOT NULL,
  `status_pembayaran` varchar(250) NOT NULL,
  `bukti_pembayaran` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_detail_menu`, `id_meja`, `nama_pemesan`, `nomor_hp`, `tanggal_pesan`, `tanggal_reservasi`, `total_pembayaran`, `total_sudah_dibayar`, `batas_pembayaran_dp`, `status_pembayaran`, `bukti_pembayaran`) VALUES
(1, 'INV20250204193839', 1, 'WAHYU SEPTIAN PRADANA', '080808', '2025-02-04 19:38:39', '2025-02-07', 50000, 50000, '2025-02-05 19:38:39', 'Pesanan Selesai', '040220251340215.png'),
(2, 'INV20250204194758', 1, 'eko', '0', '2025-02-04 19:47:58', '2025-02-07', 20000, 20000, '2025-02-05 19:47:58', 'Pesanan Selesai', 'Gambar Salah'),
(3, 'INV20250207010706', 1, 'Dulgani', '0808', '2025-02-07 01:07:06', '2025-02-06', 70000, 0, '2025-02-08 01:07:06', 'Belum Bayar DP', 'Kosong');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_menu`
--

CREATE TABLE `gambar_menu` (
  `id_gambar` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gambar_menu`
--

INSERT INTO `gambar_menu` (`id_gambar`, `id_menu`, `gambar`) VALUES
(2, 2, '22092021172127mie-ayam.jpg'),
(3, 2, '22092021174747miee2.jpg'),
(5, 2, '22092021175050mi2asd.jpg'),
(6, 1, '22092021180735Bakso_mi_bihun.jpg'),
(7, 1, '220920211807421140357898.jpg'),
(8, 8, '0610202109160311Jugosylicuadosquetequitanlaansiedadyteayudanabajardepeso.jpg'),
(9, 8, '06102021091612Esjerukphotography.jpg'),
(10, 7, '06102021091833Sips-KatieChrist.jpg'),
(12, 7, '06102021091907EsTehSerai-LemongrassIceTea.jpg'),
(14, 16, '06102021092328orange-coconutmilkshake.jpg'),
(16, 16, '06102021092756024b5b71-b655-4e9b-9f7e-fc37ed0eb720.jpg'),
(17, 16, '06102021092845TheBestStrawberryMilkshake-BakingMischief.jpg'),
(19, 12, '06102021093111NasiGoreng(IndonesianFriedRice).jpg'),
(20, 12, '06102021093206BrownRiceNasiGoreng(IndonesianFriedRice)IGeorgieEats.jpg'),
(21, 13, '061020210934115d4481d7-66a4-4e4a-82f6-de49b246e92d.jpg'),
(24, 13, '06102021093658SateKambingYangEmpuk.jpg'),
(25, 15, '06102021093836SopBuntut_IndonesianOxtailSoup.jpg'),
(26, 11, '06102021093956ResepSotoLamonganAsliJawaTimurDenganSuwiranAyamDanKuahKuning.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id_lupa_password` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `pertanyaankeamanan1` varchar(255) NOT NULL,
  `pertanyaankeamanan2` varchar(255) NOT NULL,
  `jawabankeamanan1` varchar(255) NOT NULL,
  `jawabankeamanan2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lupa_password`
--

INSERT INTO `lupa_password` (`id_lupa_password`, `id_pegawai`, `pertanyaankeamanan1`, `pertanyaankeamanan2`, `jawabankeamanan1`, `jawabankeamanan2`) VALUES
(1, 3, 'Siapa nama belakang ibu anda?', 'Apa hobi anda?', 'heni', 'makan'),
(2, 7, 'Siapa nama belakang ibu anda?', 'Apa hobi anda?', 'ibu', 'makan');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id_meja` int(11) NOT NULL,
  `nomor_meja` varchar(50) NOT NULL,
  `kapasitas_meja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id_meja`, `nomor_meja`, `kapasitas_meja`) VALUES
(1, '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `detail_menu` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL DEFAULT 'Tersedia',
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `detail_menu`, `kategori`, `stok`, `harga`) VALUES
(1, 'Bakso', 'Bakso Daging', 'Makanan', 'Tersedia', 20000),
(2, 'Mie Ayam', 'Topping Ayam, Topping Jamur ', 'Makanan', 'Tersedia', 15000),
(7, 'Es Teh', 'Jasmine, Lychee, Oolong', 'Minuman', 'Tersedia', 8000),
(8, 'Es Jeruk', 'Nipis, Lemon, Jeruk Asli', 'Minuman', 'Tersedia', 10000),
(11, 'Soto Lamongan ', 'Dengan Topping ayam', 'Makanan', 'Tersedia', 15000),
(12, 'Nasi Goreng', 'Jawa, Mawut, Seafood', 'Makanan', 'Tersedia', 25000),
(13, 'Sate Daging', 'Ayam asli, Kambing, Sapi', 'Makanan', 'Tersedia', 25000),
(15, 'Sop Buntut', 'Buntut Sapi', 'Makanan', 'Tersedia', 35000),
(16, 'Milkshake', 'Coklat, Vanila, Greentea, Strawberry', 'Minuman', 'Tersedia', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `menu_dibooking`
--

CREATE TABLE `menu_dibooking` (
  `id_menu_dibooking` int(12) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `nama_makanan` varchar(250) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `sub_total` int(12) NOT NULL,
  `status_order` varchar(255) NOT NULL DEFAULT 'success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_dibooking`
--

INSERT INTO `menu_dibooking` (`id_menu_dibooking`, `id_detail_menu`, `nama_makanan`, `jumlah`, `sub_total`, `status_order`) VALUES
(1, 'INV20250204193839', 'Nasi Goreng', 2, 50000, 'success'),
(2, 'INV20250204194758', 'Es Jeruk', 2, 20000, 'success'),
(3, 'INV20250207010706', 'Sop Buntut', 2, 70000, 'success');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_metode` int(12) NOT NULL,
  `nama_merchant` varchar(250) NOT NULL,
  `atas_nama` varchar(250) NOT NULL,
  `kode_pembayaran` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_metode`, `nama_merchant`, `atas_nama`, `kode_pembayaran`) VALUES
(1, 'Dana', 'Wahyu Septian Pradana', '089660833320'),
(2, 'Bank MANDIRI', 'Wahyu Septian Pradana', '1340020966205');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `jabatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `email`, `alamat`, `password`, `telepon`, `jenis_kelamin`, `jabatan`) VALUES
(3, 'Bos Wahyu', 'admin@gmail.com', 'Jl. Anggrek 51 Malang', '21232f297a57a5a743894a0e4a801fc3', '0851248238', 'Pria', 'admin'),
(7, 'kasir', 'kasir', 'pamayahan', 'c7911af3adbd12a035b289556d96470a', '0808', 'Laki-laki', 'pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `profil_usaha`
--

CREATE TABLE `profil_usaha` (
  `id` int(12) NOT NULL,
  `nama_usaha` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `nomor_telepon` varchar(17) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `facebook` varchar(250) NOT NULL,
  `maps_link` text NOT NULL,
  `foto_usaha_1` text NOT NULL,
  `foto_usaha_2` text NOT NULL,
  `foto_usaha_3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profil_usaha`
--

INSERT INTO `profil_usaha` (`id`, `nama_usaha`, `deskripsi`, `alamat`, `nomor_telepon`, `email`, `instagram`, `facebook`, `maps_link`, `foto_usaha_1`, `foto_usaha_2`, `foto_usaha_3`) VALUES
(1, 'WARUNG MANG WAKYOU', 'Waroeng Mang Wakyu adalah sebuah food court yang menyajikan beragam hidangan lezat dengan cita rasa autentik dan harga terjangkau. Mengusung konsep modern namun tetap mempertahankan nuansa tradisional, Waroeng Mang Wakyu menawarkan pengalaman kuliner yang nyaman bagi pelanggan. Dengan sistem pemesanan berbasis web, pelanggan dapat dengan mudah melihat menu, melakukan reservasi meja, serta memesan makanan secara online untuk kemudahan dan kenyamanan.', 'Jl.Raya Sindangkerta Depan Pintu AIr Lohbener - Indramayu', '089660833320', 'warungwayou@gmail.com', 'warungwakyou', 'warungwakyou', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d987.8355996155653!2d112.62659632918319!3d-7.96352259964151!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd6282c92f71d91%3A0xf91198a2dadfe70b!2sJl.%20Brigjend%20Slamet%20Riadi%20No.152a%2C%20Oro-oro%20Dowo%2C%20Kec.%20Klojen%2C%20Kota%20Malang%2C%20Jawa%20Timur%2065119!5e0!3m2!1sid!2sid!4v1636892306365!5m2!1sid!2sid', '04022025110045banner_warung.jpg', '14112021132155makanan-khas-indonesia-header.png', '04022025110045warung.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `saran_kritik`
--

CREATE TABLE `saran_kritik` (
  `id_saran` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id_lupa_password`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  ADD PRIMARY KEY (`id_menu_dibooking`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  ADD PRIMARY KEY (`id_saran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id_lupa_password` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  MODIFY `id_menu_dibooking` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id_metode` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
