-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 03 Kwi 2016, 10:01
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item_photo`
--

CREATE TABLE IF NOT EXISTS `item_photo` (
  `item_id` smallint(5) NOT NULL,
  `photo` varchar(250) NOT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_2` (`item_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(100) NOT NULL AUTO_INCREMENT,
  `customer_id` smallint(5) NOT NULL,
  `item_id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `order` (`customer_id`);

--
-- Ograniczenia dla tabeli `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item_photo` (`item_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
