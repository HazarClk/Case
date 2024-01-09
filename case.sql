-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 09 Oca 2024, 20:01:52
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `case`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `developers`
--

CREATE TABLE `developers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `developers`
--

INSERT INTO `developers` (`id`, `name`) VALUES
(1, 'DEV1'),
(2, 'DEV2'),
(3, 'DEV3'),
(4, 'DEV4'),
(5, 'DEV5');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(999) COLLATE utf8_turkish_ci NOT NULL,
  `description` varchar(999) COLLATE utf8_turkish_ci DEFAULT NULL,
  `keywords` varchar(999) COLLATE utf8_turkish_ci DEFAULT NULL,
  `logo_img` varchar(999) COLLATE utf8_turkish_ci DEFAULT NULL,
  `tel` varchar(999) COLLATE utf8_turkish_ci DEFAULT NULL,
  `whatsapp_tel` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `mail` varchar(999) COLLATE utf8_turkish_ci DEFAULT NULL,
  `map` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `about_us` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `address` varchar(999) COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter_link` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook_link` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `instagram_link` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `tiktok_link` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `general_settings`
--

INSERT INTO `general_settings` (`id`, `title`, `description`, `keywords`, `logo_img`, `tel`, `whatsapp_tel`, `mail`, `map`, `about_us`, `address`, `twitter_link`, `facebook_link`, `instagram_link`, `tiktok_link`) VALUES
(0, '1', '1', '1', '1', '1', '1', '1', '1', '-', '-', 'https://twitter.com', 'https://facebook.com', 'https://instagram.com', 'https://tiktok.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `work_list`
--

CREATE TABLE `work_list` (
  `id` int(11) NOT NULL,
  `name` varchar(999) NOT NULL,
  `level` varchar(999) NOT NULL,
  `time` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `work_list`
--

INSERT INTO `work_list` (`id`, `name`, `level`, `time`) VALUES
(1, 'IT Task 0', '3', '6'),
(2, 'IT Task 1', '4', '6'),
(3, 'IT Task 2', '3', '10'),
(4, 'IT Task 3', '4', '4'),
(5, 'IT Task 4', '3', '5'),
(6, 'IT Task 5', '1', '12'),
(7, 'IT Task 6', '1', '4'),
(8, 'IT Task 7', '5', '6'),
(9, 'IT Task 8', '3', '8'),
(10, 'IT Task 9', '1', '6'),
(11, 'IT Task 10', '2', '10'),
(12, 'IT Task 11', '1', '6'),
(13, 'IT Task 12', '4', '11'),
(14, 'IT Task 13', '5', '3'),
(15, 'IT Task 14', '1', '11'),
(16, 'IT Task 15', '4', '6'),
(17, 'IT Task 16', '5', '4'),
(18, 'IT Task 17', '3', '11'),
(19, 'IT Task 18', '2', '11'),
(20, 'IT Task 19', '3', '8'),
(21, 'IT Task 20', '3', '11'),
(22, 'IT Task 21', '1', '5'),
(23, 'IT Task 22', '4', '5'),
(24, 'IT Task 23', '2', '7'),
(25, 'IT Task 24', '2', '6'),
(26, 'IT Task 25', '3', '9'),
(27, 'IT Task 26', '4', '6'),
(28, 'IT Task 27', '4', '7'),
(29, 'IT Task 28', '1', '4'),
(30, 'IT Task 29', '4', '5'),
(31, 'IT Task 30', '5', '9'),
(32, 'IT Task 31', '2', '5'),
(33, 'IT Task 32', '2', '5'),
(34, 'IT Task 33', '2', '6'),
(35, 'IT Task 34', '5', '6'),
(36, 'IT Task 35', '1', '10'),
(37, 'IT Task 36', '1', '10'),
(38, 'IT Task 37', '1', '10'),
(39, 'IT Task 38', '5', '12'),
(40, 'IT Task 39', '4', '12'),
(41, 'IT Task 40', '2', '6'),
(42, 'IT Task 41', '3', '8'),
(43, 'IT Task 42', '5', '10'),
(44, 'IT Task 43', '3', '10'),
(45, 'IT Task 44', '5', '8'),
(46, 'IT Task 45', '5', '9'),
(47, 'IT Task 46', '3', '3'),
(48, 'IT Task 47', '4', '4'),
(49, 'IT Task 48', '1', '12'),
(50, 'IT Task 49', '1', '7'),
(51, 'IT Task 50', '1', '4'),
(52, 'IT Task 51', '1', '10'),
(53, 'IT Task 52', '4', '8'),
(54, 'IT Task 53', '3', '3'),
(55, 'IT Task 54', '4', '10'),
(56, 'IT Task 55', '4', '12'),
(57, 'IT Task 56', '3', '10'),
(58, 'IT Task 57', '2', '11'),
(59, 'IT Task 58', '1', '7'),
(60, 'IT Task 59', '2', '4'),
(61, 'IT Task 60', '3', '4'),
(62, 'IT Task 61', '1', '3'),
(63, 'IT Task 62', '1', '6'),
(64, 'IT Task 63', '3', '3'),
(65, 'IT Task 64', '4', '12'),
(66, 'IT Task 65', '2', '11'),
(67, 'IT Task 66', '3', '10');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `work_list`
--
ALTER TABLE `work_list`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `developers`
--
ALTER TABLE `developers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `work_list`
--
ALTER TABLE `work_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
