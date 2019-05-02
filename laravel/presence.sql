-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2018 at 10:02 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presence`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id` int(5) NOT NULL,
  `nip` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `intime` time NOT NULL,
  `locin` varchar(50) NOT NULL,
  `outtime` time NOT NULL,
  `locout` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `pic` text NOT NULL,
  `customer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `nip`, `date`, `intime`, `locin`, `outtime`, `locout`, `subject`, `description`, `pic`, `customer`) VALUES
(27, 'A001', '2018-11-09', '14:32:26', '-6.2308314, 106.8474614', '16:00:00', '-6.230834, 106.8474495', 'meeting', 'tytu', 'tytytytytytytyty', 'ty');

-- --------------------------------------------------------

--
-- Table structure for table `bpjs`
--

CREATE TABLE `bpjs` (
  `id_bpjs` varchar(10) NOT NULL,
  `no_bpjs` varchar(13) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id_certificate` varchar(10) NOT NULL,
  `nip` varchar(13) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `expired_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(5) NOT NULL,
  `namapt` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `namapt`) VALUES
(4, 'Menara Palma 8th Floor'),
(3, 'PT. ACA Pacific'),
(5, 'PT. Khalifa Mitra Berkah'),
(6, 'Wisma BNI 46'),
(7, 'PT Central Data Technology'),
(8, '959 Skyway Road Suite 300'),
(9, 'Menara Standard Chartered'),
(10, 'Prudential Centre Kota Kasablanka'),
(11, 'BRI II Building'),
(12, 'Alamanda Tower Level 21'),
(13, 'Prince Center Building 110 Floor'),
(14, 'Wisma Nugra Santana 9th Floor Suite 909'),
(15, 'Juke Solutions'),
(16, 'Menlo Security'),
(17, 'Microsoft'),
(18, 'Sentral Senayan II'),
(19, 'Oracle'),
(20, 'Soekarno-Hatta International Airport Building'),
(21, '50th Floor Menara BCA Grand Indonesia'),
(22, 'MD Place'),
(23, 'Kawasan MM 2100'),
(24, 'Gandaria 8 Office Tower '),
(25, 'Ventura Building 71h FIooC'),
(26, 'APL Tower'),
(27, 'Wisma BSG'),
(28, 'Sentral Senayan 2'),
(29, 'Atos Collaboration Solutions'),
(30, 'VM Ware');

-- --------------------------------------------------------

--
-- Table structure for table `daily`
--

CREATE TABLE `daily` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `intime` time NOT NULL,
  `locin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outtime` time NOT NULL,
  `locout` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily`
--

INSERT INTO `daily` (`id`, `nip`, `date`, `intime`, `locin`, `outtime`, `locout`, `note`) VALUES
(17, 'A000', '2018-11-02', '10:10:52', '-6.2307519, 106.8474409', '10:11:12', '-6.2307481, 106.8474216', ''),
(18, 'A000', '2018-11-02', '10:16:51', '-6.2308133, 106.8475134', '10:17:16', '-6.2307439, 106.8473756', ''),
(19, 'A000', '2018-11-02', '14:25:53', '-6.23008393, 106.84834022', '14:26:00', '-6.2308212, 106.847387', ''),
(20, 'A000', '2018-11-06', '14:31:58', '-6.2314952, 106.8461274', '14:32:07', '-6.2308314, 106.8474614', ''),
(21, 'A117', '2018-11-10', '10:29:18', '-6.2687695, 106.8053882', '10:33:30', '-6.2687695, 106.8053882', ''),
(22, 'A000', '2018-11-10', '15:53:06', '0.0, 0.0', '15:53:21', '0.0, 0.0', ''),
(23, 'A000', '2018-11-10', '15:53:33', '0.0, 0.0', '15:53:44', '0.0, 0.0', ''),
(24, 'A000', '2018-11-10', '15:53:52', '0.0, 0.0', '00:00:00', '', ''),
(25, 'A103', '2018-11-10', '15:56:30', '0.0, 0.0', '15:57:12', '0.0, 0.0', ''),
(26, 'A117', '2018-11-10', '15:57:47', '0.0, 0.0', '00:00:00', '', ''),
(27, 'A103', '2018-11-10', '16:23:42', '0.0, 0.0', '00:00:00', '', ''),
(28, 'A103', '2018-11-10', '16:24:02', '0.0, 0.0', '00:00:00', '', ''),
(29, 'A103', '2018-11-10', '16:24:02', '0.0, 0.0', '00:00:00', '', ''),
(30, 'A000', '2018-11-10', '17:04:43', '0.0, 0.0', '00:00:00', '', ''),
(31, 'A000', '2018-11-10', '17:06:39', '-6.33203663, 107.05523064', '00:00:00', '', ''),
(32, 'A117', '2018-11-10', '17:12:38', '0.0, 0.0', '00:00:00', '', ''),
(33, 'A002', '2018-11-10', '17:29:46', '0.0, 0.0', '00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE `departement` (
  `kd` varchar(5) NOT NULL,
  `jabdept` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`kd`, `jabdept`, `created_at`, `updated_at`) VALUES
