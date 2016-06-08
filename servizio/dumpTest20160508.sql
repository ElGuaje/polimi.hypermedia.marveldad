-- phpMyAdmin SQL Dump
-- version 4.3.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Giu 08, 2016 alle 14:13
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
DROP DATABASE `hypermedia09`;
CREATE DATABASE IF NOT EXISTS `hypermedia09` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hypermedia09`;

-- --------------------------------------------------------

--
-- Struttura della tabella `asisstenza`
--
-- Creazione: Giu 03, 2016 alle 10:43
--

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
-- Creazione: Giu 06, 2016 alle 09:53
--

CREATE TABLE IF NOT EXISTS `devices` (
  `idProdotto` int(11) NOT NULL,
  `nome` varchar(64) NOT NULL,
  `prezzo` double NOT NULL,
  `descrizione` text,
  `schedaTecnica` text,
  `marca` varchar(64) NOT NULL,
  `rifCategoria` int(11) NOT NULL,
  `immagine` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `devices`
--

INSERT INTO `devices` (`idProdotto`, `nome`, `prezzo`, `descrizione`, `schedaTecnica`, `marca`, `rifCategoria`, `immagine`) VALUES
(1, 'LG G5', 699.99, 'Il nuovo LG G5 è uno nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamete in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un''esperienza smartphone realmente innovativa. La rivoluzione di G5 continua con la doppia fotocamera grandangolare, che cattura più di quanto i tuoi occhi riescano a vedere. Anche sotto il sole, perché il nuovo display IPS Quantum è più ricco, luminoso e colorato anche sotto la luce diretta del sole. E ti mostra sempre le notifiche principali anche quando non è attivo. Nuovo LG G5: quello che non ti aspetti, nel palmo della tua mano.', 'Sistema Operativo Android 6.0\r\nDisplay 5.3”\r\nProcessore Snapdragon™ 820 QuadCore 2.15 GHz - 4G LTE\r\nTecnologia\r\n4G cat.6/HSDPA42/UMTS/EDGE/GPRS  Frequenze 850/900/1800/1900/2100\r\n\r\nConnettivita\r\nWi-Fi - Bluetooth – Infrarosso - USB tipo C – NFC\r\n\r\nGPS\r\nIntegrato\r\n\r\nDisplay\r\n5.3” 16 Milioni colori Touch\r\n\r\nFotocamera\r\n2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx\r\n\r\nMemoria Interna\r\n32GB\r\nSlot Memory Card Micro SD fino a 2TB\r\n\r\nProcessore\r\nProcessore Snapdragon™ 820 QuadCore 2.15 GHz - 4G LTE\r\n\r\nFormato SIM\r\nNano\r\n\r\nVideo\r\nVideo Recorder&Playback\r\n\r\nMusica\r\nMP3 Player\r\n\r\nIn dotazione\r\nCaricabatteria\r\nCavo dati USB tipo C\r\nAuricolare stereo\r\nManuale d’uso rapido\r\n\r\nDimensioni\r\n149,4x73,9x7,3 mm\r\n\r\nPeso\r\n159 gr.\r\n\r\nAutonomia(*)\r\nStand-by fino a 100 ore -  Conversazione fino a 240 min.\r\n\r\nNote\r\n* Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.', 'LG', 1, 'LG_G5_titan_01_1.jpg'),
(2, 'iPhone 5s 16GB', 479.9, 'Chip A7 con architettura a 64 bit, sensore di impronte digitali Touch ID,nuova fotocamera iSight da 8 megapixel e nuova videocamera FaceTime HD,reti 4G LTE1 ultraveloci, iOS 8 e iCloud: iPhone 5s è davvero all’avanguardia.Eppure è sottile e leggero come sempre.', 'Sistema Operativo iOS 8\r\nDisplay Retina da 4"\r\nChip A7 con coprocessore di movimento M7\r\nFotocamera iSight da 8 megapixel\r\nDisplay\r\nRetina da 4"\r\n\r\nProcessore\r\nChip A7 con coprocessore di movimento M7\r\n\r\nSensori\r\nimpronte digitali Touch ID\r\n\r\nFotocamera\r\niSight da 8 megapixel con flash True Tone - Registrazione video HD a 1080p - Videocamera FaceTime\r\n\r\nConnettivita\r\nReti 4G LTE ultraveloci1\r\n\r\nApplicazioni\r\nOltre 900.000 app sull’App Store2\r\n\r\nSistemaOperativo\r\niOS 8: l’OS mobile più evoluto al mondo\r\n\r\nCloud\r\niCloud: I tuoi contenuti, su tutti i tuoi dispositivi\r\n\r\nNote\r\n1 La tecnologia 4G LTE è supportata solo in alcuni Paesi e solo da alcuni operatori. Contatta il tuo operatore per maggiori dettagli. La velocità varia a seconda delle condizioni ambientali\r\n2 Si riferisce al numero totale di titoli disponibili nel mondo. Non tutti i contenuti sono disponibili in tutti i Paesi.', 'Apple', 1, 'APPLE_OIPHONE_SE_spacegrey_01.jpg'),
(3, 'Sony XPERIA X', 629.9, 'Il capolavoro\r\n\r\nUno smartphone dalle prestazioni inimitabili che integra una sensazionale fotocamera in grado di predire il prossimo movimento del soggetto..\r\n\r\nUna fotocamera senza rivali\r\n\r\nXperia X Performance integra la nuova fotocamera firmata Sony, più veloce e smart che mai. Tempi di risposta più rapidi, messa a fuoco più intelligente e rivoluzionaria velocità di otturazione adattiva: avrai tutto il necessario per scatti incredibilmente nitidi, in qualsiasi condizione. La messa a fuoco automatica ibrida intuitiva di Xperia X Performance utilizza le tecnologie delle fotocamere Sony e ti permette di cogliere qualsiasi movimento. Basta scegliere il soggetto da mettere a fuoco e la fotocamera lo seguirà automaticamente, anche quando si muove. La messa a fuoco è sempre chiara e il soggetto sempre nitido: non dovrai più preoccuparti di seguire la scena. Pensa a tutto il tuo smartphone.\r\n\r\nLa fotocamera da 23 MP che non teme i movimenti improvvisi\r\n\r\nLa nostra rapidissima fotocamera è in grado di passare dallo standby allo scatto in meno di 0,6 secondi. Grazie all''incredibile rapidità di avvio, messa a fuoco automatica ibrida ed elaborazione dell''immagine, potrai cogliere i momenti più inattesi.\r\n\r\nUn tocco di classe\r\n\r\nBasta prendere Xperia X Performance in mano per accorgersi di quanto sia speciale: lasciati conquistare dal display curvo e dalla parte posteriore monoblocco in metallo. Scegli fra Nero grafite o Bianco per un esclusivo effetto satinato. Oppure le versioni Oro lime e Oro rosa per un tocco di eleganza. Xperia X Performance riflette i tuoi gusti e il tuo stile di vita. L''ultima versione del classico modello Sony è caratterizzata da un design straordinariamente semplice, ancora più comodo grazie ai bordi ricurvi e al display da 5". E l''interfaccia utente non è da meno, con un look sempre più personalizzato e un approccio più intuitivo.\r\n\r\nInarrestabile potenza\r\n\r\nXperia X Performance è dotato di un rapidissimo processore Snapdragon 820 e di velocità di connessione Cat91 per prestazioni senza rivali. Preparati a restare a bocca aperta.\r\n\r\nStreaming alla velocità della luce\r\n\r\nConnettività ultra rapida per un intrattenimento ininterrotto. Vuoi guardare un film in streaming su Netflix o scaricare il tuo podcast preferito? Dì addio ai tempi di attesa. Grazie all''ultimo processore Snapdragon 820 e a una connettività senza rivali, Xperia X Performance ti permette di accedere ai contenuti multimediali desiderati in un batter d''occhio e con estrema facilità, senza buffering o ritardi.', 'Sistema Operativo Android 6.0\r\nProcessore Snapdragon® 650 HexaCore 1.8 Ghz + 1.4 Ghz\r\nTecnologia\r\nAbilitato tecnologia 4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900\r\n\r\nConnettivita\r\nWi-Fi - Bluetooth - Micro USB - NFC\r\n\r\nGPS\r\nIntegrato\r\n\r\nDisplay\r\nFull HD da 5” 1080p, Display TRILUMINOS\r\n\r\nFotocamera\r\nPosteriore da 23 Mpixel Exmor, Anteriore da 13 Mpxl\r\n\r\nMemoria\r\nInterna 3GB - Slot Memory Card Micro SD fino a 200GB\r\n\r\nProcessore\r\nProcessore Qualcomm® Snapdragon™ 650 Hexa-Core (1.8 GHz + 1.4 GHz)\r\n\r\nVideo\r\nVideo Recorder&Playback\r\n\r\nMusica\r\nMP3 Player - Radio FM\r\n\r\nIn dotazione\r\nAuricolare stereo - Caricabatteria - Cavo dati - Guida di riferimento rapido\r\n\r\nDimensioni\r\n143,7 x 70,5 x 8,6 mm\r\n\r\nPeso\r\n165 grammi\r\n\r\nAutonomia\r\nStand-by fino a 779 ore - Conversazione fino a 790 min', 'Sony', 1, 'sony-xperia-x-grphblk-double.jpg'),
(4, 'Huawei P9', 599.9, 'PREMIUM. ELEGANT. STYLISH.\r\nHuawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d’arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed è disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.\r\n\r\n\r\nDISPLAY LUMINOSO E DAI COLORI INTENSI\r\n\r\nCon una resa cromatica del 96%, il sensazionale display IPS Full HD da 5,2" porta alla scoperta di un mondo ricco di colori intensi e ancora più naturali.\r\n\r\nUN INNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA, UNA COLLABORAZIONE UNICA\r\n\r\nLa collaborazione tra Huawei e Leica ha dato vita a uno smartphone con doppia fotocamera. Il risultato: maggiore luminosità e nitidezza per foto e video sensazionali.\r\n\r\nINNOVATIVO SISTEMA CON DOPPIA FOTOCAMERA\r\n\r\nHuawei P9 è in grado di catturare immagini dai colori luminosi e garantire al contempo una resa in bianco e nero straordinaria; il tutto con lo stile senza tempo di Leica.La tecnologia con doppia fotocamera di Huawei P9 consente di catturare una maggiore quantità di luce, combinando al meglio la qualità del colore acquisito dal sensore RGB con i dettagli ottenuti dal sensore in bianco e nero. Il tutto per garantire il massimo risultato ad ogni scatto.', 'Sistema Operativo Android 6.0\r\nProcessore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)\r\nDisplay IPS Full HD da 5.2’’\r\nDoppia Fotocamera Leica da 12 Mpxl Dual Flash + anteriore da 8 Mpxl\r\nTecnologia\r\nAbilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900MHz\r\n\r\nConnettivita\r\n4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100 Wi-Fi a/b/g/n/ac dual band 2,4/5GHz con Wi-Fi Direct Bluetooth 4.2, BLE USB Type-C, NFC\r\n\r\nGPS\r\nGPS Integrato\r\n\r\nDisplay\r\nDisplay IPS Full HD da 5.2’’\r\n\r\nFotocamera\r\nPrincipale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone Frontale 8MP, f/2.4\r\n\r\nMemoria Interna\r\n32GB\r\n\r\nProcessore\r\nProcessore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)\r\n\r\nIn dotazione\r\nSmartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida\r\n\r\nDimensioni\r\n145 x 70,9 x 6,95 mm\r\n\r\nPeso\r\n144 grammi\r\n\r\nAutonomia\r\nStand-by fino a 566 ore - Conversazione fino a 1980 min', 'Huawei', 1, 'huawei-p9-grey-01.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `devicesinassistenza`
--
-- Creazione: Giu 03, 2016 alle 10:44
--

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

CREATE TABLE IF NOT EXISTS `devicesinsl` (
  `rifDevice` int(11) NOT NULL,
  `rifSmartLife` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `smartlife`
--
-- Creazione: Giu 03, 2016 alle 10:42
--

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
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
