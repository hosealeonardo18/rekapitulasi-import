-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 8.0.30 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk db_rekapitulasi
CREATE DATABASE IF NOT EXISTS `db_rekapitulasi` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_rekapitulasi`;

-- membuang struktur untuk table db_rekapitulasi.rekapitulasi
CREATE TABLE IF NOT EXISTS `rekapitulasi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nik` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kelurahan` varchar(255) DEFAULT NULL,
  `alamat` text,
  `no_telp` varchar(50) DEFAULT NULL,
  `no_tps` varchar(50) DEFAULT NULL,
  `pj` varchar(100) DEFAULT NULL,
  `keterangan` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb3;

-- Membuang data untuk tabel db_rekapitulasi.rekapitulasi: ~66 rows (lebih kurang)
INSERT INTO `rekapitulasi` (`id`, `uid`, `nama`, `nik`, `kecamatan`, `kelurahan`, `alamat`, `no_telp`, `no_tps`, `pj`, `keterangan`) VALUES
	(67, '41rMHETN8-Z_pQ', 'DINNA KAMALIA', '1205076607910002', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0831 9493 4532', '005', 'Pujianto,SE', 'Lengkap'),
	(68, 'nK70L8bPbDzQbQ', 'MULYATI', '1205084510910004', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0822 7500 0953 ', '005', 'Pujianto,SE', 'Lengkap'),
	(69, 'qvnzSHF07zgS2A', 'RODIYAN', '1205070309860005', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0831 9493 4532', '005', 'Pujianto,SE', 'Lengkap'),
	(70, 'PzpK6cg8UMfBVg', 'LISTIANI', '1205074408900005', 'STABAT', 'PERDAMAIAN', 'LLINGK I KARYA', '0852 7769 5033', '002', 'Pujianto,SE', 'Lengkap'),
	(71, 'TgEoyqoGlDBBcQ', 'SULASTRI', '1205075207580004', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0831 9493 4532', '005', 'Pujianto,SE', 'Lengkap'),
	(72, '9lzNRThO47lMVQ', 'RENI PUSPA DEWI RANTIKA', '1205075009950001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0831 7017 6653', '005', 'Pujianto,SE', 'Lengkap'),
	(73, 'OWzxYrb6QrNSmg', 'SUPARTIK', '1205077112590051', 'STABAT', 'PERDAMAIAN', 'JL. KELAPA SAWIT LINGK. I', '0852 6263 0637', '001', 'Pujianto,SE', 'Lengkap'),
	(74, '7YfRGNB0GjUOpA', 'AMAT PURWADI', '1205070511680001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0852 6210 4274', '005', 'Pujianto,SE', 'Lengkap'),
	(75, 'xYcAnJz_CQq1RQ', 'JOKO PRIYONO', '1205070312860001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 5270 8560', '005', 'Pujianto,SE', 'Lengkap'),
	(76, 'ZmyjyF8B-fZuyg', 'AHMAD REZA', '1205052606960004', 'STABAT', 'PERDAMAIAN', 'DUSUN X', '0831 7017 6653', '006', 'Pujianto,SE', 'Lengkap'),
	(77, '5Pti0wRnxqBpRQ', 'DWI ANGGREYANA', '1205074501950004', 'STABAT', 'PERDAMAIAN', 'DUSUN IX', '0838 5719 5471', '006', 'Pujianto,SE', 'Lengkap'),
	(78, 'y1OQGGUlzn_vyA', 'RAMADANI', '1205076003910005', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 5270 8560', '005', 'Pujianto,SE', 'Lengkap'),
	(79, '4-r8w9zv8qFqXw', 'PANCA RAHARJA', '1205072409930002', 'STABAT', 'BANYUMAS', 'JL. IBADAH ', '0821 6374 5242', '004', 'Pujianto,SE', 'Lengkap'),
	(80, 'z57DZMQwk2SujA', 'ROHANI', '1205076003730004', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0852 6210 4274', '005', 'Pujianto,SE', 'Lengkap'),
	(81, 'CvbEIjRynNUk5A', 'SANDI', '1205052804010001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 7997 5358', '005', 'Pujianto,SE', 'Lengkap'),
	(82, '5skTNi8V6d6nQg', 'DWI ANGGRRYANI', '1205074501950005', 'STABAT', 'BANYUMAS', 'BANYUMAS', '0856 5802 9316', '004', 'Pujianto,SE', 'Lengkap'),
	(83, '6XNhElJT1fZuBg', 'SRI JULIANI', '1205074705820004', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0853 6012 7660', '005', 'Pujianto,SE', 'Lengkap'),
	(84, 'iZDibk6Pdadkbw', 'ASNO', '1205073112610019', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 7997 5358', '005', 'Pujianto,SE', 'Lengkap'),
	(85, '6jJ-wdPy17L3bg', 'JUMADI', '1205071302870005', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0823 6272 2690', '005', 'Pujianto,SE', 'Lengkap'),
	(86, 'Ibq2FvhVxGWTmw', 'YUNIARTI', '1205076312700003', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0822 7245 2969', '005', 'Pujianto,SE', 'Lengkap'),
	(87, 'mLXm2hSiLF-OWQ', 'SOINAH', '1205075708670001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 7997 5358', '005', 'Pujianto,SE', 'Lengkap'),
	(88, 'HoqtZXPJNUl9JQ', 'ANDY', '1205072508870005', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 7997 5358', '005', 'Pujianto,SE', 'Lengkap'),
	(89, 'dW7TwR5SWu8zhg', 'SARWIDI', '1116023003780001', 'STABAT', 'KWALA BINGAI', 'LINGK. VI PASAR 4 DALAM', '0812 6990 9576', '005', 'Pujianto,SE', 'Lengkap'),
	(90, 'Da-9emt7QPdbYQ', 'AMSYAHRI', '1205071404970005', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0822 7413 3574', '005', 'Pujianto,SE', 'Lengkap'),
	(91, 'QOAW0lnCiRzf-g', 'NILA TRI SARI AGUSTINA', '1205074208960001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0822 7413 3574', '005', 'Pujianto,SE', 'Lengkap'),
	(92, 'qS8zwN_wOon2Rw', 'DEWI PUSPA SARI', '1205076505920006', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0853 6017 7497', '005', 'Pujianto,SE', 'Lengkap'),
	(93, 'p7YdntrIhvGO3Q', 'ZULKIFLI', '1205071806870003', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0853 6017 7497', '005', 'Pujianto,SE', 'Lengkap'),
	(94, '4l8VjsUuL-RnPQ', 'SUWITA', '1205075708850010', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0821 4367 2450', '005', 'Pujianto,SE', 'Lengkap'),
	(95, 'Kcbloxl3bUvI7A', 'WAHYUDI EKO WARNO', '1205071010820011', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0821 4367 2450', '005', 'Pujianto,SE', 'Lengkap'),
	(96, 'OjmJgbNOYVCOCA', 'LEGIANTO', '1205071808900002', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 4913 3002', '005', 'Pujianto,SE', 'Lengkap'),
	(97, 'Pi-TnWm445ZiRw', 'SITI AMINAH', '1205075808840001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 4913 3002', '005', 'Pujianto,SE', 'Lengkap'),
	(98, '91VSNvBQuClAng', 'DIANA SYAHFITRI', '1205185405990001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 4913 3002', '005', 'Pujianto,SE', 'Lengkap'),
	(99, 'mbKMBGJBjvZPVw', 'HARIS SURYA PRADANA', '1205070403010004', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0853 6017 7497', '005', 'Pujianto,SE', 'Lengkap'),
	(100, 'yARc1ny5UZGBZQ', 'SUSILAWATI', '1205094202920003', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0822 7218 4431', '005', 'Pujianto,SE', 'Lengkap'),
	(101, 'cZUT6O4LWiKeKg', 'ANGGRI ARIFIN', '1205071004910003', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0822 7218 4431', '005', 'Pujianto,SE', 'Lengkap'),
	(102, 'gUX4Vq-kcW8l9Q', 'JARIAH', '1205077012640003', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 4970 3372', '005', 'Pujianto,SE', 'Lengkap'),
	(103, '882yvFGOoAh66Q', 'JUNAIDI', '1205073012610001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 4970 3372', '005', 'Pujianto,SE', 'Lengkap'),
	(104, 'nzclIsjnlLMPWg', 'PERMATA ADINDA', '1205075902060002', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 4970 3372', '005', 'Pujianto,SE', 'Lengkap'),
	(105, '9Wk43YMkKVuznw', 'SUGIYANTO', '1205070901760001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0838 4970 3372', '005', 'Pujianto,SE', 'Lengkap'),
	(106, 'nMv2lmao1tJKGA', 'SARINI', '1205075801620001', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0822 7413 3574', '005', 'Pujianto,SE', 'Lengkap'),
	(107, 'Ejc6j3iEG0aMUg', 'SURIANITA', '1205074906830002', 'STABAT', 'PERDAMAIAN', 'JLN. KELAPA SAWIT LINGK. I KARYA', '0821 6332 4855', '001', 'Pujianto,SE', 'Lengkap'),
	(108, 'Y5Y4oLw8r6sRrw', 'RIKI HAMDANISYAH', '1173010107850274', 'STABAT', 'PERDAMAIAN', 'JLN. KELAPA SAWIT LINGK. I KARYA', '0853 7344 2543', '001', 'Pujianto,SE', 'Lengkap'),
	(109, 'LE1kpXferP0YfQ', 'IKA RAHMADANI', '1205075506830008', 'STABAT', 'KWALA BINGAI', 'JLN. KELAPA SAWIT LINGK. V', NULL, '005', 'Pujianto,SE', 'Lengkap'),
	(110, 'upRIthSrkX_QnQ', 'NGATINI', '1205075607590001', 'STABAT', 'KWALA BINGAI', 'JLN. KELAPA SAWIT LINGK. V', NULL, '005', 'Pujianto,SE', 'Lengkap'),
	(111, 'pfFwQ-863lwx8g', 'SURIYANTI', '1205076809760003', 'STABAT', 'PERDAMAIAN', 'JLN. KELAPA SAWIT LINGK. I KARYA', '0823 6251 9621', '001', 'Pujianto,SE', 'Lengkap'),
	(112, 'Ol4Qo2AROckPUw', 'SITI AISYAH', '1205076707880003', 'STABAT', 'KWALA BINGAI', 'JLN. KELAPA SAWIT ', NULL, '004', 'Pujianto,SE', 'Lengkap'),
	(113, 'mq3qKkKbl8tTcQ', 'FITRIANI', '1205074206880009', 'STABAT', 'KWALA BINGAI', 'JLN. KELAPA SAWIT LINGK. V', NULL, '005', 'Pujianto,SE', 'Lengkap'),
	(114, 'upFuOuBYubMLrQ', 'NOVITA WIDIYANTI', '1205075911990002', 'STABAT', 'PERDAMAIAN', 'JLN. KELAPA SAWIT LINGK. I KARYA', '0895 6122 60591', '001', 'Pujianto,SE', 'Lengkap'),
	(115, 'nl9SO05S-voLfQ', 'JOKO RINOYO', '1205070204840005', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', '0822 7500 0953', '005', 'Pujianto,SE', 'Lengkap'),
	(116, 'ofHw0CcJ1wl5lQ', 'SANIAH', '1205074703700004', 'STABAT', 'KWALA BINGAI', 'JLN. KELAPA SAWIT LINGK. V', NULL, '005', 'Pujianto,SE', 'Lengkap'),
	(117, 'AMcwuc2k0v-OfA', 'SUMINI', '1205076105740004', 'STABAT', 'KWALA BINGAI', 'JLN. KELAPA SAWIT ', NULL, '004', 'Pujianto,SE', NULL),
	(118, 'y0sYrKi8DzzEkA', 'RINI BUDIATI', '1205074308850005', 'STABAT', 'KWALA BINGAI', 'JLN. KELAPA SAWIT ', NULL, '004', 'Pujianto,SE', NULL),
	(119, 'J0LLQRGeTXs7Qg', 'SUGIYATNO', '1205072504810004', 'STABAT', 'PERDAMAIAN', 'JL. KELAPA SAWIT LINGK. I KARYA', '0821 6457 0560', '001', 'Pujianto,SE', NULL),
	(120, '_QaAeQ6JMshmJw', 'FIKRI NUR HASANAH', '1207245808980002', 'STABAT', 'PERDAMAIAN', 'JL. KELAPA SAWIT LINGK. I KARYA', '0812 6923 8217', '001', 'Pujianto,SE', NULL),
	(121, 'vW-oQ_PGXpRlwQ', 'SRI ASTUTI', '1205075611840004', 'STABAT', 'KWALA BINGAI', 'LINGK VI PRIHATIN', NULL, '005', 'Pujianto,SE', NULL),
	(122, 'J1tXq7kABrplSA', 'RUMINI NIRWANA', '1205074107690024', 'STABAT', 'PERDAMAIAN', 'JL. KELAPA SAWIT LINGK. I KARYA', '0813 6220 4216', '001', 'Pujianto,SE', NULL),
	(123, 'i5z2oUwUCWGyAw', 'SITI AMINAH', '1205075412870001', 'STABAT', 'PERDAMAIAN', 'JL. KELAPA SAWIT LINGK. I KARYA', '0813 7046 6768', '001', 'Pujianto,SE', NULL),
	(124, '87Vkk9Srb4VESg', 'SURYA NINGSIH', '1205076904790003', 'STABAT', 'PERDAMAIAN', 'JL. KELAPA SAWIT LINGK. I KARYA', '0852 6263 0637', '001', 'Pujianto,SE', NULL),
	(125, '_y0CIrQl7hTJdw', 'SUTIMAN', '1205071806640001', 'STABAT', 'PERDAMAIAN', 'JL. KELAPA SAWIT LINGK. I KARYA', '0822 7454 4597', '001', 'Pujianto,SE', NULL),
	(126, 'oHaEKsHERT8cQQ', 'NURLELANI', '1205075609710001', 'STABAT', 'PERDAMAIAN', 'JL. KELAPA SAWIT LINGK. I KARYA', '0822 7454 4597', '001', 'Pujianto,SE', NULL),
	(127, 'iIC5YO2-x9XkjA', 'BESTON SITANGGANG', '1205072712610002', 'STABAT', 'STABAT BARU', 'JLN. KH. Z. ARIFIN NO. 01 STABAT', NULL, NULL, 'BESTON SITANGGANG', NULL),
	(128, 'tiTMaaEMCP2y2g', 'LINERITA BR SIMAMORA', '1205075105680004', 'STABAT', 'STABAT BARU', 'JLN. KH. Z. ARIFIN NO. 01 STABAT', NULL, NULL, 'BESTON SITANGGANG', NULL),
	(129, 'ps2IqDVSmco4fA', 'JOSUA PARTOGI SITANGGANG', '1205072408970002', 'STABAT', 'STABAT BARU', 'JLN. KH. Z. ARIFIN NO. 01 STABAT', NULL, NULL, 'BESTON SITANGGANG', NULL),
	(130, 'OQLOH8U_wr8G7A', 'VIGO IMANUEL SITANGGANG', '1205072610990003', 'STABAT', 'STABAT BARU', 'JLN. KH. Z. ARIFIN NO. 01 STABAT', NULL, NULL, 'BESTON SITANGGANG', NULL),
	(131, '4wsX5uNkCCcHaQ', 'SRI MIHARTY', '1205076511660002', 'STABAT', 'KWALA BINGAI', 'JLN. KARTINI LINGK. III', NULL, NULL, 'BESTON SITANGGANG', NULL),
	(132, '5kYUqPpdY9Q3NA', 'FACHRI ROZI', '1205072601600002', 'STABAT', 'KWALA BINGAI', 'JLN. KARTINI LINGK. III', NULL, NULL, 'BESTON SITANGGANG', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;