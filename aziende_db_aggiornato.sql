-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2017 alle 12:55
-- Versione del server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aziende`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `aziende`
--

CREATE TABLE IF NOT EXISTS `aziende` (
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

INSERT INTO `aziende` (`Azienda`, `Comune`, `Indirizzo`, `Telefono`, `Email`, `Web`, `Note`, `ClasseAccettata`) VALUES
('Azienda', 'Comune', 'Indirizzo', 'Telefono', 'Email', 'web', 'Note', ''),
('levia', '38123 Ravina', 'Via Stella, 9/L', '0461 936040', '', 'https://www.levia.it/ita/index.asp?idPage=&id=78', '', ''),
('GeekSolution', '38123 Trento', 'Villazzano Via Padre Eusebio Chini, 2/8', '333 475 91 99', 'info@geeksolution.it', 'www.geeksolution.it', '', ''),
('hg blu', '38123 TRENTO', 'Via Galassa, 24', '0461.1920220 - 0461.1596216', 'info@hgblu.com', 'http://www.hgblu.com/it/', '', ''),
('TREOS di Salvatore Leo', '38123 Trento', 'Via Ragazzi del ''99, 17', '4611975667', 'info@salvatoreleo.com', 'http://www.salvatoreleo.com/', '', ''),
('Graffiti', 'Arco', '', '', '', 'http://www.graffiti2000.com/', '', ''),
('Tecnoprogress S.p.A.', 'Arco', 'Via S. Andrea, 53', ' 0464 570 710', '', 'http://www.tecnoprogress.it/assistenza.asp', 'assistenza', ''),
('ADVStudio', 'Bolzano', '', '', '', 'http://www.advstudio.it/', 'siti web', ''),
('Mouse', 'Borgo', 'via Roma', ' telefono 0461759997', '', '', '', ''),
('infotechcomputer', 'Borgo V.', 'Via XX Settembre, 18   38051', '0461 752185', 'SI SI     marco@infotechcomputer.it', 'http://www.infotechcomputer.it/service.php', 'assistenza tecnica php', 'E'' passato a libera professione e non può prendere stagisti prima di 5 anni'),
('Cinetix', 'Borgo valsugana', '', '', '', '', '', ''),
('Silverlake,', 'Cadine', '', '', '', 'http://www.silverlake.it/Societa.htm', 'assistenza', ''),
('BE @ work s.r.l. INFORMATICA  15 38086 tn-italy', 'Carisolo', 'piazza 2 maggio,', '0465 .502644', '', 'http://www.beatwork.it/', '', ''),
('DADO SOFTware di Tisi Corrado', 'Carisolo', '', 'tel 0465.502644', '', 'http://www.dadosoftware.com/index.asp?pagina=home', '', ''),
('Rievoluzione', 'Castelnuovo', 'Via Broletti n. 18', '0461 754683', 'fabrizio.trentin@rievoluzione.it', 'http://www.rievoluzione.it/', 'web', ''),
('digystyle', 'Comano Terme (TN)', '', '349 8675159', 'info@digistyle.it', 'http://www.trentinowebsite.it/realizzazione-siti-web-aggiornabili-trentino-ottimizzazione-seo', '', ''),
('Akei', 'Faedo', 'VIA S. AGATA, 21/A, 38010', '', '', 'https://www.akei.it/', '', ''),
('Brenta Paganella', 'Fai della Paganella', 'Via Guglielmo Marconi 2', '0461 581045', 'Stefano Clementel info@brentapaganella.com', '', 'Web', ''),
('Flor Informatica srl', 'Filiale di Trento: TRENTO', 'Via G. Unterveger, 84 - 38121', '0463-422333', 'info@florinformatica.it', 'http://www.florinformatica.it/def/content.asp?ItemType=pages&ItemID=61', '', ''),
('KIOO STUDIO', 'Fraz. Strada 16', ', 38085 Pieve di Bono', '0465 674540', 'hello@kioostudio.it', 'http://www.kioostudio.it/', '', ''),
('AST di Beatrici G.', 'Gardolo', '', '461992357', 'Estate 2017 occupato. Contattare a settembre 2017', '', '', ''),
('Interplay Software S.r.l.', 'Gardolo Trento', 'via 4 Novembre 1918 nr. 95', '0461.421737', '', 'http://www.ipsoft.it/', '', ''),
('Alpsolution soc coop', 'Lavarone', 'Via Marconi 16', '', '', 'http://www.alpsolution.it/index.php/contacts', 'Web, assistenza', ''),
('426', 'Laives', '', '', 'https://www.426.agency/it/', '', '', ''),
('Interline', 'Lavis', 'via Paganella 50/13 - 38015 Lavis (TN)', '0461-606248', '', 'http://www.interline.it/', 'siti web', ''),
('IkonArt', 'Lavis (Tn)', 'Via G. Zanella, 1', '0461.241220', 'ikon.art@ikonart.it', 'http://www.ikonart.it/', '', ''),
('achrome', 'Levico Terme, Trento', 'Via Casotte, 24/b', '347 9736237', 'nnazappa(at)achromeweb.it', 'http://www.achromeweb.it/', 'non ha un ufficio, non può ospitare. E'' un freeland.', ''),
('Alinformatika', 'Mezzolombardo', 'Via Trento 7/9', 'Tel. 0461.600413', '', 'http://www.alinformatika.com/', '', ''),
('strikeweb', 'Mezzolombardo (TN)', 'via Rotaliana 49/2 - 38017', '0461 650995', 'info@strikeweb.it', 'http://www.strikeweb.it/', 'php angular javascript', ''),
('jackoswebsolutions', 'Mori (TN)', 'Via Fabio Filzi, 11', '393455062663', 'admin@jackoswebsolutions.it', 'https://www.jackoswebsolutions.it/', '', ''),
('OPENMOVE', 'Morii', 'via della Lasta 12', '', '', '', 'JavaScript, NodeJS, Linux, webdesign + HTML/CSS', ''),
('ICT-Progetti di Beber Andrea ', 'Pergine', 'Viale Dante 300', '461510754', 'info@ict-progetti.it - Ing. Beber 328 9478990', '', 'Applicazioni Web', ''),
('', '', '', '', '', '', '', ''),
('Gigashop', 'Pergine V.', ' Viale Dante, 106', '0461 538015 ', ' elvis@gigashop.it', 'http://www.gigashop.it/', 'Vendita e assistenza PC', ''),
('Agostini Andrea', 'PERGINE VALSUGANA', '', '3480685063', 'consulente@agostiniandrea.it', 'http://www.tecnicoinformaticotrento.it/', '', ''),
('Artica Lab', 'Pieve di Bono', 'Via Levido Colle 4', '39 349 8340711', 'Federica De Muzio', 'http://www.articalab.it/', 'Html5 Css3', ''),
('Casagrande Paolo Elettrodomestici', 'Pinè', 'Via Cesare Battisti, 9', '0461 557792', 'info@casagrandepaolo.it', '', 'Assistenza PC e vendita', ''),
('DDA PRO', 'Ponte Arche', 'Piazza Mercato 24', '0465-940242', '', 'http://www.ddapro.it/', 'siti web', ''),
('korgan', 'Riva del Garda (Trento)', 'Via S. Nazzaro 83/c - 38066', '340.7371759', '', 'http://www.korgan.it/it/1/siti-internet-riva-arco-rovereto-trento', '', ''),
('nonsoloweb', 'Romagnano (TN)', 'Via di S.Brigida, 6', '348 7610756', 'info@nonsoloweb.info', 'http://www.nswtrento.com/', 'E'' un''azienda di marketing. Mi ha detto che non è una ditta adatta agli studenti per lo stage.', ''),
('airpim srl', 'Rovereto', 'via per Marco 12D', '0464 076063', '', 'www.airpim.com', 'WEB technologies (html, css, js libraries, ajax...)', ''),
('DB Formazione Srl', 'Rovereto', 'P.zza A.Leoni, 22', '0464/424902', '', '', 'sviluppo Web e app android', ''),
('FastService', 'Rovereto', '', '', '', 'http://fastservice.pro/contact', 'riparazioni, assistenza', ''),
('Totem solution', 'Rovereto', '', '', '', 'http://www.totemsolution.net/', 'siti web', ''),
('Trentino Sistemi S.r.l.', 'Rovereto (TN)', 'Via Tartarotti 8', '0464.79.10.07', 'nfo@trentinosistemi.com', 'http://www.trentinosistemi.it/', '', ''),
('isite', 'Spini', 'via Kufstein, 5 38121 Trento', 'Tel. +39 0461 421001', 'si   si              amm@isite.it', 'http://www.isite.it/it/team.aspx', '', ''),
('ondanomala', 'Storo', 'Via Saletto, 26  38089', '0465  297179', '1^ volta di stage', '   info@ondanomalacreazioni.it', 'http://ondanomalacreazioni.it/about/', ''),
('dginformatics', 'TN/BZ/Brunico', 'Via delle Orfane,  23    Trento', '0461 1920371', 'n. a. da TN  -  non so da BRUNEC o BZ', 'http://www.dginformatics.it/it/info/contatti.html', 'catena di negozi', ''),
('Agevis', 'Trento', 'Via Solteri, 38', '0461 1862191', 'amministrazione@agevis.it', 'http://www.agevis.it/attivita/assistenza-tecnica.aspx', 'assistenza e reti', ''),
('Aldebra', 'Trento', 'Via Linz, 13', '0461 302400', '', '', '', ''),
('Alysso', 'Trento', 'Viale Adriano Olivetti, 7', '0461 1823900', '', '', '', ''),
('Archimede - Flavio Righetti', 'Trento', 'via Bolzano 59', '0461 961018', 'info@archimede.nu', 'http://www.archimede.nu/it/', 'WEB', ''),
('Asistar', 'Trento', 'ia Kufstein, 1', '0461 1862115', '', 'http://www.asistar.it/', '', ''),
('AssicraGroup', 'Trento', '', '', '', '', '', ''),
('Cassa rurale di Lavis', 'Trento', '', '0461 248547', 'loreta.rosatti@cr-lavis.net', '', '', ''),
('Clesius', 'Trento', 'viale Verona 190/1', '0461/383911', '', 'http://www.clesius.it/wordpress/?page_id=11', ' XML e di disegno di database e SQL . Capacità di lavorare in gruppo.', ''),
('Cluster Informatica Srl', 'Trento', 'Viale Bolognini, 50 38122', '0461 910941', 'info@clusterinformatica.eu', 'http://www.clusterinformatica.eu/', 'Estate 2017 non prendono stagisti', ''),
('Computer Learning', 'Trento', 'Via Solteri 38', '0461-420340', 'sig. Virginio Amistadi ', 'http://www.computerlearning.it/', '', ''),
('Computer Restore snc  ', 'Trento', 'Via Moggioli 1 (incrocio C.so Alpini)  38100', '0461  823712', '', 'http://www.computerrestore.it/chisiamo.htm', '', ''),
('Computer Systems', 'Trento', 'Gardolo - via 4 Novembre, n°100 – 38121 ', '0461 960 213', 'Estate 2017 non prendono stagisti.', 'http://www.computersystems.tn.it/contattaci', '', ''),
('DATACON DI CAGOL MAURIZIO', 'Trento', '', '0461 810886', '', '', '', ''),
('Delta Informatica s.r.l.', 'Trento', 'Via Kufstein, 5  (SPINI di Gardolo)', '0461 - 042200', 'antonio.biscaglia@deltainformatica.eu', '', '', ''),
('Dexit', 'Trento', 'Via Gilli, 2 38100 Trento', '0461 020500', '', '', '', ''),
('DOIT - Cristina Furlani', 'Trento', 'piazza Garzetti, 16', 'telefono 0461.261656', 'cristina@d0itonline.it', 'http://www.doitonline.it/doit-trento-contatti.html', 'zienda piccola, siti web', ''),
('Domotica trentina', 'Trento', 'Trento Sud', '0461 391744', 'alessio@infomusic.it', '', 'SI ,  1  posto', ''),
('Dottor G', 'Trento', 'via Scopoli 7', '0461) 827529', '', '', '', ''),
('e-computershop', 'Trento', 'Via Largo Carducci', '0461/1826880', 'info@e-computershop.it', 'https://www.computershop.pisa.it/e-computer-shop', '', ''),
('EnginSoft', 'Trento', 'Mattarello', '39 0461 915 391', '', 'http://www.enginsoft.it/attivita/servizi_informatici.html', '', ''),
('Etymo srl', 'trento', 'via Brescia, 37', '0461 236456', '', '', '', ''),
('Europa Computer s.r.l.', 'Trento', 'Via Don Guetti, 36', '0461 - 828645', 'info@eurotn.it', 'http://www.eurotn.it/chi-siamo/#.WHiBMlXhDcs', '', ''),
('Eyepro System s.r.l.', 'Trento', 'Via Guardini, 24', '0461 - 402148', 'sales@eyeprosystem.com', '', '', ''),
('FactoryMind', 'Trento', 'via Kufstein, 5, Spini di Gardolo', ' 0461-042400', 'sig.Alessandro', 'http://www.factorymind.com/', 'dot.net e Java', ''),
('Gpi S.p.A.', 'Trento', 'Via Ragazzi del 99, 13', '0461 - 381515', 'personale@gpi.it', '', 'Mascia Baldessari : sempre fatto stage, ai figli dei dipendenti', ''),
('ICOGE', 'Trento', 'via Lunelli 43', 'Tel. 0461.825452', '', 'http://www.icoge.it/soluzioni.html', '', ''),
('I&s', 'Trento', '', '', '', '', '', ''),
('infomusic', 'TRENTO', 'Via dei Viticoltori, 5', '0461 391744', '', 'info@infomusic.it', 'progettazione reti assistenza tecnica', ''),
('Informatica Bancaria Trentina srl', 'TRENTO', 'Via Guardini, 31', '0461.1733333', 'info@ibttn.it', 'http://www.ibttn.it/', '', ''),
('Itas', 'Trento', '', '0461-891708', 'dir.personale Chemolli Giuseppe data email', 'risorseumane@gruppoitas.it', '', ''),
('madeincima', 'Trento', 'Via del Brennero, 248', '0461/041535', 'Andrea Cima Serniotti [andrea@madeincima.it]', 'http://www.madeincima.it/', '', ''),
('MarketingDesign', 'Trento', 'Via Pranzelores 87', 'Cell. +39 333 5408504', 'info@marketingdesign.it', 'http://www.marketingdesign.it/contatti/', 'richiama ', ''),
('Movalia', 'Trento', 'Via Maccani, 108/21', '0461 402173', 'info@movalia.it', '', '', ''),
('maxwebtrento', 'Trento', 'Via Androna II Borgonuovo, 20', '328 6914277', 'info@maxwebtrento.it', 'http://www.maxwebtrento.it/', '', ''),
('Net Wise S.r.l.', 'Trento', 'Via Caproni, 9 - 38121', '0461 421016', 'info@netwise.it', 'http://netwise.it/', '', ''),
('New Data Informatica s.r.l.', 'Trento', 'Mattarello, Loc. Le Basse, 3', '0461 944368', '', 'http://www.newdata.biz/servizi/Servizi.aspx', 'assistenza, web software', 'Ha risposto la dott.ssa Bottura dicendo che che non sussistono presso di loro le condizioni per poter accogliere stagisti.'),
('Nipe', 'Trento', 'Mattarello via della Cooperazione 133', '328 3217070', '', '', '', ''),
('OGP', 'Trento', '', '0461 1823300', 'info.ogp@ogp.it Dario Bertoluza', 'http://www.ogp.it/about', '', ''),
('Pat energia', 'Trento', 'Piazza Fiera', 'uno', 'Roberto Brunelli <Roberto.Brunelli@provincia.tn.it>', '', '', ''),
('PcCopy', 'Tione', '', '3391168855', 'Stefano Dorna', 'info@pc-copy.it', '', ''),
('Pervoice SpA', 'Trento', 'Via Zambra', '0461 - 383960', '', '', 'quest''anno non prendono nessuno !', ''),
('pharmofox', 'Trento', 'via Maccani 193', '0461-822962', '', 'http://www.pharmafox.com/', '', ''),
('PRAIM', 'Trento', 'Ezio Maccani,  191', '0461 420517', 'customer.care@praim.com', '', 'Linux, C ARM', ''),
('PRIME Consulting S.r.l.', 'Trento', 'Via Kufstein 1, 38121', '0461 263900', 'info@primetn.it', 'http://www.primetn.it/realizzazione-siti-web-trento.html', '', ''),
('Santa Croce Informatica S.A.S. Di Renzo Sartori &', 'Trento', 'Via santa Croce', '0461 237000', '', '', '', ''),
('SEAC  SpA', 'Trento', 'Via Solteri 74, 38121', 'Tel.0461/805111', 'FORSE SI !!!          lbusana@seac.it', 'https://www.seac.it/servizi/it', '', ''),
('SIDERA SOFTWARE s.r.l.', 'Trento', 'Via Lunelli, 62', '0461 421563', 'barbara.tomasi@sidera.it ', '', 'Java e SQL, reti computer', ''),
('SocialIt', 'Trento', 'Via Kufstein 5', '0461 036689', 'Maurizio Gianordoli 340 8991749', 'http://www.socialit.it/', '', ''),
('Stain engineering', 'Trento', '', '', '', '', '', ''),
('STARSYSTEM IT Srl', 'Pergine', 'Località Fratte 49 -', '0461.185.10.40', 'rif. Silvano Samaretz - silvano.samaretz@starsystem.biz', 'http://www.starsystem.biz', 'Estate 2017, calendario stages completo. In genere bisogna contattarlo a fine anno solare e a gennaio fare colloquio con lo studente.', ''),
('Studio ELCO snc', 'Trento', 'Corso Buonarroti, 71', '0461 - 233416', '', '', 'numero inesistente', ''),
('Tecnodata', 'Trento', 'via Guardini', '0461 1733400', 'https://www.tecnodata.it/', '', '', ''),
('Trentino Network', 'Trento', 'Via G. Pedrotti,  18', '0461 - 020200', 'sede@pec.trentinonetwork.it', '', 'Contatti : Sara Marchetti ', ''),
('Tutto Computer', 'Trento', 'corso Buonarroti', '0461 261704', '', 'http://tuttocomputer.com/', 'il telefono non suona', ''),
('U-hopper', 'Trento', 'Via Antonio da Trento, 8', '0461 092165', 'diego.taglioni@u-hopper.com', 'http://www.u-hopper.com/', '', ''),
('Waldner', 'Trento', 'Mattarello', '0461 949810', 'daniela.sommavilla@waldner.co', '', 'Chiamare ad Aprile perchè stanno riorganizzando l''azienda', ''),
('wdstudio', 'Trento', 'Trento in Via Pranzelores 57/A', '340 103 2781', 'info@wdstudio.it', 'http://www.wdstudio.it/', 'Non possono prendere stagisti perchè non hanno i requisiti', ''),
('WEBSS srl', 'Trento', 'Via Innsbruck, 24', '0461 - 234777', 'info@webss.it', 'http://www.webss.it/02prodotties_ssgestionali.htm', 'web ERP', ''),
('Winit srl', 'Trento', 'Via delle Orme,  5', '0461 - 260470', '', '', '', ''),
('Xenos S.r.l.', 'Trento', 'Via Praga, 15', '0461 950323', 'info@xenos.it', 'http://www.xenos.it/', 'Estate 2017 non possono aderire perchè è appena andato via un dipendente e devono riorganizzarsi. Ma, altrimenti avrebbero aderito perchè credono nello stage.', ''),
('3S Team S.p.A.', 'Trento -  Sede Operativa', 'Via dei Solteri, 78', '3498142845', 'amministrazione@3steam.it', 'http://3steam.it/', '', ''),
('AGANIS WEB SOFTWARE ', 'Vattaro', 'Via Rive,31  38049  Vattaro', '393  966 0 858', '', 'http://www.aganis.it/siti-web-trento/dove-siamo.html', '', ''),
('pointec', 'Verla di Giovo (Trento)', 'Via Boscati, 28 - 38030 ', '0461 695084', '', 'http://www.pointec.it/', '', ''),
('HSF', 'Vezzano', '', 'Tel: 0461 864730 ---  333 8041834', '', 'http://idea-impresa.fidiaweb.net/hsf-di-faes-luca/', '', ''),
('Cassa rurale di Trento', '', '', '0461- 278909', 'dott. ssa Veronese', '', '', ''),
('Elettrocasa', '', 'BrenCenter 1  -  TRENTO  SUD  2  / TN Nord', '0461 821011', 'Luca xxxx   -   Direttore', '', '', ''),
('FBK', '', '', '', '', '', '', ''),
('Informatica Trentina', '', 'Marco - uno periodo lungo quarta  Postal', '', '', '', '', ''),
('Leonardelli', '', 'Pergine -Borgo', '0461 531065', '', 'mariagrazia@leonardelli.it', '', ''),
('Pat Servizio informatica Gleria', '', '', '', '', '', '', ''),
('SAIDEA', '', 'Via Kufstein, 5', '0461-245589', '', 'http://www.saidea.it/', 'Data center', ''),
('MC-Link S.p.A.', 'Trento', 'Via Fersina, 23', '0461 0301', '', '', 'Non possono prendere stagisti nella sede di TRENTO !!!', ''),
('StrikeWeb', 'Mezzolombardo (SMichele a/A)', 'Via C.Devigili, 30 / B', '0461  650 995', 'Luca', '', 'AngularJS, PHP, poco HTML', '1 posto a luglio');

-- --------------------------------------------------------

--
-- Struttura della tabella `studente`
--

CREATE TABLE IF NOT EXISTS `studente` (
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Classe` int(11) NOT NULL,
  `Indirizzo` varchar(4) NOT NULL,
  `Sezione` varchar(2) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `table 1`
