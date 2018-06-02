-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2018 at 07:25 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `kode_barang` int(11) NOT NULL,
  `id_kategori_barang` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL,
  `status` enum('1','0','','') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `id_kategori_barang`, `nama`, `deskripsi`, `harga`, `stok`, `status`) VALUES
(1, 1, 'Softshell Warna Warni Gambar Hellokitty And Doraemon 3d* ', 'J5\r\nJ1Ace\r\nJ2Prime\r\nG530/Grand Prime *Xiaomi/Redmi*\r\nRedmi 4X\r\nRedmi 4A\r\nRedmi Note 5Pro\r\nRedmi Note 4X\r\nRedmi 3pro *OPPO*\r\nF7 New\r\nF5\r\nA59/F1s\r\nA39/A57\r\nA33/Neo 7\r\nA37/Neo 9 *VIVO*\r\nVivo V9 New\r\nVivo Y71 New\r\nVivo y65', 40000, 10, '1'),
(2, 1, 'Trigger Shoot version L7', 'jari telunjuk bisa tetap menempel di tombol walau tidak sedang menembak, untuk menembak tombolnya harus ditekan (model lama jari telunjuk tidak bisa stand-by menempel di tombol kalau tidak sedang menembak)\r\nISI KEMASAN:\r\n1 pasang tombol L1R1 (kiri kanan)\r\n1 kotak penyimpanan\r\naksesoris berupa tombol tambahan ini berguna untuk permainan mobile shooter / battle royale yang sedang digandrungi saat ini, membuat permainan anda lebih nyaman dan PRO karena terasa seperti bermain menggunakan gamepad.\r\ntombol L1R1 ini biasa diatur untuk membidik (scope button) dan menembak (firing button). aturlah terlebih dahulu posisi tombol di pengaturan atau setting game anda (customized), lalu tempatkan sesuai posisi\r\n', 55000, 10, '0'),
(3, 1, 'Robot R3 Bluetooth V4.2 Bluetooth Headset ', 'Brand Robot\r\nModel R3\r\nBluetooth version Bluetooth V4.2\r\nBluetooth solutions WT200\r\nSupport Protocols A2DPAVRCPHSPHFP\r\nBattery Output Voltage 3.7V\r\nBattery Capacity 70mAh\r\nMusic time 4h80% volume\r\nTalk time 4h80% volume\r\nFull Charging Time 2.5h\r\nBluetooth Range 10m\r\nSpeaker Size 2 x 10mm\r\nReceive Sensicivity 85dBm\r\nSpeaker Impedance 32ohm\r\nSpeaker Rating 3mW\r\nFrequency Response 50Hz20KHz\r\nS/N 90dB\r\nMic Sensitivity -42dB\r\n', 110000, 11, '1'),
(4, 1, 'Charger Asus Original ', 'Spesifikasi :\r\n* Input : 100-240VAC , 50/60Hz , 0.5A\r\n* Output : 5V / 2000mA\r\n', 110000, 10, '1'),
(5, 1, 'Charger Xiaomi Original (Kepala Indonesia) ', 'Spesifikasi :\r\n* MDY-03-AF\r\n* Input : 100-240VAC , 50/60Hz , 0.5A\r\n* Output : 5V / 2000mA\r\n', 110000, 10, '1'),
(6, 1, 'Man case + Tg', 'Type\r\n- Oppo A83\r\n- Oppo F3\r\n- Oppo F5\r\n- Oppo A71\r\n- Oppo A37\r\n- Oppo A57\r\n- Xiaomi redmi note 5a\r\n- Xiaomi redmi note 4\r\n- Xiaomi 5plus\r\n- Samsung J2prime\r\n- Vivo V9\r\n', 60000, 10, '1'),
(7, 1, 'Softcase Fuze Glass "Pattern Design" :', '~OPPO F7\r\n~OPPO F5\r\n~OPPO A83\r\n~OPPO A71\r\n~OPPO NEO 9\r\n~OPPO A57\r\n~REDMI 5\r\n~REDMI 5+\r\n~REDMI 5A\r\n~REDMI NOTE 5A\r\n~REDMI 5X /A1\r\n~REDMI NOTE 4X\r\n~VIVO V9\r\n~VIVO V7\r\n~ J2 PRO\r\n~J2 PRIME\r\n~ J7+\r\n~IPHONE 5G\r\n~IPHONE 6G\r\n~IPHONE 6G+\r\n', 40000, 10, '1'),
(8, 1, 'Silikon 3D Korean Cute', 'FOR TYPE HOT2 SAJA:\r\n• SAM J2PRIME *HOT*\r\n• SAM J2 PRO(2018) *HOT* • REDMI 4A\r\n• REDMI 4X\r\n• REDMI 5 *HOT*\r\n• REDMI 5+ *HOT*\r\n• REDMI 5A *HOT*\r\n• REDMI 5X/A1 *HOT*\r\n• REDMI NOTE4X *HOT*\r\n• REDMI NOTE5A *HOT* • OPPO A71 *HOT*\r\n• OPPO A39\r\n• OPPO A57\r\n• OPPO A83 *HOT*\r\n• OPPO NEO7\r\n• OPPO NEO9 *HOT*\r\n• OPPO F1S\r\n• OPPO F5 *HOT*\r\n• OPPO F7 *HOT* • VIVO V7 *HOT*\r\n• VIVI V9\r\n', 50000, 10, '0'),
(9, 1, 'Case Violet ', 'Soft Case Premium Violet Original \r\nFor Type : - Iphone 6\r\n- Samsung A8 (2018)\r\n- Samsung A8+ (2018)\r\n- *Samsung Note 8 (New)*\r\n- Samsung S8\r\n- samsung S8+\r\n- Samsung S6 Edge\r\n- Samsung S9 Neww\r\n- Samsung S9+ Neww\r\n- Xiao Mi Red Mi 2S\r\n- Xiao Mi Red Mi 4X - Redmi 5+ Neww\r\n- Xiao Mi Red Mi Note 3\r\n- Xiao Mi Red Mi Note 5 Pro Neww - *Xiao Mi Max 2 New*\r\n- Xiaomi Mi Note 2\r\n- Oppo Neo 9\r\n- Oppo A39\r\n- Oppo A83\r\n- Oppo F5\r\n- *Vivo V9 Neww*\r\n- Vivo Y21/Y22\r\n', 40000, 10, '0'),
(10, 1, 'Case Animal + tg', 'Type :\r\n- Samsung J2prime\r\n- Iphone 5\r\n- Oppo A37\r\n- Oppo F1s\r\n- Oppo A83\r\n- Oppo F5\r\n- Oppo F7\r\n- Vivo V7+\r\n- Vivo V9\r\n- Vivo Y65\r\n- Xiaomi redmi 4x\r\n- Xiaomi redmi note 5a\r\n', 60000, 10, '1'),
(11, 4, 'Serutan Jagung ', '', 30000, 10, '1'),
(12, 4, 'Tatakan Pembuat Kue Maksuba dll ', '', 5000, 10, '1'),
(13, 4, 'Saringan Teh Jumbo ', '', 20000, 10, '1'),
(14, 4, 'Cetakan Cendol ', '', 20000, 10, '1'),
(15, 4, 'Garpu / Sendok Motif Jagung ', 'isi 12 pcs', 15000, 10, '1'),
(16, 4, 'Sendok Scoop Ice Cream ', 'Ice Cream Scoop banyak digunakan untuk menyendok ice cream, tetapi selain itu juga banyak difungsikan untuk menyendok adonan kue,sendok buah dll.sehingga takarannya sama setiap sendokan... Dengan material stainless steel berkualitas, sendok es krim ini menjadi pisau yang kuat dan tahan lama. Selain itu sendok es krim ini pun memiliki fitur anti lengket sehingga mudah dibersihkan dan tidak mudah berkarat.\r\nSendok es krim / ice cream scoop\r\nbahan high quality stainless steel (Food Grade) 18/10\r\nukuran diameter Kepala Scoop = +/- 5 cm, Tinggi (kedalaman) scoop = +/- 2.7 cm\r\nPanjang Alat = +/-22.5 cm\r\n', 25000, 10, '1'),
(17, 4, 'Alat Bantu Potong Telur ', 'MIXER GARLIC ( PAKING SEGEL )\r\nBUKAN PAKING OPP / PLASTIK apalagi yang tidak pakai paking, hanya barang saja, beda kualitas, beda harga \r\nAlat press untuk menghaluskan dan mencacah bawang putih, jahe, bumbu dapur lainnya. Bisa digunakan juga untuk memudahkan mengupas kulit bawang putih.\r\n', 15000, 10, '1'),
(18, 4, 'Teflon Mini Karakter ', '', 25000, 10, '1'),
(19, 4, 'Cake Decoration 8 in 1 ', '', 30000, 10, '1'),
(20, 4, 'Apron - Celemek anti air', '', 20000, 10, '1'),
(21, 2, 'Jam Fashion ', '', 30000, 10, '1'),
(22, 2, 'Jam Fashion ', '', 30000, 10, '1'),
(23, 2, 'Tas pesta premium', '', 240000, 10, '1'),
(24, 2, 'Tas pesta 20319', '', 190000, 10, '1'),
(25, 2, 'Tas pesta c272', '', 125000, 10, '1'),
(26, 2, 'Tas pesta', '', 125000, 10, '1'),
(27, 2, 'Tas selempang', '', 60000, 10, '1'),
(28, 2, 'Tas pesta glitter', '', 95000, 10, '0'),
(29, 2, 'Tas selempang cewek', '', 90000, 10, '0'),
(30, 2, 'Dompet cewek bling2', '', 40000, 10, '0'),
(31, 2, 'Tas korea square', '', 85000, 10, '0'),
(32, 2, 'Tas wanita', '', 65000, 10, '0'),
(33, 2, 'Somlloh pendek Dompet purse wallet fashion korean style', '', 50000, 10, '0'),
(34, 2, 'Keranjang multifungsi ', '', 35000, 10, '0'),
(35, 3, 'Celengan Kaleng Karakter ', '', 15000, 10, '0'),
(36, 3, 'Robocar', '', 60000, 10, '0'),
(37, 3, 'Boneka Tayo ', 'Boneka tayo size L\r\nUkuran 28 cm x 25 Cm\r\n', 50000, 10, '0'),
(38, 3, 'Uno Stacko ', 'Mainan keluarga terdiri dari 45 balok yang disusun menjadi tower lalu balok-baloknya dilepas satu persatu oleh pemain tanpa menyentuh tower. Pemain yg merobohkan tower adalah yg kalah.', 85000, 10, '0'),
(39, 3, 'Papan Tulis Anak Karakter + Bonus Spidol (Lengkap Penghapus)', 'Ukuran papan Lebar x Tinggi (cm) = 30 x 20 cm', 25000, 10, '0'),
(40, 3, 'Mobil mainan berbahan besi isi 6 pcs dgn variasi warna yg berbeda', '', 25000, 10, '0'),
(41, 3, 'Mainan Gelembung Sabun ', '', 40000, 10, '0'),
(42, 3, 'Mainan Make Up Anak anak', '', 40000, 10, '0'),
(43, 3, 'Mini Market Kasir ', '', 195000, 10, '0'),
(44, 3, 'Boneka Tom Cat Besar ', '', 170000, 10, '0'),
(45, 5, 'Kuas Blush On Oval', '1.Bahan Kuas: Bulu Kambing ,Nylon, Rambut Sintetik\r\n2. panjang : 16 cm;\r\n3. fashion desain sikat gigi, kualitas tinggi rambut sintetis yang menyediakan kemampuan luar biasa untuk menahan bubuk, lembut dan menyenangkan untuk kulit Anda.\r\n4. Cocok untuk: foundation; bubuk; blush on; concealer;\r\n5. brush untuk cream foundation cair basah\r\n6. serat terbaik dengan elastis menangani plastik, bisa membungkuk sangat mudah tanpa rusak\r\n', 15000, 10, '0'),
(46, 5, 'Beauty blender Sponge', '', 5000, 10, '0'),
(47, 5, 'Pemencet Jerawat ', '', 5000, 10, '0'),
(48, 5, 'Kuas make up naked ', '', 75000, 10, '0'),
(49, 5, 'Gunting kuku Karakter ', '', 10000, 10, '0'),
(50, 5, 'Eyebrow Template Alis - Cetakan Alis Mata', '', 10000, 10, '0'),
(51, 5, 'Sisir Jumbo Anti Rontok ', '', 15000, 10, '0'),
(52, 5, 'Cermin Led ', '', 40000, 10, '0'),
(53, 5, 'Mangkok masker set', '', 25000, 10, '0'),
(54, 5, 'Penjepit Bulu Mata Galenco New York ', '', 10000, 10, '0'),
(55, 4, 'Mixer Garlic ', 'MIXER GARLIC ( PAKING SEGEL )\r\nBUKAN PAKING OPP / PLASTIK apalagi yang tidak pakai paking, hanya barang saja, beda kualitas, beda harga \r\nAlat press untuk menghaluskan dan mencacah bawang putih, jahe, bumbu dapur lainnya. Bisa digunakan juga untuk memudahkan mengupas kulit bawang putih.\r\n', 15000, 10, '0'),
(56, 2, 'Tas pesta 0331', '', 115000, 10, '0');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pemesanan`
--

CREATE TABLE IF NOT EXISTS `detail_pemesanan` (
  `id_detail_pemesanan` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `qty` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE IF NOT EXISTS `jawaban` (
  `id_jawaban` int(5) NOT NULL,
  `jawaban` varchar(50) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `skor` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `jawaban`, `id_pertanyaan`, `skor`) VALUES
(1, 'Sangat tidak puas', 1, 1),
(2, 'Tidak puas', 1, 2),
(3, 'Cukup puas', 1, 3),
(4, 'Puas', 1, 4),
(5, 'Sangat puas', 1, 5),
(6, 'Sangat tidak puas', 2, 1),
(7, 'Tidak puas', 2, 2),
(8, 'Cukup puas', 2, 3),
(9, 'Puas', 2, 4),
(10, 'Sangat puas', 2, 5),
(11, 'Sangat tidak puas', 3, 1),
(12, 'Tidak puas', 3, 2),
(13, 'Cukup puas', 3, 3),
(14, 'Puas', 3, 4),
(15, 'Sangat puas', 3, 5),
(16, 'Sangat tidak puas', 4, 1),
(17, 'Tidak puas', 4, 2),
(18, 'Cukup puas', 4, 3),
(19, 'Puas', 4, 4),
(20, 'Sangat puas', 4, 5),
(21, 'Sangat tidak puas', 5, 1),
(22, 'Tidak puas', 5, 2),
(23, 'Cukup puas', 5, 3),
(24, 'Puas', 5, 4),
(25, 'Sangat puas', 5, 5),
(26, 'Sangat tidak puas', 6, 1),
(27, 'Tidak puas', 6, 2),
(28, 'Cukup Puas', 6, 3),
(29, 'Puas', 6, 4),
(30, 'Sangat puas', 6, 5),
(31, 'Sangat tidak puas', 7, 1),
(32, 'Tidak puas', 7, 2),
(33, 'Cukup puas', 7, 3),
(34, 'Puas', 7, 4),
(35, 'Sangat puas', 7, 5),
(36, 'Sangat tidak puas', 8, 1),
(37, 'Tidak puas', 8, 2),
(38, 'Cukup puas', 8, 3),
(39, 'Puas', 8, 4),
(40, 'Sangat puas', 8, 5),
(41, 'Sangat tidak puas', 9, 1),
(42, 'Tidak puas', 9, 2),
(43, 'Cukup puas', 9, 3),
(44, 'Puas', 9, 4),
(45, 'Sangat puas', 9, 5),
(46, 'Sangat tidak puas', 10, 1),
(47, 'Tidak puas', 10, 2),
(48, 'Cukup puas', 10, 3),
(49, 'Puas', 10, 4),
(50, 'Sangat puas', 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_pengguna`
--

