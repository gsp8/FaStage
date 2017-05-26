-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 19, 2017 alle 13:55
-- Versione del server: 10.1.21-MariaDB
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aziende`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `aziende`
--

CREATE TABLE `aziende` (
  `ID` int(11) NOT NULL,
  `Azienda` varchar(49) DEFAULT NULL,
  `Comune` varchar(28) DEFAULT NULL,
  `Indirizzo` varchar(44) DEFAULT NULL,
  `Telefono` varchar(33) DEFAULT NULL,
  `Email` varchar(55) DEFAULT NULL,
  `Web` varchar(93) DEFAULT NULL,
  `Note` varchar(161) DEFAULT NULL,
  `ClasseAccettata` varchar(122) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `aziende`
--

INSERT INTO `aziende` (`ID`, `Azienda`, `Comune`, `Indirizzo`, `Telefono`, `Email`, `Web`, `Note`, `ClasseAccettata`) VALUES
(1, 'Cisco', 'New York', '21 Jump Street', '349 5049884', 'cisco@cisco.com', 'www.cisco.com', 'Router, Switch, Firewall, VPN', 'Classe 5 only'),
(2, 'levia', '38123 Ravina', 'Via Stella, 9/L', '0461 936040', '', 'https://www.levia.it/ita/index.asp?idPage=&id=78', '', ''),
(3, 'GeekSolution', '38123 Trento', 'Villazzano Via Padre Eusebio Chini, 2/8', '333 475 91 99', 'info@geeksolution.it', 'www.geeksolution.it', '', ''),
(4, 'hg blu', '38123 TRENTO', 'Via Galassa, 24', '0461.1920220 - 0461.1596216', 'info@hgblu.com', 'http://www.hgblu.com/it/', '', ''),
(5, 'TREOS di Salvatore Leo', '38123 Trento', 'Via Ragazzi del ', '4611975667', 'info@salvatoreleo.com', 'http://www.salvatoreleo.com/', '', ''),
(6, 'Graffiti', 'Arco', '', '', '', 'http://www.graffiti2000.com/', '', ''),
(7, 'Tecnoprogress S.p.A.', 'Arco', 'Via S. Andrea, 53', ' 0464 570 710', '', 'http://www.tecnoprogress.it/assistenza.asp', 'assistenza', ''),
(8, 'ADVStudio', 'Bolzano', '', '', '', 'http://www.advstudio.it/', 'siti web', ''),
(9, 'Mouse', 'Borgo', 'via Roma', ' telefono 0461759997', '', '', '', ''),
(10, 'infotechcomputer', 'Borgo V.', 'Via XX Settembre, 18   38051', '0461 752185', 'marco@infotechcomputer.it', 'http://www.infotechcomputer.it/service.php', 'assistenza tecnica php', 'E'),
(11, 'Cinetix', 'Borgo valsugana', '', '', '', '', '', ''),
(12, 'Silverlake,', 'Cadine', '', '', '', 'http://www.silverlake.it/Societa.htm', 'assistenza', ''),
(13, 'BE @ work s.r.l. INFORMATICA  15 38086 tn-italy', 'Carisolo', 'piazza 2 maggio,', '0465 .502644', '', 'http://www.beatwork.it/', '', ''),
(14, 'DADO SOFTware di Tisi Corrado', 'Carisolo', '', 'tel 0465.502644', '', 'http://www.dadosoftware.com/index.asp?pagina=home', '', ''),
(15, 'Rievoluzione', 'Castelnuovo', 'Via Broletti n. 18', '0461 754683', 'fabrizio.trentin@rievoluzione.it', 'http://www.rievoluzione.it/', 'web', ''),
(16, 'digystyle', 'Comano Terme (TN)', '', '349 8675159', 'info@digistyle.it', 'http://www.trentinowebsite.it/realizzazione-siti-web-aggiornabili-trentino-ottimizzazione-seo', '', ''),
(17, 'Akei', 'Faedo', 'VIA S. AGATA, 21/A, 38010', '', '', 'https://www.akei.it/', '', ''),
(18, 'Brenta Paganella', 'Fai della Paganella', 'Via Guglielmo Marconi 2', '0461 581045', 'Stefano Clementel info@brentapaganella.com', '', 'Web', ''),
(19, 'Flor Informatica srl', 'Filiale di Trento: TRENTO', 'Via G. Unterveger, 84 - 38121', '0463-422333', 'info@florinformatica.it', 'http://www.florinformatica.it/def/content.asp?ItemType=pages&ItemID=61', '', ''),
(20, 'KIOO STUDIO', 'Fraz. Strada 16', ', 38085 Pieve di Bono', '0465 674540', 'hello@kioostudio.it', 'http://www.kioostudio.it/', '', ''),
(21, 'AST di Beatrici G.', 'Gardolo', '', '461992357', 'Estate 2017 occupato. Contattare a settembre 2017', '', '', ''),
(22, 'Interplay Software S.r.l.', 'Gardolo Trento', 'via 4 Novembre 1918 nr. 95', '0461.421737', '', 'http://www.ipsoft.it/', '', ''),
(23, 'Alpsolution soc coop', 'Lavarone', 'Via Marconi 16', '', '', 'http://www.alpsolution.it/index.php/contacts', 'Web, assistenza', ''),
(24, '426', 'Laives', '', '', 'https://www.426.agency/it/', '', '', ''),
(25, 'Interline', 'Lavis', 'via Paganella 50/13 - 38015 Lavis (TN)', '0461-606248', '', 'http://www.interline.it/', 'siti web', ''),
(26, 'IkonArt', 'Lavis (Tn)', 'Via G. Zanella, 1', '0461.241220', 'ikon.art@ikonart.it', 'http://www.ikonart.it/', '', ''),
(27, 'achrome', 'Levico Terme, Trento', 'Via Casotte, 24/b', '347 9736237', 'nnazappa(at)achromeweb.it', 'http://www.achromeweb.it/', 'non ha un ufficio, non puï¿½ ospitare. E', ''),
(28, 'Alinformatika', 'Mezzolombardo', 'Via Trento 7/9', 'Tel. 0461.600413', '', 'http://www.alinformatika.com/', '', ''),
(29, 'strikeweb', 'Mezzolombardo (TN)', 'via Rotaliana 49/2 - 38017', '0461 650995', 'info@strikeweb.it', 'http://www.strikeweb.it/', 'php angular javascript', ''),
(30, 'jackoswebsolutions', 'Mori (TN)', 'Via Fabio Filzi, 11', '393455062663', 'admin@jackoswebsolutions.it', 'https://www.jackoswebsolutions.it/', '', ''),
(31, 'OPENMOVE', 'Morii', 'via della Lasta 12', '', '', '', 'JavaScript, NodeJS, Linux, webdesign + HTML/CSS', ''),
(32, 'ICT-Progetti di Beber Andrea ', 'Pergine', 'Viale Dante 300', '461510754', 'info@ict-progetti.it - Ing. Beber 328 9478990', '', 'Applicazioni Web', ''),
(33, '', '', '', '', '', '', '', ''),
(34, 'Gigashop', 'Pergine V.', 'ï¿½Viale Dante, 106', '0461 538015ï¿½', ' elvis@gigashop.it', 'http://www.gigashop.it/', 'Vendita e assistenza PC', ''),
(35, 'Agostini Andrea', 'PERGINE VALSUGANA', '', '3480685063', 'consulente@agostiniandrea.it', 'http://www.tecnicoinformaticotrento.it/', '', ''),
(36, 'Artica Lab', 'Pieve di Bono', 'Via Levido Colle 4', '39 349 8340711', 'Federica De Muzio', 'http://www.articalab.it/', 'Html5 Css3', ''),
(37, 'Casagrande Paolo Elettrodomestici', 'Pinï¿½', 'Via Cesare Battisti, 9', '0461 557792', 'info@casagrandepaolo.it', '', 'Assistenza PC e vendita', ''),
(38, 'DDA PRO', 'Ponte Arche', 'Piazza Mercato 24', '0465-940242', '', 'http://www.ddapro.it/', 'siti web', ''),
(39, 'korgan', 'Riva del Garda (Trento)', 'Via S. Nazzaro 83/c - 38066', '340.7371759', '', 'http://www.korgan.it/it/1/siti-internet-riva-arco-rovereto-trento', '', ''),
(40, 'nonsoloweb', 'Romagnano (TN)', 'Via di S.Brigida, 6', '348 7610756', 'info@nonsoloweb.info', 'http://www.nswtrento.com/', 'E', ''),
(41, 'airpim srl', 'Rovereto', 'via per Marco 12D', '0464 076063', '', 'www.airpim.com', 'WEB technologies (html, css, js libraries, ajax...)', ''),
(42, 'DB Formazione Srl', 'Rovereto', 'P.zza A.Leoni, 22', '0464/424902', '', '', 'sviluppo Web e app android', ''),
(43, 'FastService', 'Rovereto', '', '', '', 'http://fastservice.pro/contact', 'riparazioni, assistenza', ''),
(44, 'Totem solution', 'Rovereto', '', '', '', 'http://www.totemsolution.net/', 'siti web', ''),
(45, 'Trentino Sistemi S.r.l.', 'Rovereto (TN)', 'Via Tartarotti 8', '0464.79.10.07', 'nfo@trentinosistemi.com', 'http://www.trentinosistemi.it/', '', ''),
(46, 'isite', 'Spini', 'via Kufstein, 5 38121 Trento', 'Tel. +39 0461 421001', 'si   si              amm@isite.it', 'http://www.isite.it/it/team.aspx', '', ''),
(47, 'ondanomala', 'Storo', 'Via Saletto, 26  38089', '0465  297179', '1^ volta di stage', '   info@ondanomalacreazioni.it', 'http://ondanomalacreazioni.it/about/', ''),
(48, 'dginformatics', 'TN/BZ/Brunico', 'Via delle Orfane,  23    Trento', '0461 1920371', 'n. a. da TN  -  non so da BRUNEC o BZ', 'http://www.dginformatics.it/it/info/contatti.html', 'catena di negozi', ''),
(49, 'Agevis', 'Trento', 'Via Solteri, 38', '0461 1862191', 'amministrazione@agevis.it', 'http://www.agevis.it/attivita/assistenza-tecnica.aspx', 'assistenza e reti', ''),
(50, 'Aldebra', 'Trento', 'Via Linz, 13', '0461 302400', '', '', '', ''),
(51, 'Alysso', 'Trento', 'Viale Adriano Olivetti, 7', '0461 1823900', '', '', '', ''),
(52, 'Archimede - Flavio Righetti', 'Trento', 'via Bolzano 59', '0461 961018', 'info@archimede.nu', 'http://www.archimede.nu/it/', 'WEB', ''),
(53, 'Asistar', 'Trento', 'ia Kufstein, 1', '0461 1862115', '', 'http://www.asistar.it/', '', ''),
(54, 'AssicraGroup', 'Trento', '', '', '', '', '', ''),
(55, 'Cassa rurale di Lavis', 'Trento', '', '0461 248547', 'loreta.rosatti@cr-lavis.net', '', '', ''),
(56, 'Clesius', 'Trento', 'viale Verona 190/1', '0461/383911', '', 'http://www.clesius.it/wordpress/?page_id=11', ' XML e di disegno di database e SQL . Capacitï¿½ di lavorare in gruppo.', ''),
(57, 'Cluster Informatica Srl', 'Trento', 'Viale Bolognini, 50 38122', '0461 910941', 'info@clusterinformatica.eu', 'http://www.clusterinformatica.eu/', 'Estate 2017 non prendono stagisti', ''),
(58, 'Computer Learning', 'Trento', 'Via Solteri 38', '0461-420340', 'sig. Virginio Amistadi ', 'http://www.computerlearning.it/', '', ''),
(59, 'Computer Restore snc ï¿½', 'Trento', 'Via Moggioli 1 (incrocio C.so Alpini)  38100', '0461  823712', '', 'http://www.computerrestore.it/chisiamo.htm', '', ''),
(60, 'Computer Systems', 'Trento', 'Gardolo - via 4 Novembre, nï¿½100 ï¿½ 38121ï', '0461 960 213', 'Estate 2017 non prendono stagisti.', 'http://www.computersystems.tn.it/contattaci', '', ''),
(61, 'DATACON DI CAGOL MAURIZIO', 'Trento', '', '0461 810886', '', '', '', ''),
(62, 'Delta Informatica s.r.l.', 'Trento', 'Via Kufstein, 5  (SPINI di Gardolo)', '0461 - 042200', 'antonio.biscaglia@deltainformatica.eu', '', '', ''),
(63, 'Dexit', 'Trento', 'Via Gilli, 2 38100 Trento', '0461 020500', '', '', '', ''),
(64, 'DOIT - Cristina Furlani', 'Trento', 'piazza Garzetti, 16', 'telefono 0461.261656', 'cristina@d0itonline.it', 'http://www.doitonline.it/doit-trento-contatti.html', 'zienda piccola, siti web', ''),
(65, 'Domotica trentina', 'Trento', 'Trento Sud', '0461 391744', 'alessio@infomusic.it', '', 'SI ,  1  posto', ''),
(66, 'Dottor G', 'Trento', 'via Scopoli 7', '0461) 827529', '', '', '', ''),
(67, 'e-computershop', 'Trento', 'Via Largo Carducci', '0461/1826880', 'info@e-computershop.it', 'https://www.computershop.pisa.it/e-computer-shop', '', ''),
(68, 'EnginSoft', 'Trento', 'Mattarello', '39 0461 915 391', '', 'http://www.enginsoft.it/attivita/servizi_informatici.html', '', ''),
(69, 'Etymo srl', 'trento', 'via Brescia, 37', '0461 236456', '', '', '', ''),
(70, 'Europa Computer s.r.l.', 'Trento', 'Via Don Guetti, 36', '0461 - 828645', 'info@eurotn.it', 'http://www.eurotn.it/chi-siamo/#.WHiBMlXhDcs', '', ''),
(71, 'Eyepro System s.r.l.', 'Trento', 'Via Guardini, 24', '0461 - 402148', 'sales@eyeprosystem.com', '', '', ''),
(72, 'FactoryMind', 'Trento', 'via Kufstein, 5, Spini di Gardolo', ' 0461-042400', 'sig.Alessandro', 'http://www.factorymind.com/', 'dot.net e Java', ''),
(73, 'Gpi S.p.A.', 'Trento', 'Via Ragazzi del 99, 13', '0461 - 381515', 'personale@gpi.it', '', 'Mascia Baldessari : sempre fatto stage, ai figli dei dipendenti', ''),
(74, 'ICOGE', 'Trento', 'via Lunelli 43', 'Tel. 0461.825452', '', 'http://www.icoge.it/soluzioni.html', '', ''),
(75, 'I&s', 'Trento', '', '', '', '', '', ''),
(76, 'infomusic', 'TRENTO', 'Via dei Viticoltori, 5', '0461 391744', '', 'info@infomusic.it', 'progettazione reti assistenza tecnica', ''),
(77, 'Informatica Bancaria Trentina srl', 'TRENTO', 'Via Guardini, 31', '0461.1733333', 'info@ibttn.it', 'http://www.ibttn.it/', '', ''),
(78, 'Itas', 'Trento', '', '0461-891708', 'dir.personale Chemolli Giuseppe data email', 'risorseumane@gruppoitas.it', '', ''),
(79, 'madeincima', 'Trento', 'Via del Brennero, 248', '0461/041535', 'Andrea Cima Serniotti [andrea@madeincima.it]', 'http://www.madeincima.it/', '', ''),
(80, 'MarketingDesign', 'Trento', 'Via Pranzelores 87', 'Cell. +39 333 5408504', 'info@marketingdesign.it', 'http://www.marketingdesign.it/contatti/', 'richiama ', ''),
(81, 'Movalia', 'Trento', 'Via Maccani, 108/21', '0461 402173', 'info@movalia.it', '', '', ''),
(82, 'maxwebtrento', 'Trento', 'Via Androna II Borgonuovo, 20', '328 6914277', 'info@maxwebtrento.it', 'http://www.maxwebtrento.it/', '', ''),
(83, 'Net Wise S.r.l.', 'Trento', 'Via Caproni, 9 - 38121', '0461 421016', 'info@netwise.it', 'http://netwise.it/', '', ''),
(84, 'New Data Informatica s.r.l.', 'Trento', 'Mattarello, Loc. Le Basse, 3', '0461 944368', '', 'http://www.newdata.biz/servizi/Servizi.aspx', 'assistenza, web software', 'Ha risposto la dott.ssa Bottura dicendo che che non sussistono presso di loro le condizioni per poter accogliere stagisti.'),
(85, 'Nipe', 'Trento', 'Mattarello via della Cooperazione 133', '328 3217070', '', '', '', ''),
(86, 'OGP', 'Trento', '', '0461 1823300', 'info.ogp@ogp.it Dario Bertoluza', 'http://www.ogp.it/about', '', ''),
(87, 'Pat energia', 'Trento', 'Piazza Fiera', 'uno', 'Roberto Brunelli <Roberto.Brunelli@provincia.tn.it>', '', '', ''),
(88, 'PcCopy', 'Tione', '', '3391168855', 'Stefano Dorna', 'info@pc-copy.it', '', ''),
(89, 'Pervoice SpA', 'Trento', 'Via Zambra', '0461 - 383960', '', '', 'quest', ''),
(90, 'pharmofox', 'Trento', 'via Maccani 193', '0461-822962', '', 'http://www.pharmafox.com/', '', ''),
(91, 'PRAIM', 'Trento', 'Ezio Maccani,  191', '0461 420517', 'customer.care@praim.com', '', 'Linux, C ARM', ''),
(92, 'PRIME Consulting S.r.l.', 'Trento', 'Via Kufstein 1, 38121', '0461 263900', 'info@primetn.it', 'http://www.primetn.it/realizzazione-siti-web-trento.html', '', ''),
(93, 'Santa Croce Informatica S.A.S. Di Renzo Sartori &', 'Trento', 'Via santa Croce', '0461 237000', '', '', '', ''),
(94, 'SEAC  SpA', 'Trento', 'Via Solteri 74, 38121', 'Tel.0461/805111', 'FORSE SI !!!          lbusana@seac.it', 'https://www.seac.it/servizi/it', '', ''),
(95, 'SIDERA SOFTWARE s.r.l.', 'Trento', 'Via Lunelli, 62', '0461 421563', 'barbara.tomasi@sidera.it ', '', 'Java e SQL, reti computer', ''),
(96, 'SocialIt', 'Trento', 'Via Kufstein 5', '0461 036689', 'Maurizio Gianordoli 340 8991749', 'http://www.socialit.it/', '', ''),
(97, 'Stain engineering', 'Trento', '', '', '', '', '', ''),
(98, 'STARSYSTEM IT Srl', 'Pergine', 'Localitï¿½ Fratte 49 -', '0461.185.10.40', 'rif. Silvano Samaretz - silvano.samaretz@starsystem.biz', 'http://www.starsystem.biz', 'Estate 2017, calendario stages completo. In genere bisogna contattarlo a fine anno solare e a gennaio fare colloquio con lo studente.', ''),
(99, 'Studio ELCO snc', 'Trento', 'Corso Buonarroti, 71', '0461 - 233416', '', '', 'numero inesistente', ''),
(100, 'Tecnodata', 'Trento', 'via Guardini', '0461 1733400', 'https://www.tecnodata.it/', '', '', ''),
(101, 'Trentino Network', 'Trento', 'Via G. Pedrotti,  18', '0461 - 020200', 'sede@pec.trentinonetwork.it', '', 'Contatti : Sara Marchetti ', ''),
(102, 'Tutto Computer', 'Trento', 'corso Buonarroti', '0461 261704', '', 'http://tuttocomputer.com/', 'il telefono non suona', ''),
(103, 'U-hopper', 'Trento', 'Via Antonio da Trento, 8', '0461 092165', 'diego.taglioni@u-hopper.com', 'http://www.u-hopper.com/', '', ''),
(104, 'Waldner', 'Trento', 'Mattarello', '0461 949810', 'daniela.sommavilla@waldner.co', '', 'Chiamare ad Aprile perchï¿½ stanno riorganizzando l', ''),
(105, 'wdstudio', 'Trento', 'Trento in Via Pranzelores 57/A', '340 103 2781', 'info@wdstudio.it', 'http://www.wdstudio.it/', 'Non possono prendere stagisti perchï¿½ non hanno i requisiti', ''),
(106, 'WEBSS srl', 'Trento', 'Via Innsbruck, 24', '0461 - 234777', 'info@webss.it', 'http://www.webss.it/02prodotties_ssgestionali.htm', 'web ERP', ''),
(107, 'Winit srl', 'Trento', 'Via delle Orme,  5', '0461 - 260470', '', '', '', ''),
(108, 'Xenos S.r.l.', 'Trento', 'Via Praga, 15', '0461 950323', 'info@xenos.it', 'http://www.xenos.it/', 'Estate 2017 non possono aderire perchï¿½ ï¿½ appena andato via un dipendente e devono riorganizzarsi. Ma, altrimenti avrebbero aderito perchï¿½ credono nello sta', ''),
(109, '3S Team S.p.A.', 'Trento -  Sede Operativa', 'Via dei Solteri, 78', '3498142845', 'amministrazione@3steam.it', 'http://3steam.it/', '', ''),
(110, 'AGANIS WEB SOFTWAREï¿½', 'Vattaro', 'Via Rive,31  38049  Vattaro', '393  966 0 858', '', 'http://www.aganis.it/siti-web-trento/dove-siamo.html', '', ''),
(111, 'pointec', 'Verla di Giovo (Trento)', 'Via Boscati, 28 - 38030 ', '0461 695084', '', 'http://www.pointec.it/', '', ''),
(112, 'HSF', 'Vezzano', '', 'Tel: 0461 864730 ---  333 8041834', '', 'http://idea-impresa.fidiaweb.net/hsf-di-faes-luca/', '', ''),
(113, 'Cassa rurale di Trento', '', '', '0461- 278909', 'dott. ssa Veronese', '', '', ''),
(114, 'Elettrocasa', '', 'BrenCenter 1  -  TRENTO  SUD  2  / TN Nord', '0461 821011', 'Luca xxxx   -   Direttore', '', '', ''),
(115, 'FBK', '', '', '', '', '', '', ''),
(116, 'Informatica Trentina', '', 'Marco - uno periodo lungo quarta  Postal', '', '', '', '', ''),
(117, 'Leonardelli', '', 'Pergine -Borgo', '0461 531065', '', 'mariagrazia@leonardelli.it', '', ''),
(118, 'Pat Servizio informatica Gleria', '', '', '', '', '', '', ''),
(119, 'SAIDEA', '', 'Via Kufstein, 5', '0461-245589', '', 'http://www.saidea.it/', 'Data center', ''),
(120, 'MC-Link S.p.A.', 'Trento', 'Via Fersina, 23', '0461 0301', '', '', 'Non possono prendere stagisti nella sede di TRENTO !!!', ''),
(121, 'StrikeWeb', 'Mezzolombardo (SMichele a/A)', 'Via C.Devigili, 30 / B', '0461  650 995', 'Luca', '', 'AngularJS, PHP, poco HTML', '1 posto a luglio'),
(131, 'Fastage', 'hgdf', 'hgf', 'hgf', 'fasto@ciao.it', 'hfg', 'hgf', 'hgf');

-- --------------------------------------------------------

--
-- Struttura della tabella `lavora`
--

CREATE TABLE `lavora` (
  `ID` int(11) NOT NULL,
  `FkAzienda` int(11) NOT NULL,
  `FkUtente` int(11) NOT NULL,
  `DataInizio` date NOT NULL,
  `DataFine` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `loginazienda`
--

CREATE TABLE `loginazienda` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `FkAziende` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `FirstLogin` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `loginazienda`
--

INSERT INTO `loginazienda` (`ID`, `Nome`, `FkAziende`, `Email`, `Password`, `FirstLogin`) VALUES
(1, 'lenovo', 0, 'azienda@gmail.com', 'MTIz', 0),
(2, 'Fastage', 131, 'fasto@ciao.it', 'MTIzNDU2', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `prenotazioni`
--

CREATE TABLE `prenotazioni` (
  `ID` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Azienda` int(11) NOT NULL,
  `Data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Conferma` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `prenotazioni`
