-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Giu 13, 2016 alle 12:10
-- Versione del server: 5.6.20
-- PHP Version: 5.5.15

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hypermedia09`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `asisstenza`
--
-- Creazione: Giu 03, 2016 alle 10:43
--

DROP TABLE IF EXISTS `asisstenza`;
CREATE TABLE IF NOT EXISTS `asisstenza` (
  `idAssistenza` int(11) NOT NULL,
  `nome` int(11) NOT NULL,
  `descrizione` int(11) NOT NULL,
  `rifCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--
-- Creazione: Giu 03, 2016 alle 10:36
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `idCategoria` int(11) NOT NULL,
  `categoria` varchar(64) NOT NULL,
  `tipo` varchar(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `categories`
--

INSERT INTO `categories` (`idCategoria`, `categoria`, `tipo`) VALUES
(1, 'Smartphone e Telefoni', 'd'),
(2, 'Tablet e Computer', 'd'),
(3, 'Wearable e SmartGadget', 'd'),
(4, 'Decoder e SmartTV', 'd'),
(5, 'Offerte e Occasioni', 'd'),
(6, 'TV e Intrattenimento', 's'),
(7, 'Casa e Famiglia', 's'),
(8, 'Salute e Benessere', 's'),
(9, 'Servizi alla Persona', 's'),
(10, 'Offerte e Occasioni', 's'),
(11, 'FAQ', 'a'),
(12, 'Gestione Linea', 'a'),
(13, 'Controllo Costi e Pagamenti', 'a'),
(14, 'Supporto Tecnico', 'a'),
(15, 'Servizi Smart Life', 'a');

-- --------------------------------------------------------

--
-- Struttura della tabella `devices`
--
-- Creazione: Giu 13, 2016 alle 08:54
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE IF NOT EXISTS `devices` (
  `idProdotto` int(11) NOT NULL,
  `nome` varchar(64) NOT NULL,
  `prezzo` double NOT NULL,
  `descrizione` text,
  `schedaTecnica` text,
  `marca` varchar(64) NOT NULL,
  `rifCategoria` int(11) NOT NULL,
  `inPromo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `devices`
--

INSERT INTO `devices` (`idProdotto`, `nome`, `prezzo`, `descrizione`, `schedaTecnica`, `marca`, `rifCategoria`, `inPromo`) VALUES
(1, 'LG G5', 699.99, 'bellissimo telefono!', 'funziona benissimo!', 'LG', 1, 0),
(2, 'iPhone 5s 16GB', 479.9, 'bellissimo telefono!', 'funziona benissimo!', 'Apple', 1, 1),
(3, 'Sony XPERIA X', 629.9, 'bellissimo telefono!', 'funziona benissimo!', 'Sony', 1, 0),
(4, 'Huawei P9', 599.9, 'bellissimo telefono!', 'funziona benissimo!', 'Huawei', 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `devicesinassistenza`
--
-- Creazione: Giu 03, 2016 alle 10:44
--

DROP TABLE IF EXISTS `devicesinassistenza`;
CREATE TABLE IF NOT EXISTS `devicesinassistenza` (
  `rifDevice` int(11) NOT NULL,
  `rifAssistenza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `devicesinsl`
--
-- Creazione: Giu 03, 2016 alle 10:45
--

DROP TABLE IF EXISTS `devicesinsl`;
CREATE TABLE IF NOT EXISTS `devicesinsl` (
  `rifDevice` int(11) NOT NULL,
  `rifSmartLife` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `imagesindevices`
--
-- Creazione: Giu 13, 2016 alle 09:21
--

DROP TABLE IF EXISTS `imagesindevices`;
CREATE TABLE IF NOT EXISTS `imagesindevices` (
  `rifImage` int(11) NOT NULL,
  `rifDevice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `imagesindevices`
--

INSERT INTO `imagesindevices` (`rifImage`, `rifDevice`) VALUES
(1, 2),
(2, 2),
(3, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `immagini`
--
-- Creazione: Giu 13, 2016 alle 08:47
--

DROP TABLE IF EXISTS `immagini`;
CREATE TABLE IF NOT EXISTS `immagini` (
  `idImmagine` int(11) NOT NULL,
  `src` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `immagini`
--

INSERT INTO `immagini` (`idImmagine`, `src`) VALUES
(1, 'APPLE_OIPHONE_SE_spacegrey_01.jpg'),
(2, 'APPLE_OIPHONE_SE_spacegrey_02.jpg'),
(3, 'huawei-p9-grey-01.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `smartlife`
--
-- Creazione: Giu 03, 2016 alle 10:42
--

DROP TABLE IF EXISTS `smartlife`;
CREATE TABLE IF NOT EXISTS `smartlife` (
  `idSmartLife` int(11) NOT NULL,
  `nome` varchar(64) NOT NULL,
  `descrizione` text,
  `attivazioneRegolamento` text,
  `faq` text,
  `rifCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asisstenza`
--
ALTER TABLE `asisstenza`
  ADD PRIMARY KEY (`idAssistenza`), ADD KEY `rifCategoria` (`rifCategoria`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`idProdotto`), ADD UNIQUE KEY `nome` (`nome`), ADD KEY `rifCategoria` (`rifCategoria`);

--
-- Indexes for table `devicesinassistenza`
--
ALTER TABLE `devicesinassistenza`
  ADD PRIMARY KEY (`rifDevice`,`rifAssistenza`), ADD KEY `rifAssistenza` (`rifAssistenza`);

--
-- Indexes for table `devicesinsl`
--
ALTER TABLE `devicesinsl`
  ADD PRIMARY KEY (`rifDevice`,`rifSmartLife`), ADD KEY `rifSmartLife` (`rifSmartLife`);

--
-- Indexes for table `imagesindevices`
--
ALTER TABLE `imagesindevices`
  ADD PRIMARY KEY (`rifImage`,`rifDevice`), ADD KEY `rifDevice` (`rifDevice`);

--
-- Indexes for table `immagini`
--
ALTER TABLE `immagini`
  ADD PRIMARY KEY (`idImmagine`), ADD UNIQUE KEY `src` (`src`);

--
-- Indexes for table `smartlife`
--
ALTER TABLE `smartlife`
  ADD PRIMARY KEY (`idSmartLife`), ADD KEY `rifCategoria` (`rifCategoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asisstenza`
--
ALTER TABLE `asisstenza`
  MODIFY `idAssistenza` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `idProdotto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `immagini`
--
ALTER TABLE `immagini`
  MODIFY `idImmagine` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `smartlife`
--
ALTER TABLE `smartlife`
  MODIFY `idSmartLife` int(11) NOT NULL AUTO_INCREMENT;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `devices`
--
ALTER TABLE `devices`
ADD CONSTRAINT `devices_ibfk_1` FOREIGN KEY (`rifCategoria`) REFERENCES `categories` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `devicesinassistenza`
--
ALTER TABLE `devicesinassistenza`
ADD CONSTRAINT `devicesinassistenza_ibfk_1` FOREIGN KEY (`rifDevice`) REFERENCES `devices` (`idProdotto`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `devicesinassistenza_ibfk_2` FOREIGN KEY (`rifAssistenza`) REFERENCES `asisstenza` (`idAssistenza`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `devicesinsl`
--
ALTER TABLE `devicesinsl`
ADD CONSTRAINT `devicesinsl_ibfk_1` FOREIGN KEY (`rifDevice`) REFERENCES `devices` (`idProdotto`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `devicesinsl_ibfk_2` FOREIGN KEY (`rifSmartLife`) REFERENCES `smartlife` (`idSmartLife`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `imagesindevices`
--
ALTER TABLE `imagesindevices`
ADD CONSTRAINT `imagesindevices_ibfk_2` FOREIGN KEY (`rifDevice`) REFERENCES `devices` (`idProdotto`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `imagesindevices_ibfk_3` FOREIGN KEY (`rifImage`) REFERENCES `immagini` (`idImmagine`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