CREATE TABLE IF NOT EXISTS `jawaban_pengguna` (
  `id_jawaban_pengguna` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `id_jawaban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE IF NOT EXISTS `kategori_barang` (
  `id_kategori_barang` int(11) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`id_kategori_barang`, `nama_kategori`) VALUES
(1, 'Accessories Gadget'),
(2, 'Fashion'),
(3, 'Mainan Anak'),
(4, 'Peralatan Dapur'),
(5, 'Peralatan Kecantikan');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `waktu_pemesanan` datetime NOT NULL,
  `nama_penerima` varchar(30) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `kurir` varchar(30) NOT NULL,
  `ongkir` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `id_role`, `username`, `password`, `email`, `nama`, `jenis_kelamin`, `alamat`, `no_hp`) VALUES
(1, 2, 'ayu', '985fabf8f96dc1c4c306341031569937', 'aa', 'Ayu Lestari', 'Perempuan', 'aaa', '088888');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE IF NOT EXISTS `pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id_pertanyaan`, `pertanyaan`) VALUES
(1, 'Menurut anda, bagaimana informasi detail produk yang terdapat dalam web?'),
(2, 'Menurut anda, bagaimana dengan transaksi pembelian barang pada website kami?'),
(3, 'Menurut anda, bagaimana dengan tampilan website kami?'),
(4, 'Menurut anda, bagaimana dengan pelayanan dan informasi yang kami tampilkan di dalam website kami?'),
(5, 'Menurut anda, bagaimana pelayanan diskon pembelian barang pada website kami?'),
(6, 'Menurut anda, bagaimana fitur notifikasi update terbaru pada website kami?'),
(7, 'Menurut anda, bagaimana fitur layanan "Tren Products" pada website kami?'),
(8, 'Menurut anda, bagaimana fitur-fitur FAQ yang terdapat pada website kami?'),
(9, 'Menurut anda, bagaimana fitur kritik dan saran yang terdapat pada website kami?'),
(10, 'Menurut anda, bagaimana fitur-fitur membandingkan antar produk-produk pada website kami?');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
(1, 'pengguna'),
(2, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `id_kategori_barang` (`id_kategori_barang`);

--
-- Indexes for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD PRIMARY KEY (`id_detail_pemesanan`),
  ADD KEY `id_pemesanan` (`id_pemesanan`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `jawaban_pengguna`
--
ALTER TABLE `jawaban_pengguna`
  ADD PRIMARY KEY (`id_jawaban_pengguna`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`id_kategori_barang`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  MODIFY `id_detail_pemesanan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id_jawaban` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `jawaban_pengguna`
--
ALTER TABLE `jawaban_pengguna`
  MODIFY `id_jawaban_pengguna` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `id_kategori_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `kategori` FOREIGN KEY (`id_kategori_barang`) REFERENCES `kategori_barang` (`id_kategori_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD CONSTRAINT `barang` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesanan` FOREIGN KEY (`id_pemesanan`) REFERENCES `pemesanan` (`id_pemesanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pengguna` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
