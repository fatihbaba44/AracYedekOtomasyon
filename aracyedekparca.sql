-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 20 Oca 2021, 08:58:26
-- Sunucu sürümü: 10.4.14-MariaDB
-- PHP Sürümü: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `aracyedekparca`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firma`
--

CREATE TABLE `firma` (
  `firma_id` int(11) UNSIGNED NOT NULL,
  `firma_ad` varchar(50) DEFAULT '0',
  `firma_aciklama` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `firma`
--

INSERT INTO `firma` (`firma_id`, `firma_ad`, `firma_aciklama`) VALUES
(2, 'asdasd', 'lkjlj'),
(3, 'oook', 'uuuu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firma_siparis`
--

CREATE TABLE `firma_siparis` (
  `firma_id` int(11) UNSIGNED NOT NULL,
  `siparis_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `firma_siparis`
--

INSERT INTO `firma_siparis` (`firma_id`, `siparis_id`) VALUES
(3, 5),
(2, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `isci`
--

CREATE TABLE `isci` (
  `isci_id` int(11) UNSIGNED NOT NULL,
  `isci_ad` varchar(50) NOT NULL DEFAULT '0',
  `isci_soyad` varchar(50) NOT NULL DEFAULT '0',
  `isci_tc` varchar(11) NOT NULL DEFAULT '0',
  `usta_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `isci`
--

INSERT INTO `isci` (`isci_id`, `isci_ad`, `isci_soyad`, `isci_tc`, `usta_id`) VALUES
(9, 'fffeee', 'ttt', '1845632545', 2),
(10, 'hjk', 'fdgd', '12312', 1),
(12, 'orhan', 'dönmez', '1845632545', 4),
(14, 'gg', 'hh', '567', 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makina`
--

CREATE TABLE `makina` (
  `makina_id` int(11) UNSIGNED NOT NULL,
  `makina_marka` varchar(50) DEFAULT '0',
  `makina_tur` varchar(50) DEFAULT '0',
  `isci_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `makinasorumlusu_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `makina`
--

INSERT INTO `makina` (`makina_id`, `makina_marka`, `makina_tur`, `isci_id`, `makinasorumlusu_id`) VALUES
(1, 'dfsd', 'ggg', 10, 1),
(3, 'gty', 'ytg', 9, 1),
(4, 'adsas', 'asdasdsa', 10, 3),
(5, 'ewqeq21', 'gdgd', 10, 3),
(8, 'kkk', 'kkk', 14, 2),
(9, 'kkkjhj', 'hjk', 12, 3),
(10, 'sss', 'ddd', 10, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makinasorumlusu`
--

CREATE TABLE `makinasorumlusu` (
  `makinasorumlusu_id` int(11) UNSIGNED NOT NULL,
  `makinasorumlusu_ad` varchar(50) NOT NULL DEFAULT '0',
  `makinasorumlusu_soyad` varchar(50) NOT NULL DEFAULT '0',
  `makinasorumlusu_tc` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `makinasorumlusu`
--

INSERT INTO `makinasorumlusu` (`makinasorumlusu_id`, `makinasorumlusu_ad`, `makinasorumlusu_soyad`, `makinasorumlusu_tc`) VALUES
(1, 'üoıuı', 'ıuou', '678'),
(2, 'hjk', 'kjh', '546'),
(3, 'ccc', 'vvv', '2234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `muhasebeci`
--

CREATE TABLE `muhasebeci` (
  `muhasebeci_id` int(11) UNSIGNED NOT NULL,
  `muhasebeci_ad` varchar(50) NOT NULL DEFAULT '0',
  `muhasebeci_soyad` varchar(50) NOT NULL DEFAULT '0',
  `muhasebeci_tc` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `muhasebeci`
--

INSERT INTO `muhasebeci` (`muhasebeci_id`, `muhasebeci_ad`, `muhasebeci_soyad`, `muhasebeci_tc`) VALUES
(1, 'gkhnq', 'rty', '12343212'),
(2, 'fdgdf', 'ghfghfg', '1231231'),
(3, 'hjghjg', 'nbvnvb', '231'),
(4, 'gfggfg', 'hjhjhjhj', '25644');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `parca`
--

CREATE TABLE `parca` (
  `parca_id` int(11) UNSIGNED NOT NULL,
  `parca_ad` varchar(50) DEFAULT '0',
  `parca_hammadde` varchar(50) DEFAULT '0',
  `makina_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `parca_fiyat` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `parca`
--

INSERT INTO `parca` (`parca_id`, `parca_ad`, `parca_hammadde`, `makina_id`, `parca_fiyat`) VALUES
(2, 'hhh12', 'mmm', 3, 56),
(3, 'dgffdgd', 'dgfdgg', 3, 65),
(5, 'xcv', 'mli', 5, 78);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) UNSIGNED NOT NULL,
  `siparis_kod` varchar(50) NOT NULL DEFAULT '0',
  `siparis_parcasayi` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parca_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `muhasebeci_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_kod`, `siparis_parcasayi`, `parca_id`, `muhasebeci_id`) VALUES
(5, 'kalem', 678, 3, 3),
(8, '', 100, 2, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `kullanici_ad` varchar(50) NOT NULL,
  `sifre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`kullanici_ad`, `sifre`) VALUES
('beraarge', '123456');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `usta`
--

CREATE TABLE `usta` (
  `usta_id` int(11) UNSIGNED NOT NULL,
  `usta_ad` varchar(50) NOT NULL DEFAULT '0',
  `usta_soyad` varchar(50) NOT NULL DEFAULT '0',
  `usta_tc` varchar(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `usta`
--

INSERT INTO `usta` (`usta_id`, `usta_ad`, `usta_soyad`, `usta_tc`) VALUES
(1, 'öztürk', 'uysal', '1818845346'),
(2, 'abdullah ', 'demir', '1818845346'),
(4, 'isa', 'tanacı', '1547865'),
(10, 'qqqq', 'qqqq', '5555'),
(11, 'zzazaza', 'zazaz', '8888');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`firma_id`);

--
-- Tablo için indeksler `firma_siparis`
--
ALTER TABLE `firma_siparis`
  ADD KEY `firma_id_fk` (`firma_id`),
  ADD KEY `siparis_id_fk` (`siparis_id`);

--
-- Tablo için indeksler `isci`
--
ALTER TABLE `isci`
  ADD PRIMARY KEY (`isci_id`),
  ADD KEY `usta_id_fk` (`usta_id`);

--
-- Tablo için indeksler `makina`
--
ALTER TABLE `makina`
  ADD PRIMARY KEY (`makina_id`),
  ADD KEY `isci_id_fk` (`isci_id`),
  ADD KEY `makinasorumlusu_id_fk` (`makinasorumlusu_id`);

--
-- Tablo için indeksler `makinasorumlusu`
--
ALTER TABLE `makinasorumlusu`
  ADD PRIMARY KEY (`makinasorumlusu_id`);

--
-- Tablo için indeksler `muhasebeci`
--
ALTER TABLE `muhasebeci`
  ADD PRIMARY KEY (`muhasebeci_id`);

--
-- Tablo için indeksler `parca`
--
ALTER TABLE `parca`
  ADD PRIMARY KEY (`parca_id`),
  ADD KEY `makina_id_fk` (`makina_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`),
  ADD KEY `parca_id_fk` (`parca_id`),
  ADD KEY `muhasebeci_id_fk` (`muhasebeci_id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kullanici_ad`);

--
-- Tablo için indeksler `usta`
--
ALTER TABLE `usta`
  ADD PRIMARY KEY (`usta_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `firma`
--
ALTER TABLE `firma`
  MODIFY `firma_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `isci`
--
ALTER TABLE `isci`
  MODIFY `isci_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `makina`
--
ALTER TABLE `makina`
  MODIFY `makina_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `makinasorumlusu`
--
ALTER TABLE `makinasorumlusu`
  MODIFY `makinasorumlusu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `muhasebeci`
--
ALTER TABLE `muhasebeci`
  MODIFY `muhasebeci_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `parca`
--
ALTER TABLE `parca`
  MODIFY `parca_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `usta`
--
ALTER TABLE `usta`
  MODIFY `usta_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `firma_siparis`
--
ALTER TABLE `firma_siparis`
  ADD CONSTRAINT `firma_id_fk` FOREIGN KEY (`firma_id`) REFERENCES `firma` (`firma_id`),
  ADD CONSTRAINT `siparis_id_fk` FOREIGN KEY (`siparis_id`) REFERENCES `siparis` (`siparis_id`);

--
-- Tablo kısıtlamaları `isci`
--
ALTER TABLE `isci`
  ADD CONSTRAINT `usta_id_fk` FOREIGN KEY (`usta_id`) REFERENCES `usta` (`usta_id`);

--
-- Tablo kısıtlamaları `makina`
--
ALTER TABLE `makina`
  ADD CONSTRAINT `isci_id_fk` FOREIGN KEY (`isci_id`) REFERENCES `isci` (`isci_id`),
  ADD CONSTRAINT `makinasorumlusu_id_fk` FOREIGN KEY (`makinasorumlusu_id`) REFERENCES `makinasorumlusu` (`makinasorumlusu_id`);

--
-- Tablo kısıtlamaları `parca`
--
ALTER TABLE `parca`
  ADD CONSTRAINT `makina_id_fk` FOREIGN KEY (`makina_id`) REFERENCES `makina` (`makina_id`);

--
-- Tablo kısıtlamaları `siparis`
--
ALTER TABLE `siparis`
  ADD CONSTRAINT `muhasebeci_id_fk` FOREIGN KEY (`muhasebeci_id`) REFERENCES `muhasebeci` (`muhasebeci_id`),
  ADD CONSTRAINT `parca_id_fk` FOREIGN KEY (`parca_id`) REFERENCES `parca` (`parca_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
