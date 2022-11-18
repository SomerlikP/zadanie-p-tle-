-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 19 Maj 2015, 16:32
-- Wersja serwera: 5.1.65rel14.0-log
-- Wersja PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `kurs`

-- Struktura tabeli dla tabeli `ETATY`
--

CREATE TABLE IF NOT EXISTS `ETATY` (
  `NAZWA` varchar(10) NOT NULL,
  `PLACA_MIN` decimal(6,2) DEFAULT NULL,
  `PLACA_MAX` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`NAZWA`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `ETATY`
--

INSERT INTO `ETATY` (`NAZWA`, `PLACA_MIN`, `PLACA_MAX`) VALUES
('PROFESOR', '800.00', '1500.00'),
('ADIUNKT', '510.00', '750.00'),
('ASYSTENT', '300.00', '500.00'),
('STAZYSTA', '150.00', '250.00'),
('SEKRETARKA', '270.00', '450.00'),
('DYREKTOR', '1280.00', '2100.00');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `PRACOWNICY`
--

CREATE TABLE IF NOT EXISTS `PRACOWNICY` (
  `ID_PRAC` int(11) NOT NULL,
  `NAZWISKO` varchar(15) DEFAULT NULL,
  `ETAT` varchar(10) DEFAULT NULL,
  `ID_SZEFA` int(11) DEFAULT NULL,
  `ZATRUDNIONY` date DEFAULT NULL,
  `PLACA_POD` decimal(6,2) DEFAULT NULL,
  `PLACA_DOD` decimal(6,2) DEFAULT NULL,
  `ID_ZESP` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PRAC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `PRACOWNICY`
--

INSERT INTO `PRACOWNICY` (`ID_PRAC`, `NAZWISKO`, `ETAT`, `ID_SZEFA`, `ZATRUDNIONY`, `PLACA_POD`, `PLACA_DOD`, `ID_ZESP`) VALUES
(100, 'KOWALSKI', 'DYREKTOR', NULL, '2010-10-05', '1730.00', '420.50', 10),
(110, 'JURASIK', 'PROFESOR', 100, '2003-10-22', '1350.00', '210.00', 40),
(120, 'SLOWIK', 'PROFESOR', 100, '1995-10-24', '1070.00', '0.00', 30),
(130, 'ZIOMEK', 'PROFESOR', 100, '1995-05-22', '960.00', NULL, 20),
(140, 'SMOLAREK', 'PROFESOR', 130, '1996-02-26', '830.00', '105.00', 20),
(150, 'WOJCIECHOWSKI', 'ADIUNKT', 130, '2010-03-21', '645.50', NULL, 20),
(160, 'MAREK', 'ADIUNKT', 130, '1991-12-25', '590.00', NULL, 20),
(170, 'lekki', 'ASYSTENT', 130, '1985-01-14', '439.70', '80.50', 20),
(190, 'SAPEK', 'ASYSTENT', 140, '2008-10-04', '371.00', NULL, 20),
(180, 'KOMORNIK', 'SEKRETARKA', 100, '2003-03-03', '410.20', NULL, 10),
(200, 'KACZKA', 'STAZYSTA', 140, '1994-03-24', '208.00', NULL, 30),
(210, 'CZARNY', 'STAZYSTA', 130, '1995-04-25', '250.00', '170.60', 30),
(220, 'ZIELONY', 'ASYSTENT', 110, '2009-01-31', '480.00', NULL, 20),
(230, 'JUPITER', 'ASYSTENT', 120, '2003-08-23', '480.00', '90.00', 30);

-- --------------------------------------------------------


--
-- Struktura tabeli dla tabeli `ZESPOLY`
--

CREATE TABLE IF NOT EXISTS `ZESPOLY` (
  `ID_ZESP` int(11) NOT NULL,
  `NAZWA` varchar(20) DEFAULT NULL,
  `ADRES` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_ZESP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin2;

--
-- Zrzut danych tabeli `ZESPOLY`
--

INSERT INTO `ZESPOLY` (`ID_ZESP`, `NAZWA`, `ADRES`) VALUES
(10, 'ADMINISTRACJA', 'KRZYWA 4A'),
(20, 'SYSTEMY ROZPROSZONE', 'KRZYWA 4A'),
(30, 'SYSTEMY EKSPERCKIE', 'PODGÓRNA 141'),
(40, 'ALGORYTMY', 'POLSKA 11'),
(50, 'BADANIA OPERACYJNE', 'SZWEDZKA 23');

-- --------------------------------------------------------

