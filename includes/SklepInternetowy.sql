-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 03 Kwi 2016, 14:06
-- Wersja serwera: 5.5.47-0ubuntu0.14.04.1
-- Wersja PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `SklepInternetowy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@op.pl', 'sadsadsadsadsadsadsadsadsaasadsadsadsadsadsadsad');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(2, 'Wiesław', 'Gliński', 'wieslawglinski@op.pl', '123456789');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Zrzut danych tabeli `item`
--

INSERT INTO `item` (`item_id`, `name`, `description`, `price`) VALUES
(5, 'płatki śniadaniowe', 'wfdsd', 11),
(6, 'czekolada', 'czasda ad sadsa dsad sa', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_photo`
--

CREATE TABLE IF NOT EXISTS `item_photo` (
  `photo_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `photo` varchar(250) NOT NULL,
  `item_id` smallint(5) NOT NULL,
  PRIMARY KEY (`photo_id`),
  UNIQUE KEY `item_id_2` (`photo_id`),
  KEY `item_id` (`photo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Zrzut danych tabeli `item_photo`
--

INSERT INTO `item_photo` (`photo_id`, `photo`, `item_id`) VALUES
(1, 'images/platkisniadaniowe.jpg', 5),
(2, 'images/czekolada.jpg', 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oder_item`
--

CREATE TABLE IF NOT EXISTS `oder_item` (
  `order_id` int(100) NOT NULL,
  `item_id` smallint(5) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(100) NOT NULL AUTO_INCREMENT,
  `customer_id` smallint(5) NOT NULL,
  `item_id` smallint(5) NOT NULL,
  `status` set('oczekujące','złożone','opłacone','zrealizowane') NOT NULL DEFAULT '',
  `quantity` smallint(6) NOT NULL,
  `basket` set('oczekujące','zatwierdzone','','') NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `customer_id_2` (`customer_id`),
  KEY `item_id` (`item_id`),
  KEY `customer_id_3` (`customer_id`),
  KEY `customer_id_4` (`customer_id`),
  KEY `item_id_2` (`item_id`),
  KEY `customer_id_5` (`customer_id`),
  KEY `item_id_3` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `item_id`, `status`, `quantity`, `basket`) VALUES
(4, 2, 5, 'opłacone', 6, 'oczekujące');

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `oder_item`
--
ALTER TABLE `oder_item`
  ADD CONSTRAINT `oder_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `oder_item_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`);

--
-- Ograniczenia dla tabeli `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