('A1', 'Direktur Utama', NULL, NULL),
('O1', 'General Affair', NULL, NULL),
('O2', 'Operational and Support Manager', NULL, NULL),
('O3', 'Operational Manager', NULL, NULL),
('O4', 'Senior Staff', NULL, NULL),
('O5', 'Junior Staff 1 - Administrator', NULL, NULL),
('O6', 'Junior Staff 1 - Messanger', NULL, NULL),
('O7', 'Warehouse', NULL, NULL),
('O8', 'Technical Consultant ', NULL, NULL),
('S1', 'General Manager', NULL, NULL),
('S2', 'Business Manager', NULL, NULL),
('S3', 'Account Manager', NULL, NULL),
('S4', 'Account Manager 2', NULL, NULL),
('S5', 'Account Manager 3', NULL, NULL),
('T1', 'Direktur Technical', NULL, NULL),
('T2', 'Project Manager Officer', NULL, NULL),
('T3', 'General Technical Consultant', NULL, NULL),
('T4', 'Admin Technical', NULL, NULL),
('T5', 'Product', NULL, NULL),
('T6', 'Presale', NULL, NULL),
('T7', 'Technical', NULL, NULL),
('T8', 'Technical Consultant', NULL, NULL),
('T9', 'Technical Consultant 1', NULL, NULL),
('T90', 'Technical Consultant 2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjaman`
--

CREATE TABLE `detail_pinjaman` (
  `id_detailPinjaman` varchar(10) NOT NULL,
  `id_pinjaman` varchar(10) NOT NULL,
  `cicilanKe` int(3) NOT NULL,
  `nominal` varchar(9) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hp_standby`
--

CREATE TABLE `hp_standby` (
  `id_standby` varchar(10) NOT NULL,
  `nip` varchar(13) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kd` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kd`, `jabatan`, `created_at`, `updated_at`) VALUES
('D001', 'Direksi', NULL, NULL),
('O001', 'Operational', NULL, NULL),
('S001', 'Sales and Marketing', NULL, NULL),
('T001', 'Technical', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nip` varchar(13) NOT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `id_npwp` varchar(10) DEFAULT NULL,
  `id_bpjs` varchar(10) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `religion` enum('Islam','Christian','Catholic','Hindu','Buddha','Tionghoa') DEFAULT NULL,
  `martial_status` enum('Married','Singles') DEFAULT NULL,
  `no_tlp` varchar(13) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `address` text,
  `education` varchar(250) DEFAULT NULL,
  `kd` varchar(10) DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `id_rek` varchar(10) DEFAULT NULL,
  `gaji` varchar(11) DEFAULT NULL,
  `child` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nip`, `nik`, `name`, `id_npwp`, `id_bpjs`, `birth_date`, `gender`, `religion`, `martial_status`, `no_tlp`, `email`, `address`, `education`, `kd`, `date_of_join`, `id_rek`, `gaji`, `child`) VALUES
('', '3.27E+16', 'vona Hartanto', '89.345.019', 'belum daft', '0000-00-00', '', '', '', '', '', 'Villa Bogor Indah 5 Blok CB-8 No. 27 RT. 002 RW. 007 Kel. Pasr Jambu Kec. Sukaraja Bogor', '', '', '0000-00-00', '1.24E+12', '', 0),
('1100505', '3.17E+15', 'Fajar Wibawa', '28.231.042', '1629269043', '0000-00-00', '', 'Islam', '', '62818975987', 'fajar.wibawa@ib-synergy.co.id', 'jl. Raya pasar minggu komplek liga mas indah e3 17/18', '', '', '0000-00-00', '070-00-055', '', 0),
('1103006', '3.67E+15', 'Riza Azhari', '07.641.894', '1629269267', '0000-00-00', '', 'Islam', '', '6.28E+12', 'riza.azhari@ib-synergy.co.id', 'Perigi Baru No. 109 RT002 RW005 Perigi Baru Pondok Aren, Tangsel', '', '', '0000-00-00', '102-000-47', '', 0),
('1103007', '3.27E+15', 'Wildan Abdat', '09.236.206', '1629269166', '0000-00-00', '', 'Islam', '', '6.28E+11', 'wildan.abdat@ib-synergy.co.id', 'Jalan Pekojan No 14 RT 004/001 Empang Bogor Selatan 16132', '', '', '0000-00-00', '102-00-050', '', 0),
('1106008', '3.18E+15', 'Castro Petrus Stenly Simamora', '36.827.021', '1629269392', '0000-00-00', '', '', '', '6.28E+12', 'stenly.simamora@ib-synergy.co.id', 'Jl. Abdul Gani 1 No. 19 RT 03 RW 02 Kel. Kalibaru Kec. Cilodong, Depok - Jawa Barat 16414', '', '', '0000-00-00', '124-00-059', '', 0),
('1110009', '3.37E+15', 'Irsyad Prima Yunanto', '67.129.074', '1629269223', '0000-00-00', '', '', '', '6.28E+12', 'irsyad.prima@ib-synergy.co.id', 'perum puri harapan blok E2 no 33,kec.taruma jaya bekasi utara desa setia asih', '', '', '0000-00-00', '124-00-060', '', 0),
('1204010', '3.37E+15', 'Cahyo Yoga Prakoso', '97.213.206', '1629269256', '0000-00-00', '', 'Islam', '', '6.29E+11', 'yoga.prakoso@ib-synergy.co.id', 'Jl. Jaha Cijantung - Kalisari Jakarta Timur', '', '', '0000-00-00', '124-000-61', '', 0),
('1205011', '3.17E+16', 'Hardani Praja Kusuma', '05.929.633', '371661625', '0000-00-00', '', 'Islam', '', '6.29E+12', 'hardani.praja@ib-synergy.co.id', 'Jln ?K.H A WAHID HASYIM NO 16 RT 006 RW 07 KEL. KEBON SIRIH KEC.MENTENG.JAKARTA PUSAT 10340', '', '', '0000-00-00', '123-000-59', '', 0),
('1210012', '3.17E+15', 'Selvi Apriyanti', '98.680.930', '1629269098', '0000-00-00', '', 'Islam', '', '6.29E+12', 'selvi.apriyanti@ib-synergy.co.id', 'Masjid Al-Ridwan RT 06 RW 09 Jatipadang, Pasar Minggu Jaksel', '', '', '0000-00-00', '124-00-063', '', 0),
('1308014', '3.18E+15', 'Yerry Tualena', '17.839.082', '1629269065', '0000-00-00', '', '', '', '6.28E+12', 'yerry.tualena@ib-synergy.co.id', 'Jln. Cipinang-cempedak II No. 8 A', '', '', '0000-00-00', '125-000-56', '', 0),
('1309015', '3.20E+15', 'Raditya Arief Hidayat', '66.985.167', '1629269177', '0000-00-00', '', 'Islam', '', '6.29E+12', 'raditya.arief@ib-synergy.co.id', 'Jalan nangka no 88 Rt 003/Rw 08 Kelurahan Jati Raden Kecamatan Jati Sampurna, Kota Bekasi 17434 ', '', '', '0000-00-00', '124-00-066', '', 0),
('1311025', '3.28E+15', 'Farid Zamzami', '70.152.726', '1326548981', '0000-00-00', '', 'Islam', '', '6.29E+12', 'farid.zamzami@ib-synergy.co.id', 'Jl.Palakali, Komp Orchid Green Village No.B33, Tanah Baru Depok.', '', '', '0000-00-00', '90000 2171', '', 0),
('1401017', '3.17E+15', 'Susilowati', '79.960.513', '1629269324', '0000-00-00', '', 'Islam', '', '6.28E+12', 'susilowati@ib-synergy.co.id', 'Jl. Al Mubarok I RT 011 RW 06 No. 15, Cipulir Kebayoran Lama Jaksel', '', '', '0000-00-00', '124-00-066', '', 0),
('1503019', '3.18E+15', 'Franky Jonly', '', '', '0000-00-00', '', '', '', '6.28E+12', 'franky@ib-synergy.co.id', 'Pulo Gebang Permai Blok G.3/13 RT 001 RW 012 Kel. Pulo Gebang Kec. Cakung Jakarta Timur', '', '', '0000-00-00', '', '', 0),
('1505029', '3.31E+15', 'Condhong Wahyu Wijaya Kusuma MA', '71.873.230', '1770162017', '0000-00-00', '', 'Islam', '', '6.28E+12', 'wahyu.wijayakusuma@ib-synergy.co.id', 'Duri Kosambi, Cengkareng, Jakarta Barat', '', '', '0000-00-00', '124-000713', '', 0),
('1508022', '3.67E+15', 'Eduardus Rumyaan', '48.055.684', 'bayar mand', '0000-00-00', '', '', '', '6.28E+12', 'eduardus.rumyaan@ib-synergy.co.id', 'Taman Royal Jl. Cempaka Raya No. 16 RT. 001 RW 010Kel. Poris PlawadKe. Cipondoh Tangerang Banten', '', '', '0000-00-00', '116-00-930', '', 0),
('1509026', '3.18E+15', 'Rangga Pramono', '59.069.016', '1463049303', '0000-00-00', '', 'Islam', '', '62811180760', 'rangga.pramono@ib-synergy.co.id', 'Jl. Jengki Cipinang Asem No. 55 RT 001/004 ', '', '', '0000-00-00', '1.29E+12', '', 0),
('1509031', '3.67E+15', 'Yan Permana Karsono', '74.170.210', '2101545189', '0000-00-00', '', 'Islam', '', '6.29E+12', 'yan.permana@ib-synergy.co.id', 'Kp. Kebon Kopi RT 001/004 Pondok Betung, Pondong Aren', '', '', '0000-00-00', '9.00E+12', '', 0),
('1601028', '3.17E+15', 'Chairul Ichsan', '26.479.926', '1856967063', '0000-00-00', '', 'Islam', '', '6.28E+12', 'chairul.ichsan@ib-synergy.co.id', 'Jalan Kesehatan Bawah No. 69, Bintaro, Jakarta Selatan 12330', '', '', '0000-00-00', '128-000-61', '', 0),
('1603032', '3.67E+15', 'Sapto Hendro Prasetyo', '58.019.288', '2101545178', '0000-00-00', '', 'Islam', '', '6.29E+12', 'sapto.prasetyo@ib-synergy.co.id', 'Karang Tengah Permai Blok Tk 5 B, RT 001 RW 06 Tangerang', '', '', '0000-00-00', '124 000 74', '', 0),
('1603033', '3.18E+15', 'Eko Susilo', '69.946.541', '1216337769', '0000-00-00', '', 'Islam', '', '6.28E+12', 'eko.susilo@ib-synergy.co.id', 'Jl. Kayu Jati III No. 19 RT. 001/005 Kel. Rawamangun Kec. Pulogdung Jakarta Timur 13220', '', '', '0000-00-00', '006 000 78', '', 0),
('1705035', '3.52E+15', 'Hanifah Mega Putri', '-', '-', '0000-00-00', '', 'Islam', '', '6.29E+12', 'hanifah.megaputri@ib-synergy.co.id', 'Cluster Granada City Blok D/6 Sepatan', '', '', '0000-00-00', '9.00E+12', '', 0),
('1708036', '3.28E+15', 'David Armansyah', '24.832.623', 'belum daft', '0000-00-00', '', 'Islam', '', '6.28E+12', 'david.armansyah@ib-synergy.co.id', 'Jl. Pangkalan Jati V No. 2A RT. 04 RW 05 Kel. Cipinang Melayu Kecamatan Makasar Jatiwaringin, Jakarta Timur 13620', '', '', '0000-00-00', '1.24E+12', '', 0),
('1708037', '3.28E+15', 'Nurcholis Jarkoni', '24.283.018', '2041301305', '0000-00-00', '', 'Islam', '', '6.28E+11', 'nrhifna@ib-synergy.co.id', 'Jl. Murni No. 98 Rt. 02/14 Kp. Pitara Wadas, Pancoran Mas, Depok, Jawa Barat', '', '', '0000-00-00', '900-00-411', '', 0),
('1709038', '3.17E+15', 'Nuke reinati Diso', '48.195.268', '1464554823', '0000-00-00', '', '', '', '6.28E+12', 'nuke.diso@ib-synergy.co.id', 'Jl. Tebet Timur Dlm III. K A-13 RT 002 RW 003 Kel. Tebet Timur Kec. Tebet Jakarta Selatan', '', '', '0000-00-00', '124-000421', '', 0),
('1709039', '3.17E+15', 'Nova Budiman', '82.765.735', 'belum daft', '0000-00-00', '', 'Islam', '', '6.28E+12', 'nova.budiman@ib-synergy.co.id', 'Jl. Turi no. 28 RT. 14 Rw. 03 Kel. Jatipulo, Kec. Palmerah, Jakarta Barat', '', '', '0000-00-00', '1.24E+12', '', 0),
('1711040', '3.17E+15', 'Muhammad Syamsu Rizal', '57.589.608', 'bayar mand', '0000-00-00', '', 'Islam', '', '62811846417', 'muhammad.rizal@ib-synergy.co.id', 'GG. Ikhlas V No. 30A RT. 003 RW 008 Kel. Kebagusan Kec. Pasar Minggu Jakarta Selatan', '', '', '0000-00-00', '1.24E+12', '', 0),
('1711041', '3.57E+15', 'Adam Azhary', '71.836.641', 'bayar mand', '0000-00-00', '', 'Islam', '', '62811949933', 'adam.azhary@ib-synergy.co.id', 'Graha seibu Mansion, Jl. Anggrek II No. 15 RT 01 RW 02 Karet Kuningan, Kec. Setiabudi, Jakarta Selatan', '', '', '0000-00-00', '1.44E+12', '', 0),
('1711042', '3.67E+15', 'Asep Aprizal', '69.898.835', 'mandiri', '0000-00-00', '', 'Islam', '', '6.28E+12', 'asep.afrizal@ib-synergy.co.id', 'Ds. Sangiang RT. 002/003 Sangiang Sepatan Timur Kab. Tangerang Banten 15520', '', '', '0000-00-00', '176--00-00', '', 0),
('1803044', '3.67E+15', 'Mariana Murniasih', '78.820.218', '1609423029', '0000-00-00', '', 'Islam', '', '6.28E+12', 'mariana@ib-synergy.co.id', 'Jl. Kemang Selatan 12E No. 18 Kemang Jakarta Selatan', '', '', '0000-00-00', '124-000-97', '', 0),
('1803045', '3.32E+15', 'Anggitrizaka Tatag Anastya', '75.872.510', '2195048992', '0000-00-00', '', 'Islam', '', '6.28E+12', 'anggitrizaka@ib-synergy.co.id', 'Jl. Subur Dalam No. 9 Menteng Atas Jakarta Selatan', '', '', '0000-00-00', '124-00-097', '', 0),
('1804046', '3.18E+15', 'Pambudi Indro Pratomo', '-', '-', '0000-00-00', '', 'Islam', '', '6.28E+12', 'pambudi.ip@ib-synergy.co.id', 'Jl. Mundu No. 2 RT. 005 RW. 004 Kel. Lubang Buaya Kec. Cipayung Jakarta Timur', '', '', '0000-00-00', '124-000-98', '', 0),
('1804047', '3.28E+15', 'Anggreyni Frisilia Kordak', '-', '-', '0000-00-00', '', '', '', '6.29E+12', 'anggreyni.frisilia@ib-synergy.co.id', 'Jl. Pahlawan No. 12 RT. 02 RW. 02 Kel. Cinangka Sawangan Depok', '', '', '0000-00-00', '157-00-061', '', 0),
('1808048', '3.67E+15', 'Muhammad Hasby Ash Shiddieqy', '85.853.071', '-', '0000-00-00', '', 'Islam', '', '6.28E+12', 'hasby.ash@ib-synergy.co.id', 'Kp. Maruga RT 05 RW 04 No. 47 Kel. Serua Lec. Ciputat, Tangerang Selatan ', '', '', '0000-00-00', '164-000-16', '', 0),
('1808049', '3.17E+15', 'Diana Aulia', '85.780.691', '-', '0000-00-00', '', 'Islam', '', '6.28E+12', 'diana.aulia@ib-synergy.co.id', 'Jl. Bangka 5 RT 010 Rw 03 No. 26, Pela Mampang, Mampang Prapatan Jakarta Selatan', '', '', '0000-00-00', '124-00-099', '', 0),
('1808050', '3.17E+15', 'Mardiana', '85.868.106', '-', '0000-00-00', '', 'Islam', '', '6.29E+12', 'mardiana@ib-synergy.co.id', 'Jl. Bunga Melati Gg Yahya RT 014 RW 002 Kel. Cipete Selatan Kec. Cilandak Jakarta Selatan', '', '', '0000-00-00', '127-00-099', '', 0),
('1809051', '3.17E+14', 'Nuriyah Syakiela Attamimi', '-', '-', '0000-00-00', '', 'Islam', '', '6.28E+12', 'nuriyah.syakiela@ib-synergy.co.id', 'Tebet Barat XI No. 8', '', '', '0000-00-00', '', '', 0),
('906001', '3.20E+15', 'Ardian', '14.052.839', '1626635766', '0000-00-00', '', 'Islam', '', '62818889161', 'ardian@ib-synergy.co.id', 'Puri Cileungsi H.6/19 RT 004/007 Gandoang, cileungsi Bogor', '', '', '0000-00-00', '124-00-062', '', 0),
('907003', '3.17E+15', 'Dian Ratna Dewi', '69.775.980', '1629269021', '0000-00-00', '', 'Islam', '', '62816764730', 'dian@ib-synergy.co.id', 'Jl. Pulo Raya III Ujung RT. 001 RW. 003 Kel. Petogogan Kec. Kebayoran baru Jakarta Selatan', '', '', '0000-00-00', '124-00-054', '', 0),
('908024', '3.18E+15', 'Yustinus Mamik Julianto', '47.417.388', '1833510699', '0000-00-00', '', '', '', '6.28E+11', 'yustinus@ib-synergy.co.id', 'Perum The address@cibubur blok E no 9, Leuwinanggung - Depok', '', '', '0000-00-00', '124-000544', '', 0),
('A000', NULL, 'Anyun', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dian', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A001', NULL, 'Ardian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ardian@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A002', NULL, 'Ahmad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A003', NULL, 'Riza Azhari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'riza.azhari@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A101', NULL, 'Adam Azhary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adam.azhary@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A102', NULL, 'Anggitrizaka Subagyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'anggitrizaka@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A103', NULL, 'Anggreyni Frisilia Kordak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'anggreyni.frisilia@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A104', NULL, 'Chairul Ichsan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'chairul.ichsan@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A105', NULL, 'Wahyu Wijaya Kusuma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wahyu.wijayakusuma@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A106', NULL, 'David Armansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'david.armansyah@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A107', NULL, 'Dian Ratnadewi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dian@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A108', NULL, 'Diana Aulia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'diana.aulia@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A109', NULL, 'Eduardus Rumyaan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eduardus.rumyaan@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A110', NULL, 'Eko Susilo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'eko.susilo@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A111', NULL, 'Fajar Wibawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fajar.wibawa@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A112', NULL, 'Farid Zamzami', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'farid.zamzami@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A113', NULL, 'Franky Jonly', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'franky@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A114', NULL, 'Hanifah Mega Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hanifah.megaputri@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A115', NULL, 'Hardani Kusuma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hardani.praja@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A116', NULL, 'Irsyad Prima Yunanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'irsyad.prima@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A117', NULL, 'Mardiana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mardiana@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A118', NULL, 'Mariana Murniasih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mariana@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A119', NULL, 'Michael Juniardi Yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'michael.juniardi@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A120', NULL, 'Muhammad Hasby Ash Shieddieqy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hasby.ash@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A121', NULL, 'Muhammad Rizal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'muhammad.rizal@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A122', NULL, 'Nova Budiman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nova.budiman@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A123', NULL, 'Nuke Reinati Diso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nuke.diso@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A124', NULL, 'Nurcholis Hifna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nrhifna@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A125', NULL, 'Nuriyah Syakiela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nuriyah.syakiela@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A126', NULL, 'Pambudi Indro Pratomo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pambudi.ip@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A127', NULL, 'Raditya Arief Hidayat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'raditya.arief@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A128', NULL, 'Rangga Pramono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rangga.pramono@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A129', NULL, 'Sapto Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sapto.prasetyo@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A130', NULL, 'Selvi Apriyanti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'selvi.apriyanti@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A131', NULL, 'Stenly Purba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'stenly.simamora@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A132', NULL, 'Susilowati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'susilowati@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A133', NULL, 'Wildan Abdat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'wildan.abdat@ib-synergy.co.id', NULL, NULL, 'S001', NULL, NULL, NULL, 0),
('A134', NULL, 'Yan Permana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yan.permana@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A135', NULL, 'Yerry Tualena', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yerry.tualena@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A136', NULL, 'Yoga Prakoso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yoga.prakoso@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A137', NULL, 'Yustinus Mamik Julianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yustinus@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('A138', NULL, 'Asa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asa@ib-synergy.co.id', NULL, NULL, 'O001', NULL, NULL, NULL, 0),
('A139', NULL, 'Asep Afrizal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asep.afrizal@ib-synergy.co.id', NULL, NULL, 'T001', NULL, NULL, NULL, 0),
('nip', 'nik', 'name', 'id_npwp', 'id_bpjs', '0000-00-00', '', '', '', 'no_tlp', 'email', 'address', 'education', 'kd', '0000-00-00', 'id_rek', 'gaji', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2018_10_02_084652_create_forgots_table', 1),
(6, '2018_10_02_084713_create_harians_table', 1),
(7, '2018_10_02_084731_create_jabatans_table', 1),
(8, '2018_10_02_084746_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `npwp`
--

CREATE TABLE `npwp` (
  `id_npwp` varchar(10) NOT NULL,
  `no_npwp` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` varchar(10) NOT NULL,
  `nip` varchar(13) NOT NULL,
  `nominal` varchar(8) NOT NULL,
  `cicilan` int(3) NOT NULL,
  `bunga` int(3) NOT NULL,
  `start` date NOT NULL,
  `ekspired` date NOT NULL,
  `id_detailPinjaman` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rek` varchar(10) NOT NULL,
  `no_rek` varchar(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `subject`, `email`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Lupa Password', 'hasbyas16@gmail.com', 'readed', '', NULL, NULL),
(2, 'Reset Password', 'mardiana@ib-synergy.co.id', '', '', NULL, NULL),
(3, 'perbaiki bug', 'akunhnts@gmail.com', '', 'apa aja yang masih error\noke?', NULL, NULL),
(4, 'tes', 'dian@gmail.com', '', 'oke', NULL, NULL),
(5, 'Reset Password', 'ardian@ib-synergy.co.id', '', '', NULL, NULL),
(6, 'tes beta', 'mardiana@ib-synergy.co.id', '', 'ok', NULL, NULL),
(7, 'Im forgot my password', 'hasbyas16@gmail.com', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thr`
--

CREATE TABLE `thr` (
  `id_thr` varchar(10) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `periode` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `nip` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kd` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hakakses` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pict` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nip`, `nama`, `gender`, `email`, `kd`, `password`, `hakakses`, `pict`, `created_at`, `updated_at`) VALUES
('A000', 'Anyun', 'Perempuan', 'dian', 'S001', 'edffb1c562cf95605da444bf7f6706fb', 'admin', 'http://www.ib-synergy.co.id/android/attrack/image/mniwp1utnf1c54ss0k0t.jpg', NULL, NULL),
('A001', 'Ardian', 'Laki-laki', 'ardian@ib-synergy.co.id', 'O001', 'Jm91LOmx', 'super user', '', NULL, NULL),
('A002', 'Ahmad', 'Laki-laki', 'ahmad', 'O001', '21232f297a57a5a743894a0e4a801fc3', 'super user', '', NULL, NULL),
('A003', 'Riza Azhari', 'Laki-laki', 'riza.azhari@ib-synergy.co.id', 'O001', 'Ja01LOqq', 'super user', '', NULL, NULL),
('A102', 'Anggitrizaka Subagyo', 'Laki-laki', 'anggitrizaka@ib-synergy.co.id', 'S001', 'J7n1LQpl', 'karyawan', '', NULL, NULL),
('A103', 'Anggreyni Frisilia Kordak', 'Perempuan', 'anggreyni.frisilia@ib-synergy.co.id', 'T001', '7b4f61dc4765f44b6837f9e871fccde3', 'admin', '', NULL, NULL),
('A104', 'Chairul Ichsan', 'Laki-laki', 'chairul.ichsan@ib-synergy.co.id', 'S001', 'Lp91LLmw', 'karyawan', '', NULL, NULL),
('A105', 'Wahyu Wijaya Kusuma', 'Laki-laki', 'wahyu.wijayakusuma@ib-synergy.co.id', 'T001', 'Kk34DDfg', 'karyawan', '', NULL, NULL),
('A106', 'David Armansyah', 'Laki-laki', 'david.armansyah@ib-synergy.co.id', 'S001', 'Pk00NAqo', 'karyawan', '', NULL, NULL),
('A107', 'Dian Ratnadewi', 'Perempuan', 'dian@ib-synergy.co.id', 'S001', 'd41d8cd98f00b204e9800998ecf8427e', 'karyawan', '', NULL, NULL),
('A108', 'Diana Aulia', 'Perempuan', 'diana.aulia@ib-synergy.co.id', 'T001', 'KM04kqMM', 'admin', '', NULL, NULL),
('A109', 'Eduardus Rumyaan', 'Laki-laki', 'eduardus.rumyaan@ib-synergy.co.id', 'T001', 'd41d8cd98f00b204e9800998ecf8427e', 'karyawan', '', NULL, NULL),
('A110', 'Eko Susilo', 'Laki-laki', 'eko.susilo@ib-synergy.co.id', 'S001', 'Kq22sWok', 'karyawan', '', NULL, NULL),
('A111', 'Fajar Wibawa', 'Laki-laki', 'fajar.wibawa@ib-synergy.co.id', 'S001', 'Hw64KKql', 'karyawan', '', NULL, NULL),
('A112', 'Farid Zamzami', 'Laki-laki', 'farid.zamzami@ib-synergy.co.id', 'S001', 'Pl45FGkd', 'karyawan', '', NULL, NULL),
('A113', 'Franky Jonly', 'Laki-laki', 'franky@ib-synergy.co.id', 'T001', 'Mk00wOll', 'karyawan', '', NULL, NULL),
('A114', 'Hanifah Mega Putri', 'Perempuan', 'hanifah.megaputri@ib-synergy.co.id', 'S001', 'd41d8cd98f00b204e9800998ecf8427e', 'karyawan', '', NULL, NULL),
('A115', 'Hardani Kusuma', 'Laki-laki', 'hardani.praja@ib-synergy.co.id', 'O001', 'Mskw29zx', 'karyawan', '', NULL, NULL),
('A116', 'Irsyad Prima Yunanto', 'Laki-laki', 'irsyad.prima@ib-synergy.co.id', 'O001', 'Mv88ddKF', 'karyawan', '', NULL, NULL),
('A117', 'Mardiana', 'Perempuan', 'mardiana@ib-synergy.co.id', 'T001', 'f97de4a9986d216a6e0fea62b0450da9', 'admin', 'http://www.ib-synergy.co.id/android/attrack/image/p5ic3rpgj035dm5708q7.jpg', NULL, NULL),
('A118', 'Mariana Murniasih', 'Perempuan', 'mari', 'S001', 'd40b913237b22c538b948e7e44aeb9cf', 'karyawan', '', NULL, NULL),
('A119', 'Michael Juniardi Yusuf', 'Laki-laki', 'michael.juniardi@ib-synergy.co.id', 'O001', 'Wk93mmOW', 'karyawan', '', NULL, NULL),
('A120', 'Muhammad Hasby Ash Shieddieqy', 'Laki-laki', 'hasby.ash@ib-synergy.co.id', 'T001', 'df3f079de6961496f0460dcfdbf9bca3', 'admin', '', NULL, NULL),
('A121', 'Muhammad Rizal', 'Laki-laki', 'muhammad.rizal@ib-synergy.co.id', 'S001', 'Mm20fKlx', 'karyawan', '', NULL, NULL),
('A122', 'Nova Budiman', 'Laki-laki', 'nova.budiman@ib-synergy.co.id', 'S001', 'Ju9k0jMM', 'karyawan', '', NULL, NULL),
('A123', 'Nuke Reinati Diso', 'Perempuan', 'nuke.diso@ib-synergy.co.id', 'O001', 'qqkO0mDV', 'karyawan', '', NULL, NULL),
('A124', 'Nurcholis Hifna', 'Laki-laki', 'nrhifna@ib-synergy.co.id', 'O001', 'Mq22jjKX', 'karyawan', '', NULL, NULL),
('A125', 'Nuriyah Syakiela', 'Perempuan', 'nuriyah.syakiela@ib-synergy.co.id', 'O001', 'mx91CCmq', 'karyawan', '', NULL, NULL),
('A126', 'Pambudi Indro Pratomo', 'Laki-laki', 'pambudi.ip@ib-synergy.co.id', 'T001', 'kw41qqLK', 'admin', '', NULL, NULL),
('A127', 'Raditya Arief Hidayat', 'Laki-laki', 'raditya.arief@ib-synergy.co.id', 'T001', 'Md40xxKx', 'karyawan', '', NULL, NULL),
('A128', 'Rangga Pramono', 'Laki-laki', 'rangga.pramono@ib-synergy.co.id', 'T001', 'BNxo92ss', 'karyawan', '', NULL, NULL),
('A129', 'Sapto Prasetyo', 'Laki-laki', 'sapto.prasetyo@ib-synergy.co.id', 'O001', 'Mq09kSei', 'karyawan', '', NULL, NULL),
('A130', 'Selvi Apriyanti', 'Perempuan', 'selvi.apriyanti@ib-synergy.co.id', 'O001', 'Mmqi12xx', 'karyawan', '', NULL, NULL),
('A131', 'Stenly Purba', 'Laki-laki', 'stenly.simamora@ib-synergy.co.id', 'T001', 'Bq82msXm', 'karyawan', '', NULL, NULL),
('A132', 'Susilowati', 'Perempuan', 'susilowati@ib-synergy.co.id', 'S001', '0aQWoopl', 'karyawan', '', NULL, NULL),
('A133', 'Wildan Abdat', 'Laki-laki', 'wildan.abdat@ib-synergy.co.id', 'S001', 'Xskq39vx', 'karyawan', '', NULL, NULL),
('A134', 'Yan Permana', 'Laki-laki', 'yan.permana@ib-synergy.co.id', 'O001', 'QW23deVV', 'karyawan', '', NULL, NULL),
('A135', 'Yerry Tualena', 'Laki-laki', 'yerry.tualena@ib-synergy.co.id', 'O001', 'Bm29XCkl', 'karyawan', '', NULL, NULL),
('A136', 'Yoga Prakoso', 'Laki-laki', 'yoga.prakoso@ib-synergy.co.id', 'T001', 'Mj94Hkll', 'karyawan', '', NULL, NULL),
('A137', 'Yustinus Mamik Julianto', 'Laki-laki', 'yustinus@ib-synergy.co.id', 'T001', 'Mq93jjKl', 'karyawan', '', NULL, NULL),
('A138', 'Asa', 'Laki-laki', 'asa@ib-synergy.co.id', 'O001', 'Mckl00hw  ', 'karyawan', '', NULL, NULL),
('A139', 'Asep Afrizal', 'Laki-laki', 'asep.afrizal@ib-synergy.co.id', 'T001', 'Ko88tjUU', 'karyawan', '', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bpjs`
--
ALTER TABLE `bpjs`
  ADD PRIMARY KEY (`id_bpjs`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id_certificate`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `hp_standby`
--
ALTER TABLE `hp_standby`
  ADD PRIMARY KEY (`id_standby`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `npwp`
--
ALTER TABLE `npwp`
  ADD PRIMARY KEY (`id_npwp`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rek`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thr`
--
ALTER TABLE `thr`
  ADD PRIMARY KEY (`id_thr`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `daily`
--
ALTER TABLE `daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
