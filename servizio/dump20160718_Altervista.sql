-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Lug 18, 2016 alle 00:22
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_marveldad`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `assistenza`
--
-- Creazione: Lug 17, 2016 alle 12:39
-- Ultimo cambiamento: Lug 17, 2016 alle 21:49
--

CREATE TABLE IF NOT EXISTS `assistenza` (
  `idAssistenza` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `abstract` text NOT NULL,
  `descrizione` text NOT NULL,
  `rifCategoria` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `faq` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idAssistenza`),
  KEY `rifCategoria` (`rifCategoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `assistenza`
--

INSERT INTO `assistenza` (`idAssistenza`, `nome`, `abstract`, `descrizione`, `rifCategoria`, `image`, `faq`) VALUES
(1, 'Attivazione della SIM TIM', 'Procedura di acquisizione dei dati anagrafici necessari all''attivazione di una SIM TIM', '<p>Quando acquisti una nuova TIM Card devono contestualmente essere associati alla stessa i tuoi <b>dati anagrafici</b>. Ti sarà pertanto richiesto di esibire un <b>documento d’identità valido</b> ed il <b>codice fiscale</b>.</p>\r\n<p>La registrazione dei dati anagrafici e la certificazione degli stessi sui sistemi aziendali è vincolante per l’abilitazione della linea che, contrariamente, non sarà abilitata al traffico ed a tutte le altre operazioni.</p>\r\n<p>La procedura di acquisizione dei tuoi dati anagrafici va effettuata <b>esclusivamente attraverso i Negozi TIM</b> con la presentazione di documenti in corso di validità (carta d’identità o documenti equivalenti rilasciati da un’amministrazione statale quali: passaporto, patente in formato cartaceo, porto d’armi e tessere degli ufficiali).</p>\r\n<p>Ti ricordiamo che è consentita la vendita e l’intestazione di TIM Card <b>anche a clienti minorenni che abbiano compiuto gli 8 anni di età</b>.', 12, 'ass_attivazione_sim_card.jpg', 1),
(2, 'All''estero con TIM', 'Quali sono le condizioni contrattuali per il traffico verso l''Estero?', 'Per tutte le chiamate internazionali lo scatto alla risposta è di 19 cent.\r\nLe tariffe agevolate verso l''Estero si applicano fino a 1.000 minuti ogni 28 giorni ed a scatti anticipati di 60 secondi. All’esaurimento dei minuti si applicheranno le tariffe internazionali standard TIM.\r\n \r\nLe condizioni standard:\r\n<table class="table">\r\n<thead><td><b>Paese chiamato</b></td><td><b>Tariffa al minuto</b></td></thead>\r\n<tbody>\r\n<tr><td>Bangladesh - Cina - Marocco (rete fissa) - India</td><td> 1 cent</tr>\r\n<tr><td>Perù</td><td> 4 cent</tr>\r\n<tr><td>Argentina - Bulgaria - Colombia - Nigeria - Pakistan - Polonia - Romania</td><td> 5 cent</tr>\r\n<tr><td>Egitto</td><td> 6 cent</tr>\r\n<tr><td>Brasile - Russia - Sri Lanka</td><td> 8 cent</tr>\r\n<tr><td>Australia - Austria - Belgio - Canada - Cile - Cipro - Croazia - Danimarca - Ecuador - El Salvador - Filippine - Finlandia - Francia -  Germania - Giappone - Giordania - Grecia - Hong Kong - Indonesia - Iran - Irlanda - Islanda - Israele - Kazakhstan - Lettonia - Libano - Lituania - Lussemburgo - Malesia - Malta - Mauritius - Moldavia - Norvegia - Paesi Bassi - Paraguay - Portogallo - Regno Unito - Repubblica Ceca - Repubblica Slovacca - Repubblica Domenicana - Siria - Slovenia - Spagna - Stati Uniti - Svezia - Svizzera - Turchia - Ungheria - Uruguay - Venezuela</td><td> 15 cent</tr>\r\n<tr><td>Albania</td><td> 17 cent</tr>\r\n<tr><td>Ucraina</td><td> 18 cent</tr>\r\n</tbody>\r\n</table>', 12, 'sim_estero.jpg', 0),
(3, 'Installazione decoder TIM Vision', 'Qui puoi trovare nel dettaglio le indicazioni necessarie per l''installazione del decoder e per la risoluzione dei problemi più comuni', '<p><b>Problemi dopo l''installazione</b><br>\r\n<i>Non rilevo il segnale WiFi:</i><br>\r\nTi ricordiamo che puoi collegare il decoder TIMvision a reti Wi-Fi che abbiano una crittografia di tipo <b>WPA</b> o <b>WEP</b>, non è possibile per motivi di sicurezza collegarsi a reti Wi-Fi non protette e a reti con l''identificativo (SSID) nascosto. Per avere una ricezione wi-fi ottimale controlla <b>le impostazioni Wi-Fi del tuo decoder</b>.\r\nPuoi verificare la presenza del segnale wi-fi direttamente sullo schemo nel menu tramite l''accensione dell''icona corrispondente. \r\nPer controllare la qualità del segnale, accedi dal <b>menu principale</b> alla voce <b>Opzioni</b>, successivamente a <b>Impostazioni</b> e poi <b>Connessioni</b>.\r\nSe il segnale Wi-Fi non risulta stabile, <b>esegui nuovamente la procedura WPS</b>: nel menu <b>Connessioni</b> del decoder Timvision, seleziona la voce <b>Connessione automatica</b> e premi <b>OK</b>, premi quindi il tasto <b>Wi-Fi led</b> e sul modem attendi che i due dispositivi si sincronizzino (completamento della procedura di associazione sul decoder e led wi-fi sul modem acceso verde).\r\n</p><p>\r\n<i>Come risintonizzare i canali del digitale terrestre:</i><br>\r\nPer risintonizzare i canali del Digitale Terrestre, dal menu principale seleziona la voce <b>Opzioni</b>, <b>Impostazioni</b>, poi <b>TV e DTT</b>.\r\nA questo punto, clicca su <b>Ricerca Canali</b> e attendi il completamento della procedura automatica di ricerca canali.\r\n</p><p> \r\n<i>Ho problemi a vedere un filmato acquistato:</i><br>\r\nSe a video compare il messaggio <b>"Spiacenti. Si è verificato un errore. Premi Riprova per completare l’acquisto. Premendo Chiudi l’applicazione continuerà a riprovare per te pertanto non effettuare logout.”</b>, è possibile che in fase di acquisto ci si trovi momentaneamente  fuori copertura.\r\nIn questo caso puoi scegliere se riprovare subito premendo il tasto <b>Riprova</b> (ti verranno offerti 3 tentativi) oppure se demandare all’applicazione stessa i tentativi di completamento dell’acquisto premendo il tasto <b>Chiudi</b>. Se scegli di riprovare subito e se i 3 tentativi falliscono, sarà comunque l’applicazione a preoccuparsi di completare l’operazione ad ogni riavvio a condizione che tu non faccia logout e che rimanga autenticato con il tuo profilo. Solo effettuando il logout la procedura di acquisto verrà definitivamente interrotta.\r\nQuando l’operazione sarà completata con successo, nella scheda di dettaglio del video acquistato vedrai il tasto con l’indicazione <b>Visualizza</b> al posto del prezzo e selezionandolo potrai vedere il video.</>', 14, 'cubo_n_hdmi.gif', 1),
(4, 'Come collegare smartwatch e smartphone', 'Una breve guida passo passo per un''associazione dei dispositivi senza problemi.', '<p>Prima di poter utilizzare il tuo nuovo smartwatch è necessario <b>collegarlo</b> al tuo smartphone.\r\nLe procedure per farlo variano da dispositivo a dispositivo; ecco le principali, relative alle marche di smartwatch vendute sul sito TIM.\r\n</p>\r\n<p>\r\n<i>Smartwatch Samsung</i><br>\r\nScarica l''applicazione Samsung Gear. (<i>Nota: potrebbe essere richiesto che l''app sia posizionata nella cartella "Samsung" dello smartphone.</i>)\r\nTocca su <b>Connect to Gear</b> e dunque seleziona il tuo dispositivo dalla schermata che compare.\r\nPremi <b>OK</b> sullo smartphone; ti verrà comunicato un <b>codice di sincronizzazione</b> da inserire quando richiesto sullo smartwatch.\r\nAccetta le condizioni utente e account Samsung e seleziona le app di cui desideri ricevere le notifiche tramite il tuo smartwatch.\r\nIn caso di problemi, rivolgiti all''assistenza clienti Samsung.\r\n<p><i>Apple Watch</i><br>\r\nPer connettere il tuo Apple Watch al tuo iPhone, segui le procedure indicate secondo la guida Apple.</p>', 15, 'smartdevice.png', 0),
(5, 'Come verifico il mio credito?', 'Scopri come consultare le informazioni relative al credito residuo, alle offerte e ai bonus attivi sulla tua linea.', 'Il credito residuo disponibile, le offerte e lo stato dei bonus attivi sulla tua linea ricaricabile, sono consultabili attraverso le seguenti modalità:\r\n<ul>\r\n<li>Direttamente dal tuo <b>Smartphone</b>, accedendo all’app MyTIM Mobile, attualmente disponibile in download gratuito nelle versioni per iPhone e per smartphone con sistema operativo Android.</li>\r\n<li>Direttamente <b>online</b> sul sito tim.it nella sezione MyTIM Mobile riservata ai nostri clienti che ti permette di verificare il credito residuo, le quantità di minuti, SMS, GB ancora disponibili, i bonus in euro  eventualmente presenti ed effettuare variazioni sulla tua linea telefonica;</li>\r\n<li>Chiamando il <b>numero gratuito 40916</b>, per il credito residuo. Inoltre digitando il tasto 1 puoi conoscere le offerte attive, la quantità di minuti, SMS, GB ancora disponibili e i bonus in euro eventualmente presenti;</li>\r\n<li>Attraverso il servizio gratuito <b>119sms</b>; inviando un sms al 119 “a testo libero”(ad esempio “qual è il mio credito residuo”) il servizio ti risponderà con un sms con le informazioni richieste;</li>\r\n<li>Attraverso l’attivazione del servizio gratuito <b>"TIM Ti Avvisa"</b> che ti permette di conoscere il costo dell’ultima chiamata nazionale effettuata e il credito residuo aggiornato in tempo reale grazie alla ricezione di un sms direttamente sul tuo telefonino oppure con il servizio “TIM Ti Avvisa – offerte” puoi essere informato con un sms gratuito quando il consumo delle tue offerte attive raggiunge la percentuale da te scelta;</li>\r\n</ul> \r\nSe sulla tua linea sono presenti offerte e bonus in euro, la priorità di consumo segue generalmente il seguente criterio:\r\n<ol>\r\n<li>Minuti, sms, GB inclusi nell’offerta attiva;</li>\r\n<li>Bonus in euro con scadenza;</li>\r\n<li> Bonus in euro senza scadenza;</li>\r\n<li>Credito residuo.</li>\r\n</ol>\r\nIn presenza di due o più bonus è prioritario quello con scadenza più immediata.\r\n\r\nTi ricordiamo che il bonus in euro non può essere utilizzato per le chiamate internazionali, per le chiamate verso numerazioni non geografiche (in Italia e all’estero) e per il traffico roaming (ad eccezione del traffico roaming dati).\r\n\r\nTi ricordiamo infine che per poter usufruire delle offerte e degli eventuali bonus in euro presenti sulla linea, il credito residuo della tua SIM deve essere maggiore di zero.', 13, 'payment.png', 1),
(6, 'Come leggere la fattura della linea fissa', 'Scopri tutte le informazioni riportate sulla tua fattura.', 'La <b>fattura della linea fissa</b> è semplice e facile da leggere perché disegnata prendendo spunto dai suggerimenti dei clienti. La veste grafica, moderna e raffinata, utilizza un linguaggio <b>sempre più chiaro</b> per l’esposizione delle voci di spesa, facilitando la lettura di tutte le informazioni di cui hai bisogno e garantendo maggiore trasparenza nei contenuti e negli importi.\r\n\r\nNella prima pagina trovi:\r\n<ul>\r\n<li>i dati principali dell''<b>intestatario</b> della linea di casa e della fattura</li>\r\n<li>il riepilogo degli <b>abbonamenti attivi</b></li>\r\n<li>un box informativo con le <b>proposte commerciali</b> personalizzate relative a  offerte, prodotti, servizi </li>\r\n<li>l''informazione sulla <b>modalità di pagamento</b> (bollettino, addebito su conto corrente o su carta di credito)</li>\r\n<li>lo stato dei <b>pagamenti</b></li>\r\n<li>una guida veloce che riporta, attraverso semplici icone, i riferimenti per entrare in contatto con TIM: App MyTIM Fisso per Smartphone e Tablet, Social Network (Facebook, Youtube, Twitter, Google+), Servizio clienti 187, Negozi TIM.</li>	\r\n</ul>\r\nNella pagina del <b>"Dettaglio dei costi”</b> le voci sono riordinate secondo una logica più vicina alle tue esigenze:  \r\n<ul>\r\n<li>prima trovi gli eventuali <b>“Importi Una Tantum”</b> cioè quelli straordinari da pagare una sola volta, </li>\r\n<li>poi gli <b>“Abbonamenti”</b> (canoni delle offerte/prodotti/servizi attivi), </li>\r\n<li>segue la descrizione <b>“Telefonate e contenuti”</b> (consumi di traffico, sms, contenuti digitali come video on demand, ebook, ecc) </li>\r\n<li>ed infine la voce <b>“Altri importi”</b> (spese di produzione e spedizione fatture, le rate dei prodotti, le indennità di ritardato pagamento, interessi legali e moratori, consegna elenchi telefonici).</li>\r\n</ul>', 13, 'lens.png', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `categories`
--
-- Creazione: Lug 17, 2016 alle 12:39
-- Ultimo cambiamento: Lug 17, 2016 alle 12:39
--

CREATE TABLE IF NOT EXISTS `categories` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(64) NOT NULL,
  `tipo` varchar(1) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

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
-- Creazione: Lug 17, 2016 alle 22:22
-- Ultimo cambiamento: Lug 17, 2016 alle 22:22
--

CREATE TABLE IF NOT EXISTS `devices` (
  `idProdotto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) NOT NULL,
  `prezzo` float NOT NULL,
  `descrizione` text,
  `schedaTecnica` text,
  `marca` varchar(64) NOT NULL,
  `rifCategoria` int(11) NOT NULL,
  `inPromo` tinyint(1) NOT NULL DEFAULT '0',
  `spec1` varchar(255) DEFAULT NULL,
  `spec2` varchar(255) DEFAULT NULL,
  `spec3` varchar(255) DEFAULT NULL,
  `spec4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idProdotto`),
  UNIQUE KEY `nome` (`nome`),
  KEY `rifCategoria` (`rifCategoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `devices`
--

INSERT INTO `devices` (`idProdotto`, `nome`, `prezzo`, `descrizione`, `schedaTecnica`, `marca`, `rifCategoria`, `inPromo`, `spec1`, `spec2`, `spec3`, `spec4`) VALUES
(1, 'LG Nexus 5', 329.99, '<p><b>LG Nexus 5</b> è un smartphone <b>Android</b> di buon livello, fortemente votato all''imaging, in grado di soddisfare anche l''utente più esigente.</p>\r\n<p>Dispone di un grande display <b>Touchscreen</b> da <b>5 pollici</b> con una risoluzione di <b>1920x1080</b> pixel. Sul versante delle funzionalità a questo LG Nexus 5 non manca davvero nulla. A cominciare dal modulo <b>LTE 4G</b> che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. </p>\r\n<p>Ottima la fotocamera da <b>8 megapixel</b> che permette al LG Nexus 5 di scattare foto con una risoluzione di <b>3264x2448</b> pixel e di registrare video in <b>fullHD</b> alla risoluzione di <b>1920x1080</b> pixel.</p>\r\n<p>Lo spessore di <b>8.6mm</b> è contenuto e rende questo LG Nexus 5 molto interessante. \r\nPensato fin dal principio per sfruttare tutto il potenziale del sistema operativo più popolare al mondo, Nexus 5 ti offre l''esperienza Android definitiva. Sarai sempre fra i primi a ricevere gli <b>aggiornamenti software</b> e potrai divertirti fin da subito con l''ultima versione, <b>Android 6.0 Marshmallow.</b></p>', '<table class="table">\r\n<tr><td>Dimensioni</td><td>137.84 x 69.17 x 8.59 mm</td></tr>\r\n<tr><td>Peso</td><td>130g</td></tr>\r\n<tr><td>Memoria</td><td>32 GB (interna max)</td></tr>\r\n<tr><td>Espandibile</td><td>No</td></tr>\r\n<tr><td>RAM</td><td>2 GB </td></tr>\r\n<tr><td>SIM</td><td>Micro</td></tr>\r\n<tr><td>Display</td><td>4.95 pollici IPS</td></tr>\r\n<tr><td>Fotocamera</td><td>8Mp</td></tr>\r\n</table>', 'LG', 1, 0, 'Android 6', 'Display 5 ''''', 'QuadCore 2.3 GHz', '4G LTE'),
(2, 'iPhone 5s 16GB', 479.9, 'Con l''<b>iPhone 5S</b> Apple giunge alla settima edizione del proprio rivoluzionario smartphone. Ha un design molto simile al suo predecessore, ma una diversa dotazione hardware e software. Un nuovo chip, lettore di impronte digitali e fotocamera rinnovata. Su iPhone 5S è installato il sistema operativo mobile <b>iOS 10</b>.', '<table class="table">\r\n<tr><td>Dimensioni</td><td>123.8x58.6x7.6 mm</td></tr>\r\n<tr><td>Peso</td><td>112g</td></tr>\r\n<tr><td>Memoria</td><td>64000 MB (interna)</td></tr>\r\n<tr><td>SIM</td><td>Nano</td></tr>\r\n<tr><td>Display</td><td>4 pollici IPS 640px</td></tr>\r\n<tr><td>Fotocamera</td><td>8MPx</td></tr>\r\n</table>', 'Apple', 1, 1, 'iOS 10', 'Display 4 pollici', 'Solo 112 grammi', 'It''s an iPhone!'),
(3, 'Sony XPERIA X', 629.9, 'Sony Xperia X è indubbiamente uno degli smartphone Android più <b>avanzati e completi</b> disponibili sul mercato, grazie alla ricca dotazione e all''elevata <b>multimedialità</b>. Dispone di un grande display da <b>5 pollici</b> con una risoluzione di 1920x1080 pixel. Le funzionalità offerte da questo Sony Xperia X sono veramente tante e all''avanguardia. A cominciare dal modulo <b>LTE 4G</b> che permette un trasferimento dati e una navigazione in internet eccellente. \r\nL''eccellenza di questo Sony Xperia X è completata da una <b>fotocamera</b> con un sensore da ben <b>23 megapixel</b> che permette al Sony Xperia X di scattare foto di alta qualità con una risoluzione di 5520x4140 pixel e di registrare video in <b>fullHD</b>. Lo spessore di 7.9mm è veramente contenuto e rende questo Sony Xperia X ancora più spettacolare. ', '<table class="table">\r\n<tr><td>Dimensioni</td><td>142.7 x 69.4 x 7.9 mm</td></tr>\r\n<tr><td>Peso</td><td>153g</td></tr>\r\n<tr><td>Memoria</td><td>32 GB (interna)</td></tr>\r\n<tr><td>Espandibile</td><td>Fino a 200 GB</td></tr>\r\n<tr><td>RAM</td><td>3 GB </td></tr>\r\n<tr><td>SIM</td><td>Nano</td></tr>\r\n<tr><td>Display</td><td>5 pollici IPS</td></tr>\r\n<tr><td>Fotocamera</td><td>23 Mp</td></tr>.\r\n<tr><td>Fotocamera frontale</td><td>13 Mp</td></tr>\r\n</table>', 'Sony', 1, 0, 'Android 6.0', 'Display 5 pollici', 'Fotocamera 23Mp fullHD', 'Fino a 200GB'),
(4, 'Huawei P9', 599.9, 'Huawei P9 è uno smartphone <b>Android</b> avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da <b>5.2</b> pollici e di una risoluzione da <b>1920x1080</b> pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo Huawei P9 sono veramente tante e all''avanguardia. A cominciare dal modulo <b>LTE 4G</b> che permette un trasferimento dati e una navigazione in internet eccellente. \r\nDi tutto rispetto la fotocamera da <b>12</b> megapixel che permette al Huawei P9 di scattare foto con una risoluzione di <b>4290x2800</b> pixel e di registrare video in alta definizione alla risoluzione di <b>1920x1080</b> pixel. Lo spessore di appena <b>7mm</b> rende questo Huawei P9 un prodotto completo e tra i più sottili sul mercato. ', '<table class="table">\r\n<tr><td>Dimensioni</td><td>145 x 70.9 x 6.95 mm</td></tr>\r\n<tr><td>Peso</td><td>144g</td></tr>\r\n<tr><td>Memoria</td><td>32 GB (interna esp.)</td></tr>\r\n<tr><td>SIM</td><td>Nano</td></tr>\r\n<tr><td>Display</td><td>5.2 pollici IPS 1080x1920px</td></tr>\r\n<tr><td>Fotocamera</td><td>12Mp</td></tr>\r\n</table>', 'Huawei', 1, 1, 'Android 6.0', 'Display 5.2 pollici', 'Memoria 32GB espandibile', 'Fotocamera 12Mpx'),
(5, 'Decoder TIM Vision', 89.99, 'Decoder timvision', NULL, 'TIM', 4, 1, NULL, NULL, NULL, NULL),
(6, 'Samsung Gear S2', 229.99, 'Gear S2 è dotato di un display <b>Circular Super AMOLED</b> da 1.2 pollici con risoluzione di 360x360 pixel (302ppi), un processore dual core da 1.2GHz, <b>512MB di memoria RAM</b>, 4GB di memoria integrata, NFC, Wi-Fi 802.11 b/g/n e Bluetooth 4.1. La batteria da <b>250mAh</b> al litio (300mAh su versione 3G) offre circa un giorno di reale utilizzo ed ha ricarica wireless.\r\n<br>\r\nIl Gear S2 è certificato <b>IP68</b> e resiste ad acqua e polvere. Come sensori abbiamo accelerometro, giroscopio, cardiofrequenzimetro, luce ambientale e barometro. Lo smartwatch è caratterizzato da una <b>nuova interfaccia utente</b> che può essere gestita tramite la rotazione della lunetta ed i tasti laterali. Le dimensioni sono di 42.3x49.8x11.4mm (47g) per il Gear S2 Standard, 39.9x43.6x11.4mm (42g) per Gear S2 classic e 44.0 x 51.8 x 13.4mm (51g) per il Gear S2 3G.', '<table class="table">\r\n<tr><td>Display</td><td>1.2 pollici SuperAMOLED</td></tr>\r\n<tr><td>Processore</td><td>Dual core 1.0 GHz</td></tr>\r\n<tr><td>Memoria</td><td>4 GB (interna)</td></tr>\r\n<tr><td>RAM</td><td>512 MB </td></tr>\r\n<tr><td>Peso</td><td>47g</td></tr>\r\n<tr><td>Dimensioni</td><td>42.3x49.8x11.4mm</td></tr>\r\n<tr><td>Batteria</td><td>250mAh Li-ion (2-3gg)</td></tr>\r\n</table>', 'Samsung', 3, 0, 'Wearable', 'Display 1.2', '47 g', 'Batteria 2500mAh');

-- --------------------------------------------------------

--
-- Struttura della tabella `devicesinassistenza`
--
-- Creazione: Lug 17, 2016 alle 12:39
-- Ultimo cambiamento: Lug 17, 2016 alle 21:03
--

CREATE TABLE IF NOT EXISTS `devicesinassistenza` (
  `rifDevice` int(11) NOT NULL,
  `rifAssistenza` int(11) NOT NULL,
  PRIMARY KEY (`rifDevice`,`rifAssistenza`),
  KEY `rifAssistenza` (`rifAssistenza`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `devicesinassistenza`
--

INSERT INTO `devicesinassistenza` (`rifDevice`, `rifAssistenza`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `devicesinsl`
--
-- Creazione: Lug 17, 2016 alle 12:39
-- Ultimo cambiamento: Lug 17, 2016 alle 12:39
--

CREATE TABLE IF NOT EXISTS `devicesinsl` (
  `rifDevice` int(11) NOT NULL,
  `rifSmartLife` int(11) NOT NULL,
  PRIMARY KEY (`rifDevice`,`rifSmartLife`),
  KEY `rifSmartLife` (`rifSmartLife`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `devicesinsl`
--

INSERT INTO `devicesinsl` (`rifDevice`, `rifSmartLife`) VALUES
(2, 1),
(4, 1),
(5, 3),
(5, 4),
(5, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `faqsmartlife`
--
-- Creazione: Lug 17, 2016 alle 12:39
-- Ultimo cambiamento: Lug 17, 2016 alle 12:39
--

CREATE TABLE IF NOT EXISTS `faqsmartlife` (
  `idFaq` int(11) NOT NULL AUTO_INCREMENT,
  `rifSmartLife` int(11) NOT NULL,
  `domanda` text NOT NULL,
  `risposta` text NOT NULL,
  `ordine` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idFaq`),
  KEY `rifSmartLife` (`rifSmartLife`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dump dei dati per la tabella `faqsmartlife`
--

INSERT INTO `faqsmartlife` (`idFaq`, `rifSmartLife`, `domanda`, `risposta`, `ordine`) VALUES
(1, 1, 'Cosa trovo nella vetrina servizi trasporti?', 'Nella vetrina servizi trasporti puoi acquistare il biglietto dell''autobus e della metro in numerose città italiane e pagare con il tuo credito telefonico.', 1),
(2, 1, 'Quanto costa acquistare un biglietto?', 'L''utilizzo di TIM Wallet comporta il consumo di traffico Internet, per il quale si applica il tuo piano tariffario. Ti verranno inoltre addebitati il costo del biglietto più il costo dell’SMS di richiesta (19,90 €cent IVA inclusa). Il costo totale verrà scalato dal tuo credito telefonico (se sei un Cliente Ricaricabile) o con addebito in bolletta (se sei un Cliente con Abbonamento).', 2),
(3, 1, 'Che tipo di biglietti è possibile acquistare?', 'È possibile acquistare i biglietti dei trasporti pubblici per le tratte urbane ed extraurbane in numerose città italiane.', 3),
(4, 1, 'Dove posso utilizzare il servizio?', 'Per acquistare un biglietto accedi alla vetrina servizi trasporti, seleziona la città desiderata, scegli il biglietto elettronico e clicca “Acquista”. Riceverai un SMS di riepilogo, il biglietto sarà valido da quel momento senza necessità di ulteriori convalide.', 4),
(5, 6, 'Che cos''è il Season Pack Serie A TIM?', 'Il Season Pack Serie A TIM a soli 9,99 € ti permette di accedere a tutti i contenuti esclusivi dell’APP Serie A TIM fino al 30/06/2017, e di seguire quindi l’intero Campionato 2016-17', 1),
(6, 6, 'Cosa è compreso nell’abbonamento Serie A TIM?', 'Se sei Abbonato non perdi neanche un minuto di gioco, grazie alla cronaca in tempo reale di tutte le gare del Campionato e la disponibilità dei video di tutti i goal e le azioni salienti a pochi minuti dall’evento. Inoltre, potrai usufruire degli Highlights delle gare in qualsiasi momento e di tutti i contenuti video esclusivi, come Goal Collection e le giocate “Top” per ogni giornata.', 1),
(7, 6, 'Dove posso scaricare l’applicazione Serie A TIM?', 'Potrai trovare l’APP Serie A TIM direttamente nello Store del tuo dispositivo. L’applicazione è disponibile per Smartphone e Tablet con sistema operativo Android, iOS e Windows Phone.', 1),
(8, 6, 'Quanto costa l’abbonamento a Serie A TIM?', 'Il Pack annuale costa 9,99€, mentre se scegli l’opzione mensile puoi abbonarti direttamente dall’applicazione al costo di 2,49€ al mese per Android e Windows Phone e 2,99€ per iOS.', 1),
(9, 6, 'Come posso abbonarmi?', 'Abbonarsi è semplice, basta entrare nella sezione “Impostazioni” dell’APP e cliccare su “Attiva Abbonamento”, potrai scegliere se pagare con il tuo Credito Residuo o con gli altri metodi di pagamento forniti dallo Store del tuo dispositivo.', 1),
(10, 6, 'A chi è rivolta l’Offerta?', 'L’offerta annuale è disponibile solo per i clienti TIM, mentre la promozione mensile è attivabile da tutti i clienti di tutti gli Operatori Mobili e anche navigando in Wi-Fi', 1),
(11, 6, 'Come posso controllare se l’APP riconosce la mia offerta attiva?', 'Per controllare se l’Abbonamento è attivo, entrando nell’APP accedi alle “Impostazioni” e sulla prima voce del menù potrai controllare se l’Abbonamento è attivo.', 1),
(12, 6, 'Dove posso disattivare l’abbonamento?', 'Puoi disattivare l’Abbonamento direttamente dall’APP, nella sezione “Info & Costi” clicca su “Disattiva Abbonamento”. Se hai attivato il Pack annuale, potrai richiedere la disattivazione dell’offerta anche chiamando il numero gratuito 40916 o il Servizio Clienti 119, oppure accedendo alla sezione MyTIM Mobile del sito.', 1),
(13, 6, 'Per quali contenuti il traffico dati è incluso nell’Abbonamento?', 'Il traffico dati è incluso per i clienti TIM (3G/4G) per tutti i contenuti video ad eccezioni delle sezioni “Dalla rete” e “World”.', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `imagesindevices`
--
-- Creazione: Lug 17, 2016 alle 12:39
-- Ultimo cambiamento: Lug 17, 2016 alle 22:21
--

CREATE TABLE IF NOT EXISTS `imagesindevices` (
  `rifDevice` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  PRIMARY KEY (`rifDevice`,`src`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `imagesindevices`
--

INSERT INTO `imagesindevices` (`rifDevice`, `src`) VALUES
(1, 'lg_nexus_5.jpg'),
(2, 'APPLE_OIPHONE_SE_spacegrey_01.jpg'),
(2, 'APPLE_OIPHONE_SE_spacegrey_02.jpg'),
(3, 'xperiax.jpg'),
(4, 'huawei-p9-grey-01.jpg'),
(5, 'tv-icon.png'),
(6, 'gears2.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `smartlife`
--
-- Creazione: Lug 17, 2016 alle 12:39
-- Ultimo cambiamento: Lug 17, 2016 alle 12:39
--

CREATE TABLE IF NOT EXISTS `smartlife` (
  `idSmartLife` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) NOT NULL,
  `abstract` text,
  `descrizione` text,
  `attivazioneRegolamento` text,
  `rifCategoria` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `promo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idSmartLife`),
  KEY `rifCategoria` (`rifCategoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `smartlife`
--

INSERT INTO `smartlife` (`idSmartLife`, `nome`, `abstract`, `descrizione`, `attivazioneRegolamento`, `rifCategoria`, `image`, `promo`) VALUES
(1, 'TIM Trasporti', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet mauris risus. Duis convallis rhoncus rutrum. Suspendisse et auctor sapien. Vestibulum nec sagittis est, aliquet vehicula urna. Sed id nibh id lectus ultricies iaculis eget in tellus. Praesent a pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin dui eu orci maximus, et efficitur velit imperdiet. Vivamus odio tortor, egestas ac tempus vel, molestie sed lectus. Etiam nec egestas velit. Integer tempor pharetra nisl, eu sodales nulla scelerisque sit amet.\r\n\r\nMauris vitae blandit arcu. Aenean enim mi, vestibulum quis porta ac, fermentum eu dolor. Sed porta volutpat tortor sed varius. Mauris quis eros ut elit pellentesque accumsan. Phasellus a mollis est. Donec accumsan urna non gravida accumsan. Morbi sed justo nec nisl feugiat lobortis. Ut gravida sapien at mi pretium, eu cursus leo tempus. Duis placerat semper neque, at laoreet elit aliquam sit amet. Maecenas ante metus, porttitor eu efficitur egestas, posuere quis eros. Proin in nisl in dolor feugiat tincidunt. Aenean aliquet erat sapien, in fermentum quam venenatis quis. Vivamus a odio blandit sapien dapibus condimentum.\r\nInteger accumsan leo accumsan tellus finibus imperdiet quis ornare neque. Integer molestie auctor sapien, a egestas sapien bibendum ut. Nulla facilisi. Maecenas tincidunt, tortor sit amet vestibulum ullamcorper, quam ipsum volutpat turpis, eget fermentum tellus nisl vitae augue. Duis id ante pretium nibh pharetra mattis. Nunc ut cursus sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec elementum, enim id pharetra venenatis, tortor lectus efficitur eros, sed venenatis tellus orci non massa. Etiam nibh odio, malesuada a nisl eu, fermentum ornare eros. Quisque feugiat ullamcorper euismod. Suspendisse ac viverra elit, non porta justo. Aliquam vitae sem ultricies, pellentesque lectus sed, consectetur est.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet mauris risus. Duis convallis rhoncus rutrum. Suspendisse et auctor sapien. Vestibulum nec sagittis est, aliquet vehicula urna. Sed id nibh id lectus ultricies iaculis eget in tellus. Praesent a pellentesque magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin dui eu orci maximus, et efficitur velit imperdiet. Vivamus odio tortor, egestas ac tempus vel, molestie sed lectus. Etiam nec egestas velit. Integer tempor pharetra nisl, eu sodales nulla scelerisque sit amet.\r\n\r\nMauris vitae blandit arcu. Aenean enim mi, vestibulum quis porta ac, fermentum eu dolor. Sed porta volutpat tortor sed varius. Mauris quis eros ut elit pellentesque accumsan. Phasellus a mollis est. Donec accumsan urna non gravida accumsan. Morbi sed justo nec nisl feugiat lobortis. Ut gravida sapien at mi pretium, eu cursus leo tempus. Duis placerat semper neque, at laoreet elit aliquam sit amet. Maecenas ante metus, porttitor eu efficitur egestas, posuere quis eros. Proin in nisl in dolor feugiat tincidunt. Aenean aliquet erat sapien, in fermentum quam venenatis quis. Vivamus a odio blandit sapien dapibus condimentum.\r\nInteger accumsan leo accumsan tellus finibus imperdiet quis ornare neque. Integer molestie auctor sapien, a egestas sapien bibendum ut. Nulla facilisi. Maecenas tincidunt, tortor sit amet vestibulum ullamcorper, quam ipsum volutpat turpis, eget fermentum tellus nisl vitae augue. Duis id ante pretium nibh pharetra mattis. Nunc ut cursus sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec elementum, enim id pharetra venenatis, tortor lectus efficitur eros, sed venenatis tellus orci non massa. Etiam nibh odio, malesuada a nisl eu, fermentum ornare eros. Quisque feugiat ullamcorper euismod. Suspendisse ac viverra elit, non porta justo. Aliquam vitae sem ultricies, pellentesque lectus sed, consectetur est.', 6, 'placeholder.png', 0),
(2, 'SL Test', NULL, 'Just a test', 'It''s a test!!!', 6, 'placeholder.png', 0),
(3, 'Tim Vision', 'Cartoni, cinema, serie tv, documentari e concerti sempre on demand per creare il tuo palinsesto senza pubblicità. Più di 8.000 titoli in un abbonamento, senza vincoli di durata, anche in HD', '<p>TIMvision è la TV sempre on demand di TIM che non ti abbandona mai, senza pubblicità e anche da più dispositivi contemporaneamente. Vedi i tuoi programmi preferiti direttamente su Web e TV Anche su Smartphone e Tablet senza consumare Giga</p>\r\n<p><b>Accomodati e goditi il grande cinema</b>\r\nUna ricca proposta di film con le anteprime più attese, i grandi claassici, inediti, film d’azione, thriller, animazione e commedie per tutta la famiglia.In più l’HD, per rendere ogni immagine spettacolare e non perdere neanche un particolare</p>', NULL, 6, 'timvision.png', 1),
(4, 'Tim Sky', 'Solo la nostra fibra e l’ADSL veloce ti portano SKY, senza parabola. TIM SKY, la prima offerta che ti dà chiamate, internet senza limiti e ti porta a casa lo spettacolo di SKY, senza parabola', '<p>Sei già cliente ADSL/Fibra di TIM?\r\nPer te il grande spettacolo e l’innovazione di Sky a partire da soli 14 €/mese in più per i primi 18 mesi.</p>\r\n<p>Se aderisci a TIM Sky entro il 3 luglio 2016 puoi avere:\r\n<ul><li>My Sky per vedere la TV come e quando vuoi e Sky On Demand, una videoteca con migliaia di titoli sempre a tua disposizione.\r\nSky TV con 38 canali di intrattenimento esclusivo a soli 14 €/mese per i primi 18 mesi, oppure Sky TV + un pacchetto a scelta tra Sky Cinema, Sky Sport o Sky Calcio a 26,90 €/mese per i primi 18 mesi. Puoi aggiungere all''offerta anche Sky Famiglia + Sky HD a 5€/mese per i primi 18 mesi anzichè 11€.</li>\r\n<li>Sky Box Sets è la novità di Sky che ti offre le migliori serie TV, stagione dopo stagione, tutte su My Sky.</li></p>', NULL, 6, 'timsky.png', 0),
(5, 'Netflix', 'Serie Tv e film a partire da 7,99 €/mese,dove vuoi e quando vuoi, anche il decoder TIMvision', 'Scopri nuove storie\r\n\r\nSerie originali, commedie, drammi e programmi per bambini, puoi guardare le tue serie TV e film preferiti in streaming istantaneo sul dispositivo che preferisci. L''offerta TV che aspettavamo da tempo per la grande varietà dei contenuti, da vedere quando e dove vuoi con qualità della Rete TIM e senza vincoli, disponibile direttamente sulla TV di casa anche attraverso il decoder TIMvision con la qualità HD.', NULL, 6, 'netflix.png', 0),
(6, 'Serie A Tim', 'L''APP Serie A TIM è l’applicazione ufficiale del Campionato di Calcio di Serie A e per la stagione 2016/2017 continuerà ad essere il riferimento per tutti gli appassionati, con un modo nuovo e completo di seguire dove vuoi e in qualunque momento lo spettacolo del Campionato.', '<p><b>In esclusiva</b>, potrai seguire ogni partita dove vuoi, non perdendo neanche un minuto di gioco grazie alla cronaca in tempo reale di tutte le gare, la disponibilità dei video di tutti i goal e le azioni salienti a pochi minuti dall’evento. Alla fine del primo tempo e della gara, avrai a disposizione gli <b>highlight</b> per rivivere tutte le emozioni, oltre alle innovative infografiche statistiche che arricchiranno la cronaca, aiutandoti a interpretare al meglio l’andamento dell’incontro.\r\nAccedi in qualsiasi momento a tutte le <b>statistiche</b> del Campionato, quando vuoi e in mobilità potrai rivedere <b>tutti i goal</b> del Campionato. Nella sezione “Top” hai anche una selezione delle migliori giocate della giornata. Grazie alle <b>notifiche push</b> in tempo reale, anche fuori casa o quando sei impegnato, avrai un canale sempre acceso sulla tua squadra del cuore e su tutta la Serie A. Personalizza gli <b>aggiornamenti live</b>, scegliendo una singola partita, videogoal, news o tutti i contenuti più accattivanti dell’App Serie A TIM.</p>\r\n\r\n<p>Nell’App <b>Serie A TIM</b> trovi tutte le ultime notizie sul mondo del Calcio, anche quando sei in viaggio, con news sul Campionato italiano, ma anche su tutte le altre competizioni. Inoltre, puoi partecipare alla vita social grazie all’accesso diretto alla Fan Page Serie A TIM di Facebook e Serie A TIM su Twitter.</p>\r\n\r\n<p>Scarica l’App Serie A TIM e avrai il meglio del Calcio sul tuo smartphone o tablet .\r\n<b>E se sei cliente TIM non consumi GB!</b> Prima di abbonarti potrai provare gratuitamente i contenuti esclusivi e rimanere aggiornato con le news e le statistiche disponibili per tutti.\r\n<br>\r\nL’abbonamento a Serie A TIM offre:\r\n<ul>\r\n<li>Video-goal di tutte le partite</li>\r\n<li>Video-sintesi di tutte le partite</li>\r\n<li>Video –rubriche tematiche</li>\r\n<li>Infografiche video per seguire i trend di gioco di ciascun match in tempo reale e in alta qualità</li>\r\n<li>Alert di tutti i goal e sintesi delle partite della tua squadra del cuore</li>\r\n<li>Video-news e tutti i video di conferenze stampa e interviste</li>\r\n<li>Calciomercato estivo</li>\r\n<li>Personalizzazione della tua squadra del cuore, grazie alla funzione “La mia squadra”, per ricevere gli alert dei goal di ogni giornata</li>\r\n<li>Approfondimenti video esclusivi sui turni giocati con Top Player, Top Goal, Top Parate, Assiste e Goal Collection Completa</li>\r\n<li>Archivio completo con tutti i goal del Campionato di Serie A TIM oltre alle partite in differita in modalità sintetizzata</li>\r\n<li>Condividere le opinioni con i tuoi amici direttamente dall''App per tifare e commentare ogni partita con TOK.tv</li>\r\n<li>Accesso premium integrato da Rete mobile e Wi-fi</li>\r\n<li>Per i clienti TIM traffico dati incluso per tutti i contenuti Premium</li>\r\n</ul>\r\n</p>', '<h4>Costi</h4>\r\n<p>L’abbonamento è disponibile in due modalità:\r\n<br>\r\n<b>PACK ANNUALE SERIE A TIM</b><br>\r\nPuoi sfruttare il Pack Annuale e avrai la possibilità di seguire tutta la fine del Campionato 2015-16, il calciomercato e  le news dai ritiri, e tutto  il Campionato della Serie A TIM 2016-17 fino al 30/06/2017 a soli 9,99 €.\r\n<br>\r\nIl costo di attivazione dell’opzione  PACK ANNUALE SERIE A TIM è di 9,99 €; e comprende tutti i contenuti premium dell’App Serie A TIM fino al 30/06/2017 dove tutte le giornate di Campionato sono incluse.\r\n\r\nPer utilizzare l’abbonamento è necessario scaricare l’applicazione Serie A TIM su smartphone o tablet Android, Apple o Windows Phone 8.\r\n<br>\r\n<b>ABBONAMENTO MENSILE</b>\r\n<br>Puoi scegliere l’abbonamento Mensile a 2,49€ e per 30 giorni potrai godere di tutti i contenuti esclusivi dell’App, non perdendoti neanche un minuto della Serie A.\r\nL’abbonamento mensile è attivabile direttamente dall’App Serie A TIM, scaricala subito cliccando su “Scarica l’App”.\r\n<br>\r\nAl termine dei 30 giorni l’offerta si rinnova automaticamente al costo di 2,49 € al mese, salvo disattivazione che potrà essere richiesta in qualsiasi momento dal tasto “Disattiva Abbonamento” presente all’interno della sezione Impostazioni/ Info e Costi dell’App. Potrai richiederne la disattivazione anche chiamando il numero gratuito 40916 o il Servizio Clienti 119, oppure accedendo alla sezione MyTIM Mobile del sito. TIM ti informa che l’abbonamento è disponibile per i soli clienti TIM, secondo i diritti concessi dalle squadre di Calcio a TIM.\r\nPer utilizzare l’abbonamento è necessario scaricare l’applicazione Serie A TIM su smartphone o tablet Android, Apple o Windows Phone 8.\r\n</p>\r\n<h4>Dettagli e limitazioni dell''offerta</h4>\r\n<ul>\r\n<li>Tutti i prezzi sono IVA inclusa.</li>\r\n<li>Serie A TIM è un servizio in abbonamento.</li>\r\n<li>Prima dell''attivazione dell''offerta è necessario verificare che il proprio smartphone sia compatibile con l''applicazione che necessita di sistema operativo Android dalla versione 4.x, Windows Phone 8, IOS.</li>\r\n<li>Il costo di attivazione delle opzioni comprende tutti i contenuti premium dell’App Serie A TIM. Per il pack annuale l’abbonamento è valido fino al 30/06/2017, al termine, il servizio resta attivo al costo di 2,49 € al mese, con rinnovo automatico.</li>\r\n<li>Il traffico dati per la visione dei video-goal e delle video-sintesi è incluso nel prezzo dell’abbonamento; il traffico dati per la lettura delle notizie e la visione dei video diversi da quelli citati viene eroso dal bundle disponibile sulla SIM/Wi-fi del Cliente.</li>\r\n<li>I clienti possono usufruire dell''opzione se hanno credito residuo sulla SIM Card o alternativamente possono fruire dei contenuti in modalità Wi-fi.</li>\r\n<li>L''attivazione del servizio è effettuata in automatico entro 24 ore dall’ avvenuta attivazione dell’opzione. Si può verificare l''attivazione di Serie A TIM chiamando il Servizio Clienti 119 o direttamente nella sezione dell’App “Impostazioni/Profilo/Stato abbonamento”.</li>\r\n<li>Per usufruire del servizio dopo aver attivato l’offerta, basta scaricare gratuitamente sul proprio smartphone e/o tablet l''applicazione Serie A TIM Mobile da Google Play, App Store, Windows Phone Store.</li>\r\n<li>Il traffico per la fruizione di tutti i contenuti a pagamento è incluso, per i clienti TIM, nel costo dell’abbonamento su Rete TIM e non comporta pertanto costi aggiuntivi per il cliente o erosione dl bundle di traffico dati eventualmente attivo sulla propria linea. Il traffico dati per l’apertura dell’App e per la fruizione dei contenuti di Serie A TIM, come la visualizzazione della home page, la lettura di News, Statistiche, Partecipa, video dalla Rete, non è incluso. Il costo è secondo piano tariffario attivo sulla propria linea.</li>\r\n<li>E'' possibile attivare le offerte direttamente online, chiamando il numero gratuito 40916 o il Servizio Clienti 119.</li>\r\n<li>E'' possibile disattivare in qualsiasi momento l’offerta, chiamando il numero gratuito 40916 o il Servizio Clienti 119, oppure accedendo alla sezione MyTIM Mobile del sito. Solo se si è sottoscritto l’abbonamento direttamente dall’App Serie A TIM è possibile disattivarlo, cliccando su “Disattiva Abbonamento” presente all’interno della sezione Impostazioni/ Info e Costi.</li>\r\n<li>Per clienti iOS che acquistano da App il costo dell’abbonamento mensile è pari a 2,99 €.</li>\r\n</ul>', 6, 'placeholder.png', 1);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