--

INSERT INTO `prenotazioni` (`ID`, `Email`, `Azienda`, `Data`, `Conferma`) VALUES
(1, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 19:39:43', 1),
(2, 'laura.andreatta@provincia.scuole.tn.it', 2, '2017-05-18 19:39:50', 1),
(3, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 22:52:25', 1),
(4, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 22:58:26', 1),
(5, 'laura.andreatta@provincia.scuole.tn.it', 2, '2017-05-18 22:58:54', 1),
(6, 'laura.andreatta@provincia.scuole.tn.it', 3, '2017-05-18 22:59:00', 1),
(7, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:04:37', 1),
(8, 'laura.andreatta@provincia.scuole.tn.it', 6, '2017-05-18 23:04:45', 1),
(9, 'laura.andreatta@provincia.scuole.tn.it', 6, '2017-05-18 23:05:21', 1),
(10, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:05:23', 1),
(11, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:05:35', 1),
(12, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:05:40', 1),
(13, 'laura.andreatta@provincia.scuole.tn.it', 2, '2017-05-18 23:05:44', 1),
(14, 'laura.andreatta@provincia.scuole.tn.it', 2, '2017-05-18 23:09:57', 1),
(15, 'laura.andreatta@provincia.scuole.tn.it', 2, '2017-05-18 23:11:27', 1),
(16, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:23:10', 1),
(17, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:24:44', 1),
(18, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:26:15', 1),
(19, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:26:18', 1),
(20, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:27:26', 1),
(21, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:27:28', 1),
(22, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:27:30', 1),
(23, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:27:50', 1),
(24, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:27:55', 1),
(25, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:27:57', 1),
(26, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:28:10', 1),
(27, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:28:14', 1),
(28, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:28:17', 1),
(29, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:28:37', 1),
(30, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:28:39', 1),
(31, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:29:39', 1),
(32, 'laura.andreatta@provincia.scuole.tn.it', 9, '2017-05-18 23:29:50', 1),
(33, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:31:43', 1),
(34, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:31:46', 1),
(35, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-18 23:33:12', 1),
(36, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:19:45', 1),
(37, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:19:48', 1),
(38, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:19:50', 1),
(39, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:20:05', 1),
(40, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:20:07', 1),
(41, 'laura.andreatta@provincia.scuole.tn.it', 2, '2017-05-19 13:20:12', 1),
(42, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:22:28', 1),
(43, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:24:00', 1),
(44, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:24:03', 1),
(45, 'laura.andreatta@provincia.scuole.tn.it', 2, '2017-05-19 13:24:06', 1),
(46, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:24:40', 1),
(47, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:28:20', 1),
(48, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:28:27', 1),
(49, 'laura.andreatta@provincia.scuole.tn.it', 2, '2017-05-19 13:28:34', 1),
(50, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:28:45', 1),
(51, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:30:04', 1),
(52, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:30:07', 1),
(53, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:33:16', 1),
(54, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:33:54', 1),
(55, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:34:09', 1),
(56, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:34:27', 1),
(57, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:36:33', 1),
(58, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:37:32', 1),
(59, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:38:23', 1),
(60, 'laura.andreatta@provincia.scuole.tn.it', 2, '2017-05-19 13:38:35', 1),
(61, 'laura.andreatta@provincia.scuole.tn.it', 5, '2017-05-19 13:38:45', 1),
(62, 'laura.andreatta@provincia.scuole.tn.it', 5, '2017-05-19 13:39:04', 1),
(63, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:39:13', 1),
(64, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:39:18', 1),
(65, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:40:07', 1),
(66, 'laura.andreatta@provincia.scuole.tn.it', 1, '2017-05-19 13:41:09', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Classe` int(11) NOT NULL,
  `Indirizzo` varchar(4) NOT NULL,
  `Sezione` varchar(2) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Privilegi` int(1) NOT NULL,
  `FirstLogin` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`Nome`, `Cognome`, `Email`, `Classe`, `Indirizzo`, `Sezione`, `Password`, `Privilegi`, `FirstLogin`) VALUES
('', '', 'acca2ueo@gmail.it', 0, '', '', 'cUZPSW5SUQ==', 0, 1),
('hjgf', 'jhgf', 'jhgf', 0, 'hgf', 'h', 'cUZPSW5SUQ==', 0, 1),
('Laura', 'Andreatta', 'laura.andreatta@provincia.scuole.tn.it', 0, '0', '0', 'cUZPSW5SUQ==', 1, 0),
('Laura', 'Andreatta', 'laura.andreatta@scuole.provincia.tn.it', 0, '', '', 'cUZPSW5SUQ==', 1, 1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `aziende`
--
ALTER TABLE `aziende`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `lavora`
--
ALTER TABLE `lavora`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `loginazienda`
--
ALTER TABLE `loginazienda`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`),
  ADD KEY `Azienda` (`Azienda`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`Email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `aziende`
--
ALTER TABLE `aziende`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT per la tabella `lavora`
--
ALTER TABLE `lavora`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT per la tabella `loginazienda`
--
ALTER TABLE `loginazienda`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `prenotazioni`
--
ALTER TABLE `prenotazioni`
  ADD CONSTRAINT `prenotazioni_ibfk_1` FOREIGN KEY (`Email`) REFERENCES `utenti` (`Email`),
  ADD CONSTRAINT `prenotazioni_ibfk_2` FOREIGN KEY (`Azienda`) REFERENCES `aziende` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