--

CREATE TABLE IF NOT EXISTS `table 1` (
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
-- Dump dei dati per la tabella `table 1`
--

INSERT INTO `table 1` (`Azienda`, `Comune`, `Indirizzo`, `Telefono`, `Email`, `Web`, `Note`, `ClasseAccettata`) VALUES
('Azienda', 'Comune', 'Indirizzo', 'Telefono', 'Email', 'web', 'Note', ''),
('levia', '38123 Ravina', 'Via Stella, 9/L', '0461 936040', '', 'https://www.levia.it/ita/index.asp?idPage=&id=78', '', ''),
('GeekSolution', '38123 Trento', 'Villazzano Via Padre Eusebio Chini, 2/8', '333 475 91 99', 'info@geeksolution.it', 'www.geeksolution.it', '', ''),
('hg blu', '38123 TRENTO', 'Via Galassa, 24', '0461.1920220 - 0461.1596216', 'info@hgblu.com', 'http://www.hgblu.com/it/', '', ''),
('TREOS di Salvatore Leo', '38123 Trento', 'Via Ragazzi del ''99, 17', '4611975667', 'info@salvatoreleo.com', 'http://www.salvatoreleo.com/', '', ''),
('Graffiti', 'Arco', '', '', '', 'http://www.graffiti2000.com/', '', ''),
('Tecnoprogress S.p.A.', 'Arco', 'Via S. Andrea, 53', ' 0464 570 710', '', 'http://www.tecnoprogress.it/assistenza.asp', 'assistenza', ''),
('ADVStudio', 'Bolzano', '', '', '', 'http://www.advstudio.it/', 'siti web', ''),
('Mouse', 'Borgo', 'via Roma', ' telefono 0461759997', '', '', '', ''),
('infotechcomputer', 'Borgo V.', 'Via XX Settembre, 18   38051', '0461 752185', 'SI SI     marco@infotechcomputer.it', 'http://www.infotechcomputer.it/service.php', 'assistenza tecnica php', 'E'' passato a libera professione e non può prendere stagisti prima di 5 anni'),
('Cinetix', 'Borgo valsugana', '', '', '', '', '', ''),
('Silverlake,', 'Cadine', '', '', '', 'http://www.silverlake.it/Societa.htm', 'assistenza', ''),
('BE @ work s.r.l. INFORMATICA  15 38086 tn-italy', 'Carisolo', 'piazza 2 maggio,', '0465 .502644', '', 'http://www.beatwork.it/', '', ''),
('DADO SOFTware di Tisi Corrado', 'Carisolo', '', 'tel 0465.502644', '', 'http://www.dadosoftware.com/index.asp?pagina=home', '', ''),
('Rievoluzione', 'Castelnuovo', 'Via Broletti n. 18', '0461 754683', 'fabrizio.trentin@rievoluzione.it', 'http://www.rievoluzione.it/', 'web', ''),
('digystyle', 'Comano Terme (TN)', '', '349 8675159', 'info@digistyle.it', 'http://www.trentinowebsite.it/realizzazione-siti-web-aggiornabili-trentino-ottimizzazione-seo', '', ''),
('Akei', 'Faedo', 'VIA S. AGATA, 21/A, 38010', '', '', 'https://www.akei.it/', '', ''),
('Brenta Paganella', 'Fai della Paganella', 'Via Guglielmo Marconi 2', '0461 581045', 'Stefano Clementel info@brentapaganella.com', '', 'Web', ''),
('Flor Informatica srl', 'Filiale di Trento: TRENTO', 'Via G. Unterveger, 84 - 38121', '0463-422333', 'info@florinformatica.it', 'http://www.florinformatica.it/def/content.asp?ItemType=pages&ItemID=61', '', ''),
('KIOO STUDIO', 'Fraz. Strada 16', ', 38085 Pieve di Bono', '0465 674540', 'hello@kioostudio.it', 'http://www.kioostudio.it/', '', ''),
('AST di Beatrici G.', 'Gardolo', '', '461992357', 'Estate 2017 occupato. Contattare a settembre 2017', '', '', ''),
('Interplay Software S.r.l.', 'Gardolo Trento', 'via 4 Novembre 1918 nr. 95', '0461.421737', '', 'http://www.ipsoft.it/', '', ''),
('Alpsolution soc coop', 'Lavarone', 'Via Marconi 16', '', '', 'http://www.alpsolution.it/index.php/contacts', 'Web, assistenza', ''),
('426', 'Laives', '', '', 'https://www.426.agency/it/', '', '', ''),
('Interline', 'Lavis', 'via Paganella 50/13 - 38015 Lavis (TN)', '0461-606248', '', 'http://www.interline.it/', 'siti web', ''),
('IkonArt', 'Lavis (Tn)', 'Via G. Zanella, 1', '0461.241220', 'ikon.art@ikonart.it', 'http://www.ikonart.it/', '', ''),
('achrome', 'Levico Terme, Trento', 'Via Casotte, 24/b', '347 9736237', 'nnazappa(at)achromeweb.it', 'http://www.achromeweb.it/', 'non ha un ufficio, non può ospitare. E'' un freeland.', ''),
('Alinformatika', 'Mezzolombardo', 'Via Trento 7/9', 'Tel. 0461.600413', '', 'http://www.alinformatika.com/', '', ''),
('strikeweb', 'Mezzolombardo (TN)', 'via Rotaliana 49/2 - 38017', '0461 650995', 'info@strikeweb.it', 'http://www.strikeweb.it/', 'php angular javascript', ''),
('jackoswebsolutions', 'Mori (TN)', 'Via Fabio Filzi, 11', '393455062663', 'admin@jackoswebsolutions.it', 'https://www.jackoswebsolutions.it/', '', ''),
('OPENMOVE', 'Morii', 'via della Lasta 12', '', '', '', 'JavaScript, NodeJS, Linux, webdesign + HTML/CSS', ''),
('ICT-Progetti di Beber Andrea ', 'Pergine', 'Viale Dante 300', '461510754', 'info@ict-progetti.it - Ing. Beber 328 9478990', '', 'Applicazioni Web', ''),
('', '', '', '', '', '', '', ''),
('Gigashop', 'Pergine V.', ' Viale Dante, 106', '0461 538015 ', ' elvis@gigashop.it', 'http://www.gigashop.it/', 'Vendita e assistenza PC', ''),
('Agostini Andrea', 'PERGINE VALSUGANA', '', '3480685063', 'consulente@agostiniandrea.it', 'http://www.tecnicoinformaticotrento.it/', '', ''),
('Artica Lab', 'Pieve di Bono', 'Via Levido Colle 4', '39 349 8340711', 'Federica De Muzio', 'http://www.articalab.it/', 'Html5 Css3', ''),
('Casagrande Paolo Elettrodomestici', 'Pinè', 'Via Cesare Battisti, 9', '0461 557792', 'info@casagrandepaolo.it', '', 'Assistenza PC e vendita', ''),
('DDA PRO', 'Ponte Arche', 'Piazza Mercato 24', '0465-940242', '', 'http://www.ddapro.it/', 'siti web', ''),
('korgan', 'Riva del Garda (Trento)', 'Via S. Nazzaro 83/c - 38066', '340.7371759', '', 'http://www.korgan.it/it/1/siti-internet-riva-arco-rovereto-trento', '', ''),
('nonsoloweb', 'Romagnano (TN)', 'Via di S.Brigida, 6', '348 7610756', 'info@nonsoloweb.info', 'http://www.nswtrento.com/', 'E'' un''azienda di marketing. Mi ha detto che non è una ditta adatta agli studenti per lo stage.', ''),
('airpim srl', 'Rovereto', 'via per Marco 12D', '0464 076063', '', 'www.airpim.com', 'WEB technologies (html, css, js libraries, ajax...)', ''),
('DB Formazione Srl', 'Rovereto', 'P.zza A.Leoni, 22', '0464/424902', '', '', 'sviluppo Web e app android', ''),
('FastService', 'Rovereto', '', '', '', 'http://fastservice.pro/contact', 'riparazioni, assistenza', ''),
('Totem solution', 'Rovereto', '', '', '', 'http://www.totemsolution.net/', 'siti web', ''),
('Trentino Sistemi S.r.l.', 'Rovereto (TN)', 'Via Tartarotti 8', '0464.79.10.07', 'nfo@trentinosistemi.com', 'http://www.trentinosistemi.it/', '', ''),
('isite', 'Spini', 'via Kufstein, 5 38121 Trento', 'Tel. +39 0461 421001', 'si   si              amm@isite.it', 'http://www.isite.it/it/team.aspx', '', ''),
('ondanomala', 'Storo', 'Via Saletto, 26  38089', '0465  297179', '1^ volta di stage', '   info@ondanomalacreazioni.it', 'http://ondanomalacreazioni.it/about/', ''),
('dginformatics', 'TN/BZ/Brunico', 'Via delle Orfane,  23    Trento', '0461 1920371', 'n. a. da TN  -  non so da BRUNEC o BZ', 'http://www.dginformatics.it/it/info/contatti.html', 'catena di negozi', ''),
('Agevis', 'Trento', 'Via Solteri, 38', '0461 1862191', 'amministrazione@agevis.it', 'http://www.agevis.it/attivita/assistenza-tecnica.aspx', 'assistenza e reti', ''),
('Aldebra', 'Trento', 'Via Linz, 13', '0461 302400', '', '', '', ''),
('Alysso', 'Trento', 'Viale Adriano Olivetti, 7', '0461 1823900', '', '', '', ''),
('Archimede - Flavio Righetti', 'Trento', 'via Bolzano 59', '0461 961018', 'info@archimede.nu', 'http://www.archimede.nu/it/', 'WEB', ''),
('Asistar', 'Trento', 'ia Kufstein, 1', '0461 1862115', '', 'http://www.asistar.it/', '', ''),
('AssicraGroup', 'Trento', '', '', '', '', '', ''),
('Cassa rurale di Lavis', 'Trento', '', '0461 248547', 'loreta.rosatti@cr-lavis.net', '', '', ''),
('Clesius', 'Trento', 'viale Verona 190/1', '0461/383911', '', 'http://www.clesius.it/wordpress/?page_id=11', ' XML e di disegno di database e SQL . Capacità di lavorare in gruppo.', ''),
('Cluster Informatica Srl', 'Trento', 'Viale Bolognini, 50 38122', '0461 910941', 'info@clusterinformatica.eu', 'http://www.clusterinformatica.eu/', 'Estate 2017 non prendono stagisti', ''),
('Computer Learning', 'Trento', 'Via Solteri 38', '0461-420340', 'sig. Virginio Amistadi ', 'http://www.computerlearning.it/', '', ''),
('Computer Restore snc  ', 'Trento', 'Via Moggioli 1 (incrocio C.so Alpini)  38100', '0461  823712', '', 'http://www.computerrestore.it/chisiamo.htm', '', ''),
('Computer Systems', 'Trento', 'Gardolo - via 4 Novembre, n°100 – 38121 ', '0461 960 213', 'Estate 2017 non prendono stagisti.', 'http://www.computersystems.tn.it/contattaci', '', ''),
('DATACON DI CAGOL MAURIZIO', 'Trento', '', '0461 810886', '', '', '', ''),
('Delta Informatica s.r.l.', 'Trento', 'Via Kufstein, 5  (SPINI di Gardolo)', '0461 - 042200', 'antonio.biscaglia@deltainformatica.eu', '', '', ''),
('Dexit', 'Trento', 'Via Gilli, 2 38100 Trento', '0461 020500', '', '', '', ''),
('DOIT - Cristina Furlani', 'Trento', 'piazza Garzetti, 16', 'telefono 0461.261656', 'cristina@d0itonline.it', 'http://www.doitonline.it/doit-trento-contatti.html', 'zienda piccola, siti web', ''),
('Domotica trentina', 'Trento', 'Trento Sud', '0461 391744', 'alessio@infomusic.it', '', 'SI ,  1  posto', ''),
('Dottor G', 'Trento', 'via Scopoli 7', '0461) 827529', '', '', '', ''),
('e-computershop', 'Trento', 'Via Largo Carducci', '0461/1826880', 'info@e-computershop.it', 'https://www.computershop.pisa.it/e-computer-shop', '', ''),
('EnginSoft', 'Trento', 'Mattarello', '39 0461 915 391', '', 'http://www.enginsoft.it/attivita/servizi_informatici.html', '', ''),
('Etymo srl', 'trento', 'via Brescia, 37', '0461 236456', '', '', '', ''),
('Europa Computer s.r.l.', 'Trento', 'Via Don Guetti, 36', '0461 - 828645', 'info@eurotn.it', 'http://www.eurotn.it/chi-siamo/#.WHiBMlXhDcs', '', ''),
('Eyepro System s.r.l.', 'Trento', 'Via Guardini, 24', '0461 - 402148', 'sales@eyeprosystem.com', '', '', ''),
('FactoryMind', 'Trento', 'via Kufstein, 5, Spini di Gardolo', ' 0461-042400', 'sig.Alessandro', 'http://www.factorymind.com/', 'dot.net e Java', ''),
('Gpi S.p.A.', 'Trento', 'Via Ragazzi del 99, 13', '0461 - 381515', 'personale@gpi.it', '', 'Mascia Baldessari : sempre fatto stage, ai figli dei dipendenti', ''),
('ICOGE', 'Trento', 'via Lunelli 43', 'Tel. 0461.825452', '', 'http://www.icoge.it/soluzioni.html', '', ''),
('I&s', 'Trento', '', '', '', '', '', ''),
('infomusic', 'TRENTO', 'Via dei Viticoltori, 5', '0461 391744', '', 'info@infomusic.it', 'progettazione reti assistenza tecnica', ''),
('Informatica Bancaria Trentina srl', 'TRENTO', 'Via Guardini, 31', '0461.1733333', 'info@ibttn.it', 'http://www.ibttn.it/', '', ''),
('Itas', 'Trento', '', '0461-891708', 'dir.personale Chemolli Giuseppe data email', 'risorseumane@gruppoitas.it', '', ''),
('madeincima', 'Trento', 'Via del Brennero, 248', '0461/041535', 'Andrea Cima Serniotti [andrea@madeincima.it]', 'http://www.madeincima.it/', '', ''),
('MarketingDesign', 'Trento', 'Via Pranzelores 87', 'Cell. +39 333 5408504', 'info@marketingdesign.it', 'http://www.marketingdesign.it/contatti/', 'richiama ', ''),
('Movalia', 'Trento', 'Via Maccani, 108/21', '0461 402173', 'info@movalia.it', '', '', ''),
('maxwebtrento', 'Trento', 'Via Androna II Borgonuovo, 20', '328 6914277', 'info@maxwebtrento.it', 'http://www.maxwebtrento.it/', '', ''),
('Net Wise S.r.l.', 'Trento', 'Via Caproni, 9 - 38121', '0461 421016', 'info@netwise.it', 'http://netwise.it/', '', ''),
('New Data Informatica s.r.l.', 'Trento', 'Mattarello, Loc. Le Basse, 3', '0461 944368', '', 'http://www.newdata.biz/servizi/Servizi.aspx', 'assistenza, web software', 'Ha risposto la dott.ssa Bottura dicendo che che non sussistono presso di loro le condizioni per poter accogliere stagisti.'),
('Nipe', 'Trento', 'Mattarello via della Cooperazione 133', '328 3217070', '', '', '', ''),
('OGP', 'Trento', '', '0461 1823300', 'info.ogp@ogp.it Dario Bertoluza', 'http://www.ogp.it/about', '', ''),
('Pat energia', 'Trento', 'Piazza Fiera', 'uno', 'Roberto Brunelli <Roberto.Brunelli@provincia.tn.it>', '', '', ''),
('PcCopy', 'Tione', '', '3391168855', 'Stefano Dorna', 'info@pc-copy.it', '', ''),
('Pervoice SpA', 'Trento', 'Via Zambra', '0461 - 383960', '', '', 'quest''anno non prendono nessuno !', ''),
('pharmofox', 'Trento', 'via Maccani 193', '0461-822962', '', 'http://www.pharmafox.com/', '', ''),
('PRAIM', 'Trento', 'Ezio Maccani,  191', '0461 420517', 'customer.care@praim.com', '', 'Linux, C ARM', ''),
('PRIME Consulting S.r.l.', 'Trento', 'Via Kufstein 1, 38121', '0461 263900', 'info@primetn.it', 'http://www.primetn.it/realizzazione-siti-web-trento.html', '', ''),
('Santa Croce Informatica S.A.S. Di Renzo Sartori &', 'Trento', 'Via santa Croce', '0461 237000', '', '', '', ''),
('SEAC  SpA', 'Trento', 'Via Solteri 74, 38121', 'Tel.0461/805111', 'FORSE SI !!!          lbusana@seac.it', 'https://www.seac.it/servizi/it', '', ''),
('SIDERA SOFTWARE s.r.l.', 'Trento', 'Via Lunelli, 62', '0461 421563', 'barbara.tomasi@sidera.it ', '', 'Java e SQL, reti computer', ''),
('SocialIt', 'Trento', 'Via Kufstein 5', '0461 036689', 'Maurizio Gianordoli 340 8991749', 'http://www.socialit.it/', '', ''),
('Stain engineering', 'Trento', '', '', '', '', '', ''),
('STARSYSTEM IT Srl', 'Pergine', 'Località Fratte 49 -', '0461.185.10.40', 'rif. Silvano Samaretz - silvano.samaretz@starsystem.biz', 'http://www.starsystem.biz', 'Estate 2017, calendario stages completo. In genere bisogna contattarlo a fine anno solare e a gennaio fare colloquio con lo studente.', ''),
('Studio ELCO snc', 'Trento', 'Corso Buonarroti, 71', '0461 - 233416', '', '', 'numero inesistente', ''),
('Tecnodata', 'Trento', 'via Guardini', '0461 1733400', 'https://www.tecnodata.it/', '', '', ''),
('Trentino Network', 'Trento', 'Via G. Pedrotti,  18', '0461 - 020200', 'sede@pec.trentinonetwork.it', '', 'Contatti : Sara Marchetti ', ''),
('Tutto Computer', 'Trento', 'corso Buonarroti', '0461 261704', '', 'http://tuttocomputer.com/', 'il telefono non suona', ''),
('U-hopper', 'Trento', 'Via Antonio da Trento, 8', '0461 092165', 'diego.taglioni@u-hopper.com', 'http://www.u-hopper.com/', '', ''),
('Waldner', 'Trento', 'Mattarello', '0461 949810', 'daniela.sommavilla@waldner.co', '', 'Chiamare ad Aprile perchè stanno riorganizzando l''azienda', ''),
('wdstudio', 'Trento', 'Trento in Via Pranzelores 57/A', '340 103 2781', 'info@wdstudio.it', 'http://www.wdstudio.it/', 'Non possono prendere stagisti perchè non hanno i requisiti', ''),
('WEBSS srl', 'Trento', 'Via Innsbruck, 24', '0461 - 234777', 'info@webss.it', 'http://www.webss.it/02prodotties_ssgestionali.htm', 'web ERP', ''),
('Winit srl', 'Trento', 'Via delle Orme,  5', '0461 - 260470', '', '', '', ''),
('Xenos S.r.l.', 'Trento', 'Via Praga, 15', '0461 950323', 'info@xenos.it', 'http://www.xenos.it/', 'Estate 2017 non possono aderire perchè è appena andato via un dipendente e devono riorganizzarsi. Ma, altrimenti avrebbero aderito perchè credono nello stage.', ''),
('3S Team S.p.A.', 'Trento -  Sede Operativa', 'Via dei Solteri, 78', '3498142845', 'amministrazione@3steam.it', 'http://3steam.it/', '', ''),
('AGANIS WEB SOFTWARE ', 'Vattaro', 'Via Rive,31  38049  Vattaro', '393  966 0 858', '', 'http://www.aganis.it/siti-web-trento/dove-siamo.html', '', ''),
('pointec', 'Verla di Giovo (Trento)', 'Via Boscati, 28 - 38030 ', '0461 695084', '', 'http://www.pointec.it/', '', ''),
('HSF', 'Vezzano', '', 'Tel: 0461 864730 ---  333 8041834', '', 'http://idea-impresa.fidiaweb.net/hsf-di-faes-luca/', '', ''),
('Cassa rurale di Trento', '', '', '0461- 278909', 'dott. ssa Veronese', '', '', ''),
('Elettrocasa', '', 'BrenCenter 1  -  TRENTO  SUD  2  / TN Nord', '0461 821011', 'Luca xxxx   -   Direttore', '', '', ''),
('FBK', '', '', '', '', '', '', ''),
('Informatica Trentina', '', 'Marco - uno periodo lungo quarta  Postal', '', '', '', '', ''),
('Leonardelli', '', 'Pergine -Borgo', '0461 531065', '', 'mariagrazia@leonardelli.it', '', ''),
('Pat Servizio informatica Gleria', '', '', '', '', '', '', ''),
('SAIDEA', '', 'Via Kufstein, 5', '0461-245589', '', 'http://www.saidea.it/', 'Data center', ''),
('MC-Link S.p.A.', 'Trento', 'Via Fersina, 23', '0461 0301', '', '', 'Non possono prendere stagisti nella sede di TRENTO !!!', ''),
('StrikeWeb', 'Mezzolombardo (SMichele a/A)', 'Via C.Devigili, 30 / B', '0461  650 995', 'Luca', '', 'AngularJS, PHP, poco HTML', '1 posto a luglio');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE IF NOT EXISTS `utenti` (
  `Nome` varchar(20) NOT NULL,
  `Cognome` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Classe` int(11) NOT NULL,
  `Indirizzo` varchar(4) NOT NULL,
  `Sezione` varchar(2) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Privilegi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`Nome`, `Cognome`, `Email`, `Classe`, `Indirizzo`, `Sezione`, `Password`, `Privilegi`) VALUES
('hjgf', 'jhgf', 'jhgf', 0, 'hgf', 'h', 'MTIz', 0),
('Laura', 'Andreatta', 'laura.andreatta@provincia.scuole.tn.it', 0, '0', '0', 'MTIz', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studente`
--
ALTER TABLE `studente`
 ADD PRIMARY KEY (`Username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
