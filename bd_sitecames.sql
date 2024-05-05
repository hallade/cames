-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 05, 2024 at 06:38 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_sitecames`
--

-- --------------------------------------------------------

--
-- Table structure for table `appartenance`
--

DROP TABLE IF EXISTS `appartenance`;
CREATE TABLE IF NOT EXISTS `appartenance` (
  `CODAPPARTENANCE` int NOT NULL AUTO_INCREMENT,
  `LIBAPPARTENANCE` varchar(50) NOT NULL,
  PRIMARY KEY (`CODAPPARTENANCE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `appartenance`
--

INSERT INTO `appartenance` (`CODAPPARTENANCE`, `LIBAPPARTENANCE`) VALUES
(1, 'Pays membres du CAMES'),
(2, 'Hors des pays membres du CAMES');

-- --------------------------------------------------------

--
-- Table structure for table `diplome`
--

DROP TABLE IF EXISTS `diplome`;
CREATE TABLE IF NOT EXISTS `diplome` (
  `CODDIPLOME` int NOT NULL AUTO_INCREMENT,
  `CODSPECIALITE` int NOT NULL,
  `CODNIVEAU` int NOT NULL,
  `CODPERIODE` int NOT NULL,
  `CODINSTITUTION` int NOT NULL,
  `LIBDIPLOME` varchar(100) NOT NULL,
  PRIMARY KEY (`CODDIPLOME`),
  KEY `FK_APPARTENIR1` (`CODSPECIALITE`),
  KEY `FK_AVOIR` (`CODNIVEAU`),
  KEY `FK_POSSEDER6` (`CODINSTITUTION`),
  KEY `FK_RECONNAITRE` (`CODPERIODE`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `diplome`
--

INSERT INTO `diplome` (`CODDIPLOME`, `CODSPECIALITE`, `CODNIVEAU`, `CODPERIODE`, `CODINSTITUTION`, `LIBDIPLOME`) VALUES
(1, 1, 2, 10, 1, 'Licence Professionnelle en Génie Civile'),
(2, 2, 2, 9, 2, 'Licence en Banque, Finance et Assurance'),
(3, 3, 2, 9, 3, 'Licence Professionnelle en Journalisme et Audiovisuel'),
(4, 4, 3, 9, 3, 'Licence Professionnelle en Réalisation Audiovisuelle'),
(5, 5, 2, 9, 3, 'Licence Professionnelle en Audiovisuelle'),
(6, 6, 2, 9, 4, 'Licence en Sciences de Gestion'),
(7, 7, 2, 9, 4, 'Licence en Droit'),
(8, 8, 4, 10, 5, 'Master en Gestion de Projets'),
(9, 9, 4, 10, 6, 'Master en Management de l\'Env. et du Développement  Durable'),
(10, 6, 2, 10, 6, 'Licence Professionnelle en Science de Gestion'),
(11, 10, 1, 10, 7, 'Diplôme de Technicien Supérieur en Maintenance Industrielle'),
(12, 11, 1, 10, 7, 'Diplôme de Tech. Sup. en Réseaux Informatiques et Télécoms'),
(13, 12, 2, 10, 8, 'Licence Professionnelle en Finance Comptabilité'),
(14, 13, 2, 10, 8, 'Licence Professionnelle en Gestion Marketing'),
(16, 14, 2, 10, 8, 'Licence Professionnelle en Gestion des Ressources Humaines'),
(17, 26, 1, 9, 8, 'Diplôme de Technicien Sup. en Communication d\'Entreprise'),
(18, 17, 1, 9, 8, 'Diplôme de Technicien Supérieur en Gestion Commerciale'),
(19, 18, 1, 9, 8, 'Diplôme de Technicien Sup. en Marketing et en Management'),
(20, 12, 1, 10, 9, 'DUT en Finance Comptabilité'),
(21, 12, 2, 9, 10, 'Licence des Sciences Techniques Comptables et Financières'),
(22, 14, 2, 10, 11, 'Licence Professionnelle en Gestion des Ressources Humaines'),
(23, 8, 4, 10, 11, 'Master Professionnel en Gestion de Projets'),
(24, 22, 4, 10, 11, 'Master Professionnel en Comptabilité, Contrôle et  Audit'),
(25, 26, 2, 10, 11, 'Licence Professionnelle de Communication d\'Entreprise'),
(26, 17, 2, 9, 11, 'Licence Professionnelle en Gestion Commerciale'),
(27, 25, 2, 9, 11, 'Licence Prof en Comptabilité et Gestion des Entreprises'),
(28, 14, 2, 10, 12, 'Licence Professionnelle en Gestion des Ressources Humaines'),
(29, 16, 2, 10, 13, 'Bachelor en Communication des Entreprises'),
(30, 27, 2, 9, 22, 'Licence en Transport et Logistique'),
(31, 28, 2, 10, 14, 'Licence en Science de l\'Ingénieur'),
(32, 35, 2, 10, 14, 'Licence Professionnelle en T.I.C.'),
(33, 11, 4, 10, 14, 'Ingénieur de Conception en Télécommunication'),
(34, 12, 4, 10, 15, 'Master Spécialisé en Finance Comptabilité'),
(35, 12, 2, 9, 15, 'Licence en Finance Comptabilité'),
(36, 38, 2, 10, 16, 'Licence Prof. en Qlté, Sécurité Environnementales et Aliment'),
(37, 12, 2, 10, 17, 'Licence en Finance Comptabilité'),
(38, 2, 2, 10, 18, 'Licence en Banque, Assurance et Finance'),
(39, 33, 2, 10, 19, 'Licence Professionnelle en Génie Informatique'),
(40, 11, 2, 10, 19, 'Licence Professionnelle en Réseaux et Télécommunications'),
(41, 35, 2, 9, 20, 'Licence Professionnelle des Cciences et T.I.C'),
(42, 36, 2, 9, 20, 'Licence en Sciences Juridiques (Droit privé et public)'),
(43, 35, 2, 9, 20, 'Licence Prof. des Sciences et T.I.C (Informatique et Télécom)'),
(44, 37, 4, 10, 21, 'Master Professionnel en Développement Culturel'),
(45, 39, 2, 11, 23, 'Licence Professionnelle en Administration et G.R.H.'),
(46, 40, 2, 11, 23, 'Licence Professionnelle en Gestion des Entreprises'),
(47, 22, 2, 11, 24, 'Licence Professionnelle en Comptabilité-Contrôle et Audit'),
(48, 41, 2, 11, 24, 'Licence Professionnelle en Management International'),
(49, 40, 2, 11, 25, 'Licence en Administration et Gestion des Entreprises'),
(50, 22, 3, 11, 25, 'Master en Audit et Contrôle de Gestion'),
(51, 14, 4, 11, 25, 'Master en Administration et G.R.H'),
(52, 42, 4, 11, 25, 'Master en Marketing et Publicité'),
(53, 8, 4, 11, 25, 'Master en Management des Projets'),
(54, 43, 4, 11, 25, 'Master en Fiscalité'),
(55, 2, 4, 11, 25, 'Master en Banque, Finance et Assurance'),
(56, 40, 4, 11, 26, 'Master Professionnel en Administration des Entreprises'),
(57, 22, 2, 11, 2, 'Licence en Audit et Contrôe de Gestion'),
(58, 40, 2, 11, 2, 'Licence en Management des Ressources Humaines'),
(59, 8, 2, 11, 2, 'Licence en Management des Projets'),
(60, 18, 2, 11, 2, 'Licence en Marketing'),
(61, 22, 4, 11, 2, 'Master en Audit et Contrôle de Gestion'),
(62, 14, 4, 11, 2, 'Master en Management des Ressources Humaines'),
(63, 18, 4, 11, 2, 'Master en Marketing'),
(64, 8, 4, 11, 2, 'Master en Management des Projets'),
(65, 45, 2, 11, 4, 'Licence Professionnelle en Agronomie'),
(66, 46, 2, 11, 4, 'Licence Professionnelle en Biotechnologie'),
(67, 47, 2, 11, 4, 'Licence Professionnelle en Systèmes Informatique et Logiciel'),
(68, 11, 2, 11, 4, 'Licence Professionnelle en Réseau Informatique et Télécoms'),
(69, 40, 2, 11, 27, 'Licence Informatique Appliquée à la Gestion des Entreprises'),
(70, 18, 4, 11, 6, 'Master en Marketing'),
(71, 8, 4, 11, 6, 'Master en Gestion des Projets'),
(72, 2, 4, 11, 6, 'Master en Finance et Banque'),
(73, 22, 4, 11, 6, 'Master en Comptabilité, Contrôle et Audit'),
(74, 6, 2, 11, 28, 'Licence Professionnelle en Gestion (Compta-Contrôle-Audit)'),
(75, 18, 1, 11, 29, 'Diplôme de Technicien Supérieur en Marketing et Management'),
(76, 17, 1, 11, 29, 'Diplôme de Technicien Supérieur en Gestion Commerciale'),
(77, 22, 1, 11, 29, 'Diplôme de Technicien Supérieur en Finance et Comptabilité'),
(78, 22, 1, 11, 30, 'Diplôme de Technicien.Sup. Option: Finance-Comptabilité'),
(79, 48, 1, 11, 31, 'D.E.U.G. en Psychologie'),
(80, 49, 1, 11, 31, 'D.E.U.G. en Géographie'),
(81, 50, 1, 11, 31, 'D.E.U.G. en Lettres Modernes'),
(82, 51, 1, 11, 31, 'D.U.T. en Secrétariat de Direction'),
(83, 22, 1, 11, 31, 'D.U.T. en Finance'),
(84, 6, 3, 11, 32, 'Maîtrise Professionnelle en Gestion Financière et Bancaire'),
(85, 6, 3, 11, 32, 'Maîtrise Professionnelle en Gestion et Adm. des Entreprises'),
(86, 6, 1, 11, 33, 'D.E.U.G. en Sciences Economiques et de Gestion'),
(87, 36, 1, 11, 33, 'D.E.U.G. en Sciences Juridiques'),
(88, 22, 1, 11, 33, 'D.U.T. en Finance- Comptabilité'),
(89, 36, 2, 11, 33, 'Licence en Sciences Juridiques'),
(90, 6, 2, 11, 33, 'Licence en Economie et Gestion des Entreprises et des Organisations'),
(91, 6, 2, 11, 33, 'Licence en Macroéconomie et Gestion du Développement'),
(92, 36, 3, 11, 33, 'Maîtrise en Sciences Juridiques'),
(93, 6, 3, 11, 33, 'Maîtrise en Economie et Gestion des des Entreprises et des Organisations'),
(94, 14, 4, 11, 34, 'Master en Gestion des Ressources Humaines'),
(95, 16, 3, 11, 35, 'Master en Communication'),
(96, 52, 4, 11, 36, 'Diplômes d\'Ingénieur des Industries Agro-alimentaires'),
(97, 48, 4, 11, 37, 'D.E.A. en Philosophie'),
(98, 7, 4, 11, 37, 'D.E.A. en Droit Privé'),
(99, 7, 4, 11, 37, 'D.E.A. en Droit Public'),
(100, 54, 4, 11, 37, 'D.E.A. en Sciences Politiques'),
(101, 7, 4, 11, 37, 'D.E.S.S. en Droit des Affaires et Fiscalité'),
(102, 56, 2, 11, 38, 'Diplôme de Licence en Télé-informatique'),
(103, 6, 4, 11, 39, 'Master of Science in Management (Fin-ACG-Com.Inter-RH-Com-D.A.F)'),
(104, 57, 2, 11, 40, 'Bachelor en Informatique de Gestion(Dvlpt - Sécurité et Réseaux)'),
(105, 44, 4, 11, 40, 'Master Spécialisé en Adm. des Aff. (Banq.Ing.Fin.- Mark.Intelligence des Aff.-R.H)'),
(106, 57, 1, 11, 41, 'Diplôme de Technicien en Informatique de Gestion'),
(107, 47, 2, 11, 41, 'Diplôme de Licence Professionnelle en Réseaux Informatiques'),
(108, 35, 4, 11, 41, 'Diplôme d\'Ingénieur en Techniques Informatiques'),
(109, 6, 4, 11, 42, 'Master 2 en Finance et Gestion Publique'),
(110, 8, 4, 11, 43, 'Master Spécialisé en Gestion des Projets'),
(111, 40, 4, 11, 43, 'Master in Business Administration'),
(112, 2, 2, 11, 44, 'Licence Professionnelle en Banque, Finance et Assurance'),
(113, 41, 2, 11, 44, 'Licence en Management du Commerce International'),
(114, 26, 2, 11, 44, 'Licence Professionnelle en Marketing-Communication'),
(115, 27, 2, 11, 44, 'Licence Professionnelle en Logistique et Transport'),
(116, 6, 2, 11, 20, 'Licence Professionnelle en Science de Gestion'),
(117, 58, 4, 11, 45, 'Master en Développement'),
(118, 55, 1, 11, 46, 'D.U.T. en Production et Gestion de l\'Information Géographique'),
(119, 55, 4, 11, 46, 'D.E.S.S. en Production et Gestion de l\'Information Géographique');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
CREATE TABLE IF NOT EXISTS `information` (
  `CODINFORMATION` int NOT NULL AUTO_INCREMENT,
  `CODSOUSRUBRIQUE` int NOT NULL,
  `CODPERIODE` int DEFAULT NULL,
  `PER_CODPERIODE` int DEFAULT NULL,
  `CODSTATUT` int NOT NULL,
  `PER_CODPERIODE2` int NOT NULL,
  `TITINFORMATION` varchar(150) NOT NULL,
  `INTINFORMATION` text,
  `PETPHOTOINFORMATION` varchar(50) DEFAULT NULL,
  `GRAPHOTOINFORMATION` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODINFORMATION`),
  KEY `FK_APPARTENIR` (`CODSOUSRUBRIQUE`),
  KEY `FK_ENREGISTRER` (`PER_CODPERIODE2`),
  KEY `FK_ETRE` (`CODSTATUT`),
  KEY `FK_FERMER` (`CODPERIODE`),
  KEY `FK_OUVRIR` (`PER_CODPERIODE`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`CODINFORMATION`, `CODSOUSRUBRIQUE`, `CODPERIODE`, `PER_CODPERIODE`, `CODSTATUT`, `PER_CODPERIODE2`, `TITINFORMATION`, `INTINFORMATION`, `PETPHOTOINFORMATION`, `GRAPHOTOINFORMATION`) VALUES
(1, 1, NULL, NULL, 2, 1, 'Comités Consultatifs Interafricains', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p>Depuis 1978, ce programme constitue un cadre commun de gestion des carrières des enseignants et chercheurs pour les 19 pays membres.</p>\r\n\r\n<p>Le Programme des CCI est doté d’une instance de supervision, le Comité Consultatif Général (CCG), où siègent les Recteurs, Présidents d’Universités et Directeurs Nationaux de la Recherche.</p>\r\n\r\n<p>Instances d’évaluation, les Comités Techniques Spécialisés (CTS) sont composés des experts des pays membres ; au nombre de 08 (huit), les Comités Techniques Spécialisés se réunissent une fois par an.</p>\r\n\r\n<p>Sont recensées au sein des CTS, les disciplines suivantes :\r\n\r\n<ul> \r\n<li>Lettres et Sciences Humaines (L.S.H.);</li>\r\n<li>Mathématiques-Physique-Chimie (M.P.C.);</li>\r\n<li>Sciences Naturelles- Agronomie (S.N.A.);</li>\r\n<li>Sciences Juridiques et Politiques (S.J.P.);</li>\r\n<li>Sciences économiques et de Gestion (S.E.G.);</li>\r\n<li>Médecine-Pharmacie-Odontostomatologie-Médecine vétérinaire (M.P.O.M.V.);</li>\r\n<li>Sciences et Techniques de l’Ingénieur (S.J.P.);</li>\r\n<li>Sciences et Techniques des Activités Physiques, Sportives-Jeunesse et Loisirs. (S.T.A.P.S.).</li>\r\n</ul>\r\n\r\n</p>\r\n\r\n<p>Lors des sessions, les enseignants et chercheurs sont l’objet d’une évaluation individuelle de leurs compétences scientifiques et aptitudes pédagogiques, en vue de leur inscription sur les listes d’aptitude aux différents grades de l’enseignement supérieur et de la recherche scientifique.</p>\r\n\r\n<p>En ce qui concerne les carrières de l’Enseignement Supérieur, les différents grades sont : Maître-assistant, Maître de Conférences, et Professeur Titulaire) ; les carrières de la Recherche Scientifiques sont quant à elles graduées de la manière suivante : Chargé de Recherche, Maître de Recherche, Directeur de Recherche).</p>\r\n\r\n<p>De 1978 à 2012, les CCI ont tenu 35 sessions et évalué plus de 11.000 (onze mille) dossiers d’inscription sur les listes d’aptitude.Et cette 35e session s\'est tenue en juillet 2013 à N’Djamena (Tchad).</p></div>', NULL, 'program/cci.jpg'),
(2, 1, NULL, NULL, 2, 1, 'Concours d\'Agrégation', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p>Afin de doter les institutions d’enseignement supérieur des pays membres d’enseignants et de chercheurs qualifiés dans les sciences médicales et dans les sciences juridiques, économiques et de gestion en aménageant une voie courte pour l’accès au corps des Maîtres de conférences, le CAMES s’est doté d’un programme d’agrégation.</p>\r\n<p>Effectif depuis 1982, l’Agrégation CAMES comporte deux concours, qui se déroulent en alternance:\r\n<ul>\r\n<li>le concours de Médecine, Pharmacie, Odontostomatologie, Médecine vétérinaire et Productions animales d’une part qui se tient les années paires</li>\r\n<li>le concours de Sciences Juridiques, Économiques et de Gestion, d’autre part, qui se déroule les années impaires.</li>\r\n</ul>\r\n</p>\r\n\r\n<p>Les jurys internationaux chargés de l’évaluation des candidats font appel à d’éminents représentants des communautés universitaires des pays membres et des pays partenaires au rang desquels l’on compte la France, la Belgique, le Canada, le Maroc, la Tunisie, etc.</p>\r\n\r\n<p>Le programme affiche un bilan satisfaisant : Environ 1 300 Maîtres de conférences agrégés à ce jour ont pu ainsi contribuer au relèvement de la qualité de l’enseignement supérieur et de la recherche dans les disciplines concernées par le concours.</p>\r\n\r\n<p>Le dernier concours s’est tenu du 11 au 20 novembre 2013 à Brazzaville (Congo) et le prochain concours aura lieu du 03 au 11 novembre 2014 à Yaoundé (Cameroun) dont la date limite de dépôt des dossiers au CAMES est fixée au 31 mai 2014, et l\'inscription en ligne au 15 mai 2014.</p></div>', NULL, 'program/agregation.jpg'),
(3, 1, NULL, NULL, 2, 1, 'Reconnaissance et Equivalence des Diplômes', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p>Le 26 avril 1972 à Lomé (Togo), les Etats membres du CAMES, alors au nombre de 16 (seize), signaient la convention relative à la validité de plein droit des diplômes de l’Enseignement Supérieur.</p>\r\n<p>Par cette convention, les Etats signataires affirmaient « leur volonté de reconnaître les grades et diplômes délivrés par leurs établissements comme valables de plein droit ou équivalents sur le territoire de chacune d’entre elles ».</p>\r\n<p>La reconnaissance de la validité de plein droit ou de l’équivalence des grades et diplômes par le CAMES, est subordonnée à la constatation de :\r\n<ul>\r\n<li>l’identité dans le niveau des études</li>\r\n<li>l’égalité dans la qualification du personnel enseignant</li>\r\n<li>la similitude dans les conditions d’accès à l’enseignement supérieur</li>\r\n<li>l’analogie dans le déroulement et le contenu des études ainsi que dans l’organisation du contrôle des aptitudes et des connaissances.</li>\r\n</ul>\r\n</p>\r\n\r\n<p>Ces critères sont la base du référentiel d’évaluation des diplômes au CAMES. Ils sont complétés par d’autres critères relatifs :\r\n<ul>\r\n<li>au profil des enseignants</li>\r\n<li>au contenu des programmes</li>\r\n<li>aux ressources documentaires</li>\r\n<li>aux volumes horaires, etc.</li>\r\n</ul>\r\n</p>\r\n<p>Un nouveau référentiel adopté en 2007 tient compte des formations offertes dans le cadre du système LMD.</p>\r\n<p>Le programme tient un colloque annuel auquel prennent part les experts en provenance des pays membres et des pays et organisations partenaires du CAMES.</p>\r\n\r\n<p>Les évaluations sont menées au sein de quatre grandes commissions :\r\n<ul>\r\n<li>Commission I : Lettres, sciences humaines et grandes écoles</li>\r\n<li>Commission II : Sciences, médecine et grandes écoles</li>\r\n<li>Commission III : Sciences juridiques, économiques, gestion et grandes écoles</li>\r\n<li>Commission IV : Évaluation des établissements, équipes et structures de recherche.</li>\r\n</ul>\r\n</p>\r\n<p>Depuis le démarrage du programme, 28 colloques ont été organisés et le  prochain colloque se tiendra du 26 au 29 novembre 2014, à Libreville (Gabon).</p></div>', '', 'program/pred.jpg'),
(4, 1, NULL, NULL, 2, 1, 'Ordre International des Palmes Académiques', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p>Issu du 17e Conseil des ministres de Tananarive en avril 2000, ce programme du CAMES a été créé pour témoigner sa reconnaissance aux personnalités administratives et politiques qui ont concouru à son essor et plus généralement au développement en Afrique de systèmes d’éducation de qualité.</p>\r\n\r\n<p>Selon l’Accord d’Abidjan signé le 14 avril 2002 (statut et règlement intérieur), sont créées cinq distinctions honorifiques dont Trois grades (Chevalier, Officier et Commandeur), et deux dignités (Grand Officier et Grand Croix).</p>\r\n\r\n<p>Cet Accord met par ailleurs en place un Ordre ayant à sa tête un Grand Maitre en la personne du Président en exercice du Conseil des Ministres du CAMES.</p>\r\n\r\n<p>L’OIPA est administré par un Conseil de dix membres sous la présidence du Grand Chancelier, qui est le Secrétaire Général du CAMES. Les membres du Conseil sont issus du Comité consultatif général (CCG), instance académique du CAMES,  et sont donc pour les 2/3 des Recteurs et Présidents d’Universités ou Directeurs Nationaux de la Recherche auxquels, se joignent deux éminentes personnalités, l’une politique et l’autre scientifique.</p>\r\n\r\n<p>Siège aussi au Conseil, sans voix délibérative, un secrétaire choisi par le Grand Chancelier.</p>\r\n\r\n<p>Les nominations dans l’OIPA sont prononcées par le Conseil des ministres sur la base de propositions faites par les organismes universitaires nationaux à partir de critères essentiellement académiques (publications scientifiques, prix ou sièges d’académies, responsabilités administratives dans les systèmes nationaux d’enseignement et de recherche, etc.)</p>\r\n\r\n<p>Elles sont ensuite examinées par le Conseil de l’Ordre qui vérifie le respect des critères avant de soumettre les propositions de Résolutions au Conseil des Ministres.</p>\r\n\r\n<p>Enfin, elles sont officiellement remises par le Grand Chancelier lors de cérémonies ad hoc organisées en collaboration avec les ministères chargés de l’enseignement supérieur des pays concernés.</p>\r\n\r\n<p>Aujourd’hui l’accord portant création et organisation de l’OIPA/CAMES a été signé par l’ensemble des 19 pays membres du CAMES et le Conseil de l’Ordre, fonctionne tant et si bien que depuis son installation en avril 2003 à Kigali, il a déjà organisé près d’une trentaine de cérémonies dans les pays membres.</p></div>', NULL, 'program/oipa.jpg'),
(5, 1, NULL, NULL, 2, 1, 'Pharmacopée et Médecine Traditionnelle', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p>Démarré par le CAMES en 1974, ce programme vient en soutien à la recherche dans un domaine jugé essentiel par les pays membres : la contribution à la résolution des problèmes de santé publique par la valorisation des ressources de la pharmacopée et de la médecine traditionnelles africaines.</p>\r\n\r\n<p>Le programme, qui tient un colloque tous les deux ans (dans un pays différent selon une rotation programmée d’avance), est organisé en trois réseaux thématiques sous-régionaux :\r\n<ul>\r\n<li>Réseau « Afrique de l’Ouest » : centré sur la recherche de médicaments antipaludéens</li>\r\n<li>Réseau « Afrique Centrale » : travaillant sur les médicaments anti hypertenseurs</li>\r\n<li>Réseau « Grands Lacs et Océan Indien » : axé sur la production de médicaments des affections diarrhéiques et intestinales.</li>\r\n</ul>\r\n</p>\r\n<p>Les réseaux sont dotés de projets de recherche et développement financés par le CAMES.</p>\r\n\r\n<p>Le Programme Pharmacopée et Médecine Traditionnelles Africaines est par ailleurs, chargé de la gestion du Prix Albert Rakoto Ratsimamanga pour la valorisation de la pharmacopée et de la médecine traditionnelles africaines, décerné tous les deux ans  (en marge du colloque), aux personnes et aux institutions qui ont rendus des services signalés dans ce domaine.</p>\r\n\r\n<p>Depuis le démarrage du Programme PMTA en 1974, 17 colloques ont été organisés, et les actes régulièrement publiés dans la Revue Pharmacopée et Médecine Traditionnelles Africaines du CAMES. Ces actes sont en ligne, dans la version électronique de la Revue.</p></div>', NULL, 'program/pharmacopee.jpg'),
(6, 2, NULL, NULL, 2, 1, 'Liste des pays membres', 'Le C.A.M.E.S. compte en 2013, 19 pays membres répartis en l\'Afrique de l\'Ouest, l\'Afrique Centrale, la Région des Grands Lacs et l\'Océan Indien', '', ''),
(7, 3, NULL, NULL, 2, 1, 'Présentation du CAMES', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<h4><font color=\"blue\"><u>Historique</u></font></h4>\r\n<p>L’idée de création d’un organisme de coordination des problèmes de l’Enseignement Supérieur des les pays d’expression française d’Afrique et de Madagascar remonte aux premières années de leurs indépendances.</p>\r\n\r\n<p>Plusieurs réunions de spécialistes chargés de définir le rôle et les fonctions de l’Enseignement Supérieur ont conduit à la constitution d’une \"Commission consultative d’expert pour la réforme de l’Enseignement en Afrique et à Madagascar\".</p>\r\n\r\n<p>Une résolution de la Conférence des Ministres de l’Éducation nationale tenue à Paris en 1966 donnait mandat à la commission d’entreprendre une recherche approfondie sur les structures et les enseignements des Universités Africaines et Malgache, dans un large esprit de coopération interafricaine.</p>\r\n\r\n<p>Les conclusions de la réflexion menée par la Commission leur ayant été soumises à la Conférence de Niamey, tenue les 22 et 23 janvier 1968, les Chefs d’Etats de l’OCAM décidèrent la création du \"Conseil Africain et Malgache pour l’Enseignement Supérieur\", regroupant à ce jour seize (16) Etats francophones d’Afrique et de l’Océan Indien.</p>\r\n\r\n<p>La convention portant statut et organisation du CAMES fut signée par les seize (16)Chefs d’Etat ou de Gouvernement, le 26 Avril 1972 à Lomé.</p>\r\n\r\n<p>Tous les textes juridiques ont été actualisés en 1998-1999 et le Conseil des Ministres du CAMES a, lors de la 17ème Session tenue à Antananarivo en Avril 2000, adopté l’ensemble des textes juridiques actualisés du CAMES, en particulier :\r\n<ul>\r\n<li>L’accord portant création et organisation des Comités consultatifs interafricains de l’Enseignement Supérieur et de la Recherche Scientifique;</li>\r\n<li>L’accord relatif au concours d’agrégation de sciences juridiques, politiques, économiques et de gestion;</li>\r\n<li> L’accord relatif au concours d’agrégation de médecine humaine, pharmacie, odontostomatologie, médecine vétérinaire et productions animales;</li>\r\n<li>La convention portant statut du Conseil africain et malgache pour l’enseignement supérieur;</li>\r\n<li> Le règlement intérieur du Secrétariat Général;</li>\r\n<li> Le statut du personnel du CAMES;</li>\r\n</ul>\r\n</p>\r\n<h4><font color=\"blue\"><u>Missions</u></font></h4>\r\n\r\n<p>En vue de gérer les problématiques d\'Enseignement Supérieur et de Recherche Scientifique des pays membres, le CAMES a pour missions plus spécifiques de:\r\n\r\n<ul>\r\n<li>Promouvoir et favoriser la compréhension et la solidarité entre les Etats membres;</li>\r\n\r\n<li>Instaurer une coopération culturelle et scientifique permanente entre les Etats membres;</li>\r\n\r\n<li>Rassembler et diffuser tous documents universitaires ou de recherche : thèses, statistiques, informations sur les examens, annuaires, annales, palmarès, information sur les offres et demandes d’emploi de toutes origines;</li>\r\n\r\n<li>Préparer les projets de conventions entre les États concernés dans les domaines de l’Enseignement Supérieur, de la Recherche et contribuer à l’application de ces conventions;</li>\r\n\r\n<li>Concevoir et promouvoir la concertation en vue de coordonner les systèmes d’enseignement supérieur et de la recherche afin d’harmoniser les programmes et les niveaux de recrutement dans les différents établissements d’enseignement supérieur et de recherche, favoriser la coopération entre les différentes institutions, ainsi que des échanges d’informations</li>.\r\n</ul>\r\n</p>\r\n<h4><font color=\"blue\"><u>Instances</u></font></h4>\r\n<li><u>Le Conseil des Ministres</u></li>\r\n<p>C\'est l\'instance suprême du CAMES.Il regroupe les Ministres en Charge de l\'Enseignement Supérieur et/ou de la Recherche Scientifique des pays membres.Il se réunit une fois l\'an en session ordinaire et peut être convoqué en session extraordinaire.</p>\r\n<li><u>Le Comité des Experts</u></li>\r\n<p>Ce comité prépare la session ministérielle.Il est composé de deux représentants par pays membre et d\'un représentant par pays ami ou institution membre.Tout comme le Conseil des Ministres, il se réunit une fois l\'an en session ordinaire et peut être convoqué en session extraordinaire</p>\r\n<li><u>Le Comité Consultatif Général</u></li>\r\n<p>Il supervise et contrôle l\'application de l\'accord portant création et organisation des Comités Consultatifs Interafricains (C.C.I.) et des autres programmes statutaires du CAMES.Ses membres sont des Recteurs, Présidents et/ou Chancelier d\'université et des Directeurs des centres nationaux de la recharche scientifique. Le CCG est l\'instance académique suprême du CAMES.</p>\r\n<li><u>Le Secrétariat Général</u></li>\r\n<p>C\'est l\'organe d\'exécution du CAMES. Il est placé sous l\'autorité d\'un Secrétaire Général nommé par le Conseil des Ministres.Ce dernier est assisté par des Directeurs de programmes, des cadres mis à sa disposition par les pays membres et d\'un personnel d\'exécution.</p>\r\n</div>', NULL, 'sg/site-cames.JPG'),
(8, 3, NULL, NULL, 2, 1, 'Mot du Secrétaire Général', NULL, NULL, 'sg/sg.jpg'),
(9, 3, NULL, NULL, 2, 1, 'Plan stratégique du CAMES', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p>Le CAMES est une organisation régionale intergouvernementale dont la création a été décidée par la Conférence des Chefs d’Etats des pays membres de l’Organisation Commune Africaine et Malgache (OCAM),  tenue à Niamey (Niger) les 22 et 23 janvier 1968. La Convention relative à son statut et son organisation a été signée par  seize (16) Chefs d’Etat ou de Gouvernement, le 26 Avril 1972 à Lomé (Togo).</p>\r\n\r\n<p>Le CAMES compte aujourd’hui 19 pays membres répartis entre l’Afrique Centrale, l’Afrique Occidentale, la Région des Grands Lacs et de l’Océan Indien. Cette institution est reconnue pour sa crédibilité et considérée comme un modèle réussi d’intégration panafricaine en matière de mutualisation des ressources de l’enseignement supérieur et de la recherche.</p>\r\n\r\n<p>Le CAMES ne s’est jamais doté d’un plan institutionnel de développement. Le présent plan, qui est le premier, est le fruit d’échanges et de réflexions au sein du Conseil et de consultations externes. Il précise les missions, les valeurs et la vision du CAMES, ses grands objectifs stratégiques et les actions nécessaires à leur réalisation. Il vise à mettre en cohérence ses missions et ses programmes avec les nouveaux développements que connaissent aujourd’hui l’enseignement supérieur et la recherche en Afrique mais aussi, à affirmer son rôle de pionnier dans l’intégration de ces  secteurs  et dans la construction de l’espace africain de l’enseignement supérieur.</p>\r\n\r\n<p>Le CAMES, soucieux de promouvoir la qualité, l’efficacité, la pertinence et l’efficience dans les systèmes d’enseignement supérieur et de recherche dans son espace, œuvre aussi activement en faveur de l’égalité d’accès à l’enseignement supérieur, afin de garantir un accès plus large à ses programmes et projets.</p>\r\n\r\n<p>C’est cette quête d’excellence et d’équité qui enjoint aujourd’hui le CAMES à se doter d’un plan stratégique pour la période 2015-2019. Sont proposées dans ce plan, plusieurs actions engageant une réorganisation organique et d’importantes ressources.<p>\r\n\r\n<p>Le présent plan stratégique, qui couvre la période 2015-2019, illustre un changement de politique managériale. En adéquation avec la mission, les valeurs et la vision du CAMES, en tenant compte de ses forces et faiblesses, mais également des facteurs externes susceptibles d’affecter négativement ou positivement son développement institutionnel, sept (7) axes stratégiques ont été retenus:\r\n<ul>\r\n<li><b>L’élaboration d’un code d’éthique et de déontologie du CAMES</b> qui décline  le cadre de valeurs dans lequel le travail et l’expertise sous ces différentes formes sont  réalisés au CAMES. Il reflète la « marque CAMES » et constitue  en soi, un plaidoyer en  sa faveur;</li>\r\n\r\n<li><b>La modernisation de la gouvernance</b> pour une plus grande efficacité et la transparence dans la gestion de son administration et de ses programmes;</li>\r\n\r\n<li><b>La dotation du CAMES d’une doublure virtuelle</b> pour assurer une plus grande visibilité et limiter l’isolement intellectuel professionnel du CAMES, en promouvant  la mobilité des connaissances, en accroissant l’accès à moindre coût aux ressources documentaires et en  facilitant les échanges institutionnels;</li>\r\n\r\n<li><b>Le renforcement de la démarche qualité</b> dans toutes les activités et programmes du CAMES ainsi que dans les pays membres en vue de promouvoir des systèmes éducatifs efficaces et efficients;</li>\r\n\r\n<li><b>Le soutien et la valorisation de la formation, la recherche et l’innovation</b> afin d’accroitre l’efficacité et la pertinence des offres de formation, des activités de recherche et de l’innovation;</li>\r\n\r\n<li><b>Le développement de synergies, des partenariats et des programmes innovants</b> avec pour but d’exploiter au mieux les ressources disponibles, de mutualiser les efforts,  en vue d’accroître la pertinence des actions du CAMES, tout en évitant la duplication;</li>\r\n\r\n<li><b>Le renforcement du rayonnement et de la visibilité du CAMES</b> afin de rendre l’institution incontournable dans l’exécution des missions  pour lesquelles elle jouit d’une  légitimité politique et juridique.</li>\r\n</ul>\r\n</p>\r\n\r\n<p>L’élaboration d’un tel plan stratégique devrait être l’œuvre de tous les acteurs d’une institution. C’est pourquoi les Etats membres du CAMES, les établissements d’enseignement supérieur et de recherche, les partenaires scientifiques techniques et financiers et le personnel du CAMES ont été impliqués dans son élaboration.</p>\r\n</div>', NULL, 'photos/planstrategique.jpg'),
(11, 4, NULL, NULL, 2, 1, 'Diplômes reconnus', NULL, NULL, NULL),
(13, 5, NULL, NULL, 2, 1, 'Présentation du C.I.D.', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p>La résolution n° 6 de la XVIIIème session du conseil des ministres dont les assises se sont tenues à Ouagadougou du 9 au 13 avril 2001 a crée le Centre d’information et de documentation du conseil africain et malgache pour l’enseignement supérieur, dénommé CID-CAMES.Ce centre est placé sous l’autorité directe du Secrétaire Général du CAMES. La coordination des différents services est assurée par un responsable</p>\r\n<p>Le C.I.D dispose d\'un fond documentaire qui regroupe des thèses et mémoires, les articles et les ouvrages de l’enseignement supérieur ; les thèses et mémoires sont déposés par les enseignants-chercheurs et chercheurs des universités et centres de recherche promus dans les différents grades de l’enseignement supérieur et de la recherche (assistant, maître-assistant, maître de conférences, professeurs titulaires pour les enseignants, chargés de recherche, directeur de recherche pour les chercheurs).  Les articles quand à eux sont les communications présentées par des spécialistes lors des différents colloques du CAMES sur la pharmacopée et la médecine traditionnelle africaine. Les thèmes couverts par le fonds du CID/CAMES correspondent à ceux des comités consultatifs du CAMES. Ce sont entre autres : \r\n<ul>\r\n<li>Lettres et Sciences Humaines;</li>\r\n<li>Sciences Naturelles Agronomie;</li>\r\n<li>Médecine et disciplines voisines;</li>\r\n<li> Sciences Juridiques et Politiques;</li>\r\n<li>Sciences Economiques et Gestion;</li>\r\n<li>Mathématiques, Physique et Chimie;</li>\r\n<li>Sciences et Techniques de l\'Ingénieur.</li>\r\n</ul>\r\n</p>\r\n\r\n<h4><font color=\"blue\"><u>Missions</u></font></h4>\r\n<p>Conformément à l’article 3 de la convention portant statuts du CAMES, le CID/CAMES a pour mission la collecte, le traitement et la diffusion de tous les documents universitaires ou de recherche (statistiques, annuaires, annales, palmarès, informations sur les offres et demandes d’emploi de toute origine, informations sur les systèmes d’enseignement supérieur, les institutions universitaires, les programmes d’étude, les diplômes...).</p>\r\n\r\n<h4><font color=\"blue\"><u>Objectifs</u></font></h4>\r\n<p>Les objectifs du CID/CAMES sont : \r\n<ul>\r\n<li>Contribuer au renforcement des capacités et à la modernisation de l’administration du CAMES par la mise en œuvre d’une infrastructure informatique (réseau) et Internet;</li>\r\n<li>Assurer la communication institutionnelle;</li>\r\n<li>Gérer la mémoire institutionnelle (les archives) du CAMES;</li>\r\n<li>Constituer et gérer une base de données des thèses et mémoires des enseignants et chercheurs de l’espace CAMES;</li>\r\n<li>Constituer et gérer un fonds documentaire sur les systèmes d’enseignement supérieur de l’espace CAMES;</li>\r\n<li>Constituer et gérer un fonds documentaire d’appui aux concours d’agrégation de médecine, droit, sciences économiques et de gestion;</li>\r\n<li>Constituer et gérer un répertoire des enseignants-chercheurs et chercheurs des pays membres;</li>\r\n<li>Gérer une base de données sur les diplômes et les titres reconnus par le CAMES;</li>\r\n<li>Tenir à jour une base de données sur les universités et centres de recherche des pays membres;</li>\r\n<li>Contribuer à la formation du personnel et des experts du CAMES aux technologies de l’information et de la communication;</li>\r\n<li>Contribuer à la promotion des TIC dans le secteur de l’enseignement supérieur ; et surtout améliorer les services offerts aux usagers du CID/CAMES.</li>\r\n</ul>\r\n</p>\r\n<h4><font color=\"blue\"><u>Public cible</u></font></h4>\r\n<p>Les bénéficiaires du CID/CAMES sont multiples et de diverses origines géographiques; ce sont :\r\n<ul>\r\n<li>la communauté universitaire et de recherches francophones d’une manière générale;</li>\r\n<li>les enseignants chercheurs africains et/ou francophones de l’espace CAMES;</li>\r\n<li>les doctorants;</li>\r\n<li>les étudiants;</li>\r\n<li>le personnel du CAMES.</li>\r\n</ul>\r\n</p>\r\n</div>', 'images/cid/batiement-cid.png', 'images/cid/responsable-cid.JPG'),
(14, 6, NULL, NULL, 2, 1, 'Présentation de l\'Assurance Qualité', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n\r\n<p>En 2007, une étude commanditée par la Banque Mondiale et menée par le Conseil Africain et Malgache pour l’Enseignement Supérieur (CAMES) a permis de faire l’état des lieux de l’assurance qualité en Afrique Francophone, notamment dans les pays de l’espace CAMES.</p>\r\n\r\n<p>Cette étude a également permis d’identifier les besoins de formation en assurance qualité de l’enseignement supérieur d’une part, et de conforter le CAMES dans son rôle d’agence régionale d’assurance qualité, d’autre part.</p>\r\n\r\n<p>Ainsi, depuis novembre 2007, le CAMES a mis en œuvre, des ateliers de formation en vue du renforcement des capacités des acteurs de l’enseignement supérieur et de la recherche et donc des institutions d’enseignement supérieur et de recherche dans le domaine de l’assurance qualité.</p>\r\n\r\n<p>Dans cette dynamique, le Conseil de Ministres du CAMES, en sa 29ème session ordinaire, tenue à Ouagadougou, du 16 au 20 avril 2012, par décision nº011/2012, a décidé de la création d’un programme « Assurance qualité pour l’enseignement supérieur et la recherche ».</p>\r\n\r\n<p>Ce programme, en cohérence avec le besoins des Etats membres, vise à instaurer une culture de la qualité au sein des institutions d’enseignement supérieur et de recherche de l’espace CAMES.</p>\r\n\r\n<p>Il poursuit en particulier cinq objectifs stratégiques afin d’appuyer la formation de ressources humaines de qualité :\r\n<ul>\r\n<li><b>Le renforcement institutionnel du CAMES</b>, préalable indispensable à sa mise en œuvre;</li>\r\n\r\n<li><b>L’établissement d’un état des lieux actualisé de l’assurance qualité dans l’espace CAMES</b> envisagé comme un préalable pour le renforcement de capacité favorable à l’implantation du programme dans l’enseignement et la recherche;</li>\r\n\r\n<li><b>L’évaluation institutionnelle des établissements d’enseignement supérieur, publics et privés et centres de recherche de l’espace CAMES</b> perçue comme une démarche diagnostique et la mise en œuvre de bonnes pratiques devant conférer un label d’excellence;</li>\r\n\r\n<li><b>L’évaluation des programmes de formation et le pilotage de la mise en œuvre du LMD dans les Institutions d’enseignement supérieur</b>, conçu comme un soutien du CAMES aux établissements de l’espace CEMAC, CEPGL, UEMOA, Océan Indien pour l’implantation et l’opérationnalité des différentes directives portant adoption du système Licence, Master, Doctorat (LMD) dans les universités et établissements d’enseignement supérieur au sein de l’espace CAMES;</li>\r\n\r\n<li><b>le développement institutionnel de la gouvernance universitaire</b> pour une gestion plus transparente, planifiée, efficace et efficiente.</li>\r\n</p>\r\n\r\n</div>', NULL, 'images/photos/aq.jpg'),
(15, 7, NULL, NULL, 2, 1, 'Etats des lieux dans les pays de l\'UEMOA', NULL, NULL, NULL),
(16, 7, NULL, NULL, 2, 1, 'Les référentiels qualité du CAMES', NULL, NULL, NULL),
(17, 8, NULL, NULL, 2, 1, 'Renseignements', '<img src=\"images/construction.jpg\"></img>', NULL, NULL),
(18, 9, 6, 5, 2, 5, 'Développeur et concepteur en informatique', 'ssss', NULL, NULL),
(19, 12, NULL, NULL, 2, 1, 'Statistiques pour les Concours Consultatifs Interafricains 2014', NULL, NULL, NULL),
(28, 14, 8, 7, 2, 1, 'La table ronde', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n\r\n<p>\r\n\r\nC\'est officiel! Nous avons le plaisir de vous retrouver en cette rentrée avec une information capitale: la tenue de la Table ronde est désormais fixée aux 28 et 29 octobre 2014, en République Gabonaise. En effet, nous l\'attendions, après un premier report dû à des raisons de calendrier et d\'organisation.</p>\r\n\r\nPour rappel, les résolutions issues de  la dernière session ministérielle prévoyaient la tenue d’une table ronde des partenaires techniques et financiers, pour accompagner la mise en œuvre du Plan Stratégique de Développement du CAMES (PSDC) validé. Le Gabon, par la voix de Son Chef de l\'Etat, avait accepté d\'abriter l\'événement, sur proposition du Conseil des Ministres du CAMES. Dès lors, le SG/CAMES avait démarré une campagne de communication et de sensibilisation des différents acteurs intéressés et/ou impliqués dans la problématique contenue dans le PSDC; campagne couronnée par un franc succès au vu des nombreux partenaires qui ont progressivement rejoint le CAMES.\r\n\r\n<p>Désormais, tous les regards sont tournés vers Libreville, et ce d\'autant plus que le Conseil des Ministres du CAMES s\'y tiendra en amont de la Table ronde, selon le calendrier suivant:\r\n<ul>\r\n<li><b>19-20 octobre 2014 : </b>Arrivée des Experts;</li>\r\n\r\n<li><b>21-23 octobre 2014 : </b>Travaux des Experts;</li>\r\n\r\n<li><b>24-25 octobre 2014 : </b>Conseil des Ministres;</li>\r\n\r\n<li><b>28-29 octobre 2014 : </b>Table ronde des Partenaires techniques et financiers.</li>\r\n</ul>\r\n</p>\r\n</div>', 'evenements/table_ronde_mini.jpg', 'evenements/table_ronde.jpg'),
(32, 15, 6, 6, 2, 6, 'Agenda 1', NULL, NULL, NULL),
(33, 15, 6, 6, 2, 6, 'AGENDA 2', NULL, NULL, NULL),
(34, 16, NULL, NULL, 2, 1, 'Photo1', NULL, '', 'images/galerie/DSC_0001.JPG'),
(35, 16, NULL, NULL, 2, 1, 'Photo 2', NULL, NULL, 'images/galerie/DSC_0006.jpg'),
(36, 16, NULL, NULL, 2, 1, 'Photo 3', NULL, NULL, 'images/galerie/galerie-8.jpg'),
(37, 16, NULL, NULL, 2, 1, 'Photo 4', NULL, NULL, 'images/galerie/DSC_0013.jpg'),
(38, 14, 13, 12, 2, 1, 'Reconnaissance et Equivalence des Diplômes', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n\r\n<p>\r\n\r\nLe programme de reconnaissance et équivalence des diplômes se déroulera du 26 Novembre au 29 Novembre 2014 à Libreville au GABON.\r\n</p>\r\n</div>', 'evenements/pred_mini.jpg', 'evenements/pred.jpg'),
(39, 12, NULL, NULL, 2, 1, 'CCI 2014: Résultats Généraux', NULL, NULL, NULL),
(41, 14, 15, 14, 2, 1, 'Concours d\'Agrégation', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n\r\n<p>\r\n\r\nLe Concours d\'Agrégation se déroulera du 3 Novembre au 11 Novembre 2014 à YAOUNDE (CAMEROUN)\r\n</p>\r\n</div>', 'evenements/agregation_mini.jpg', 'evenements/agregation.jpg'),
(42, 17, NULL, NULL, 2, 1, 'Enseignement supérieur : Le ministre Gnamien Konan veut faire de l’employabilité des diplômés sa priorité', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p><b>M. GNAMIEN Konan, Ministre de l\'enseignement supérieur de Côte d\'Ivoire, Président du Conseil des Ministres</b></p>\r\n\r\n<p>Yamoussoukro</p>\r\n<p>Le ministre de l\'enseignement supérieur, Gnamien Konan, ambitionne de faire de l\'employabilité des diplômés de l\'enseignement supérieur, sa priorité pour permettre aux jeunes diplômés d\'accéder durablement  au marché du travail.</p>\r\n\r\n<p>Exposant mardi, sa vision du système de l\'enseignement supérieur, à l\'ouverture du séminaire sur l\'employabilité des diplômés de l\'enseignement supérieur à Yamoussoukro (centre région du Bélier), le ministre Gnamien a déclaré que pour éviter la descente du système de l\'enseignement supérieur aux enfers, la priorité pour nous, c\'est l\'employabilité des diplômés.</p>\r\n\r\n<p>Le ministre Gnamien a fait remarquer qu’en dépit des premiers rangs occupés par les enseignants ivoiriens au Conseil africain et malgache pour l’enseignement supérieur (CAMES) \'\' la qualité de l\'enseignement reste à désirer et notre système n\'est pas à la hauteur des attentes du gouvernement.</p>\r\n\r\n<p>Pour le premier responsable de l\'enseignement supérieur, les raisons découlent du déficit d\'infrastructures et d\'enseignants, de l\'indiscipline des apprenants ainsi que l\'inadéquation entre la formation et le marché de l\'emploi. Ce qui a augmenté selon le ministre le taux de chômage en Côte d\'Ivoire.</p>\r\n\r\n<p>Aussi propose-t-il que la formation dans les Universités et grandes écoles, débouche désormais sur l\'emploi avec un critère unique d\'évaluation.</p>\r\n\r\n<p>Il est inconcevable à notre époque qu\'un étudiant finisse ses études sans parler anglais et sans être accompagné de stage\'\' a déploré le ministre qui recommande que tout diplômé avant sa sortie doit dorénavant, pouvoir maîtriser l\'outil informatique, parler couramment l\'anglais comme deuxième langue, avoir la culture de l\'entrepreneuriat et capable de transmettre ce qu\'il a appris.</p>\r\n\r\n<p>Pour le ministre Gnamien, le marché de l\'emploi est local mais aussi régional et international, et est capable d\'absorber les diplômés ivoiriens s\'ils sont bien formés</p>\r\n\r\n<p>Un diplômé de qualité formé au standard international peut se faire embaucher, s\'auto employer et embaucher des diplômés\'\', a fait savoir le ministre de l\'enseignement supérieur qui estime que l\'Etat ne doit plus être le seul à former les étudiants.</p>\r\n\r\n<p>Il faut l\'effort des parents pour le financement des études de leurs enfants, et le secteur privé pour le financement de leurs futurs employés\'\' préconise-t-il, tout en suggérant l\'augmentation du nombre des écoles professionnelles pour les élèves qui ne veulent pas faire des études supérieures.</p>\r\n\r\n<p>Il suggère également des mesures incitatives pour les professeurs des matières scientifiques, la reformulation du curricula, l\'intégration des technologies de l\'information et de la communication (TIC) dans l\'enseignement supérieur, et la formation à distance pour régler le problème de la masse et des infrastructures.</p>\r\n\r\n<p>Le séminaire organisé par l\'enseignement supérieur sur l\'employabilité des diplômés prend fin vendredi et vise à mettre l\'employabilité au cœur des stratégies nationales de formation pour permettre aux diplômés d\'accéder durablement au marché du travail.</p>\r\n\r\n<p>Il se propose de réfléchir au rôle des universités et grandes écoles dans l\'employabilité de leurs diplômés. Prendre en compte les exigences du monde professionnel, de la conjoncture économique pour aider les jeunes étudiants dans leur orientation et leur insertion professionnelle, et voir quels partenariats développer entre les institutions d\'enseignement supérieur, particulièrement les universités et le milieu socioprofessionnel pour améliorer les chances d\'employabilité.</p>\r\n<p>\r\n<ul>\r\n<li>Source:(AIP)</li>\r\n<li>Auteurs:Nam / Kam</li>\r\n</ul>\r\n</p>\r\n\r\n</div>', 'ActuSlide/actuslide1_mini.jpg', 'ActuSlide/actuslide1.jpg'),
(43, 17, NULL, NULL, 2, 1, 'Le SG/CAMES à Bujumbura', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n\r\n<div style=\"text-align:center;\"><h5>Presidium</h5></div>\r\n<p>\r\nLe Secrétaire Général du CAMES, Prof. Bertrand MBATCHI, accompagné de M. Zakari LIRE, Chargé du Programme Assurance Qualité, a participé du 15 au 19 septembre 2014, à Bujumbura, au Burundi à la 6ème Conférence internationale sur l’assurance qualité de l’enseignement supérieur en Afrique (ICQAHE) et à la réunion du Réseau Africain d’Assurance Qualité (AfriQAN).\r\n</p>\r\n\r\n<p>\r\nCette conférence portait sur l’agenda post 2015 du développement de l’assurance qualité de l’enseignement supérieur en Afrique. Organisée en partenariat par la Commission de l’Union Africaine, l’Association des Universités Africaines (AUA), l’Union Européenne et GUNI  (Global University Network for Innovation) Africa, elle a connu la participation de nombreux délégués venus de l’Afrique francophone, anglophone, lusophone, mais également d’experts européens.</p>\r\n\r\n<p>Elle a été l’occasion pour la Commission de l’Union Africaine  de présenter les résultats d’une étude sur la mise en place d’un cadre africain d’assurance qualité et d’une agence continentale d’accréditation. Le CAMES et l’IUCEA (Inter- University Council for East Africa ont été  cités comme des modèles possibles pour asseoir un cadre continental d’assurance qualité.</p>\r\n\r\n<p>Tout en reconnaissant l’utilité d’un tel cadre, les participants ont souhaité que sa construction se fonde sur un modèle qui parte de la base vers le sommet, c\'est-à-dire des institutions d’enseignement supérieur (IES), des agences nationales et des agences régionales telles le CAMES vers une agence continentale dont le rôle serait essentiellement d’élaborer des directives et de soutenir le financement des activités liées à la démarche qualité.\r\n</p>\r\n<div style=\"text-align:center;\">\r\n<p><img src=\"images/ActuSlide/photogroupe.jpg\" style=\"float:center\">\r\n</p>\r\n<h5>Photo de groupe</h5></div>\r\n\r\n<p>\r\nLe Secrétaire Général du CAMES  a,  au cours de la conférence, fait une communication sur l’état des lieux et les perspectives de l’assurance qualité dans l’espace CAMES. Cet état des lieux a permis de mettre en évidence la vision de l’institution exprimée à travers son plan stratégique de développement  et la dynamique partenariale à impulser pour sa mise en œuvre.</p>\r\n\r\n<p>Au cours des échanges l’Union Européenne à réaffirmer sa volonté d’accompagner l’UA, à travers son plan panafricain,  qui comportent notamment deux aspects dans l’enseignement supérieur : a) l’harmonisation avec l’approche Tuning b) l’accréditation et l’assurance qualité.</p>\r\n\r\n <p>La prochaine conférence se tiendra à Abuja au Nigéria, en 2015.\r\n</p>\r\n</div>', 'ActuSlide/actuslide2_mini.jpg', 'ActuSlide/actuslide2.jpg'),
(44, 17, NULL, NULL, 2, 1, 'Système LMD au Burkina Faso ', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p><b>Pr Moussa OUATTARA, Ministre Burkinabè des Enseignements Secondaire et Supérieur</b></p>\r\n<p>La Commission de l’Union économique et monétaire ouest-africaine (UEMOA) organise, du 17 au 19 septembre 2014 à Ouagadougou, un séminaire sur la sensibilisation au système Licence-Master-Doctorat (LMD), au profit des universités publiques et privées du Burkina Faso.</p>\r\n\r\n<p>Cinq ans après son adoption par les universités de l’espace UEMOA, la mise en œuvre du système Licence-Master-Doctorat (LMD) rencontre de nombreuses difficultés, surtout au niveau des textes d’évaluation, des questions liées aux offres de formation, des passerelles entre filières, etc. Cette situation a conduit l’UEMOA, à travers le Projet d’appui à l’enseignement supérieur (PAES), à organiser, du 17 au 19 septembre 2014 à Ouagadougou, un séminaire de sensibilisation des acteurs du monde universitaire burkinabè sur le LMD. Le présent atelier est une opportunité de poursuivre des réflexions sur la réforme LMD et d’accompagner les partenaires que sont l’Etat, les enseignants, les étudiants, les parents d’élèves et les syndicats, pour un recadrage ou des précisions des leçons assimilées. « La pertinence de cette sensibilisation est qu’elle prend en compte les différentes composantes de la communauté universitaire (…). L’autre élément important est que cette sensibilisation touche, tant les universités publiques que  privées », a précisé le ministre en charge de l’enseignement supérieur, Moussa Ouattara. Pour lui, ces 72 heures d’échange sont l’opportunité de se munir d’outils pour aborder au mieux cette réforme. « Ce devrait être également l’occasion de prendre conscience que le LMD, c’est aussi un état d’esprit. Cet aspect des choses importe pour un succès », a-t-il fait savoir. A ses dires, tous les segments d’activités seront visités, au cours de ce séminaire : de l’intégration et de l’utilisation des TIC dans l’enseignement/apprentissage à la maîtrise des inscriptions via la professionnalisation des filières. Pour sa part, le représentant du commissaire de l’UEMOA, Brahima Tounkara, cet atelier qui concerne l’ensemble des pays de l’espace communautaire fait appel à l’expertise internationale en matière de pédagogie du LMD et de techniques de communication avec les différents publics- cibles. L’UEMOA a dit fonder l’espoir sur la réussite de ce séminaire en vue de la mise en place d’une stratégie durable de gestion des changements attendus, à la suite de l’adoption du système LMD. Il a exhorté les responsables nationaux, les étudiants, les enseignants- chercheurs, la société civile, les syndicats à adopter les attitudes et pratiques de respect des normes internationales de qualité et de pertinence en vigueur. « Loin d’être le produit d’un mimétisme international, l’adoption de la réforme LMD constitue une opportunité sans précédent, de rattraper le retard important accusé par nos systèmes d’enseignement supérieur sur le marché international du savoir», a déclaré M. Tounkara. L’experte LMD de l’UEMOA, Aline Muller, a laissé entendre que les nombreux freins à la mise en œuvre du système LMD sont dus au manque de dialogue entre les différents acteurs et une méconnaissance des textes. Les préoccupations des séminaristes doivent être exprimées, écoutées et prises en compte, selon l’experte. « Notre objectif est de répondre aux questions techniques sur le LMD et amener les participants à se comprendre, trouver et construire ensemble, le système LMD qui convient le mieux au contexte du monde universitaire burkinabè », a-t-elle relevé.</p>\r\n\r\n<ul>\r\n<li>Djakaridia SIRIBIE</li>\r\n<li>Nadège YAMEOGO</li>\r\n(Stagiaires)\r\n</ul>\r\n</div>', 'ActuSlide/actuslide3_mini.jpg', 'ActuSlide/actuslide3_mini.jpg'),
(45, 18, NULL, NULL, 2, 1, 'Burkina : Un informaticien décrypte une nouvelle méthode de résolution de calcul d’optimisation de distance', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p>Un jeune informaticien burkinabè du nom de <b>Yiyé Constant Bazié</b>, s’est attaqué à l’un des problèmes mathématiques de l’histoire, à savoir le « problème P = NP », jusque-là non résolu et considéré par de nombreux chercheurs comme un des plus importants problèmes du domaine.</p>\r\n\r\n<p>Le chercheur a présenté, jeudi, un travail de recherche dans lequel il propose une solution à ce problème à travers une nouvelle méthode.</p>\r\n\r\n<p><b>« Le problème P = NP » </b>est un problème non résolu en mathématiques et particulièrement en informatique théorique, et est considéré par de nombreux chercheurs comme un des plus importants problèmes du domaine. L\'Institut de mathématiques Clay a inclus ce problème dans sa liste des sept problèmes du prix du millénaire, et même promis une récompense financière à quiconque sera en mesure de prouver P = NP ou P ≠ NP. Ce problème est également le troisième problème de Smale.</p>\r\n\r\n<p>C’est ce défi que le jeune chercheur burkinabè, Yiyé Constant Bazié a tenté de relever durant deux semaines de nuits blanches et en bravant de multiples difficultés, à travers sa présentation au siège du Festival panafricain du cinéma et de la télévision de Ouagadougou (FESPACO) à ses aînés et à ses proches avant qu’il ne soit soumis à l’appréciation de la communauté scientifique.</p>\r\n\r\n<p>Selon l’analyste programmeur, la méthode consiste à intégrer des données selon un certain nombre de critères pour aboutir à un résultat.</p>\r\n\r\n<p>Indiquant utiliser des « figures intelligentes » pour résoudre le problème, le chercheur a expliqué que cette méthode de calcul a de nombreux avantages pour le Burkina Faso en particulier et le monde en général.</p>\r\n\r\n<p>« Cette méthode, si elle est valorisée, permettra par exemple aux entreprises qui livrent des produits à leurs clients d’être plus efficaces sur le terrain en optimisant les coûts des déplacements », a-t-il expliqué.</p>\r\n\r\n<p>A l’en croire, les industries de production qui utilisent dans leurs chaînes des robots pourront aussi se l’approprier pour augmenter leur productivité. Il a par ailleurs ajouté que les utilisateurs pourront, sur la base de ce travail, mettre en place des logiciels qui seront plus ou moins rapides.</p>\r\n\r\n<p>Pour l’heure, le jeune chercheur dit soumettre son travail à l’appréciation de la communauté scientifique afin de l’améliorer.</p>\r\n\r\n<p>« Aujourd’hui je suis content qu’au niveau du Burkina, quelqu’un puisse proposer une solution à un problème qui est connu pour être parmi les plus difficiles dans le domaine des mathématiques. C’est déjà une fierté en attendant que les experts eux mêmes se prononcent. Comme il y aura des implications dans le domaine des transports et de la logistique je pense les gens pourront être intéressés», a-t-il dit.</p>\r\n\r\n<p>Outre ce travail, M. Bazié a présenté au public deux autres recherches à savoir la mise en place d’une loi universelle permettant de calculer les collisions et la découverte de nombres nouveaux en mathématiques avec une certaine particularité s’apparentant à une variante de la division euclidienne.</p>\r\n<ul>\r\n<li>Source :http://news.abidjan.net/h/507971.html</li>\r\n<li>Auteur: cmas</li>\r\n</ul>\r\n\r\n</p>\r\n</div>', 'ActuInfo/actuinfo1_mini.jpg', 'ActuInfo/actuinfo1.jpg'),
(46, 18, NULL, NULL, 2, 1, 'Le recteur de l’université de Bujumbura appelle à repenser l’enseignement pour une formation de haute qualité en Afrique', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n<p>Le recteur de l’Université du Burundi, professeur Gaston Hakiza, a souligné la nécessité de repenser et opérer des changements majeurs pour assurer une formation de haute qualité en Afrique pour faire face aux exigences de la mondialisation et de l’intégration régionale, tout en se focalisant sur les besoins et les réalités de la société africaine.</p>\r\n\r\n<p>Prenant la parole à l’ouverture de la 6éme Conférence Internationale et Ateliers sur l’Assurance Qualité dans l’Enseignement Supérieur en Afrique et réunion du Réseau Africain d’Assurance Qualité (AfriQAN) à Bujumbura (15-19 septembre), il a fait part de l’existence du projet pilote  »Tuning Afrique » qui pourrait, a-t-il dit, favoriser la mise en œuvre de la stratégie d’harmonisation.</p>\r\n\r\n<p>Il a expliqué que cette stratégie est un processus de collaboration hautement consultatif impliquant les principales parties prenantes de l’enseignement supérieur dans les domaines spécifiques liés au développement des curricula afin d’améliorer les connaissances des étudiants.</p>\r\n\r\n<p>Cette rencontre regroupe des recteurs d’université, des directeurs généraux de structures éducatives, des enseignants et des chercheurs venus de plusieurs universités africaines.</p>\r\n\r\n<p>Le professeur Hakiza a indiqué que l’objectif est de partager les expériences et analyser les meilleures pratiques dans le renforcement des mécanismes de promotion de l’assurance-qualité au sein des établissements d’enseignement supérieur et universitaire pour qu’à l’issue de la conférence, les participants puissent être de véritables agents de changement dans la mise en œuvre des programmes d’amélioration de la qualité de l’enseignement supérieur en Afrique.</p>\r\n\r\n<p>Il a fait remarquer que cette rencontre se tient au moment où au Burundi comme partout ailleurs en Afrique, le paysage de l’enseignement supérieur est en pleine transformation suite à la massification des effectifs et à la diversification des filières et des structures de formation pour répondre aux impératifs d’un monde en mutation.</p>\r\n<p>Signature : APA\r\nCopyright : © APA \r\n</p>\r\n</div>', 'ActuInfo/actuinfo2_mini.jpg', 'ActuInfo/actuinfo2.jpg');
INSERT INTO `information` (`CODINFORMATION`, `CODSOUSRUBRIQUE`, `CODPERIODE`, `PER_CODPERIODE`, `CODSTATUT`, `PER_CODPERIODE2`, `TITINFORMATION`, `INTINFORMATION`, `PETPHOTOINFORMATION`, `GRAPHOTOINFORMATION`) VALUES
(47, 18, NULL, NULL, 2, 1, 'Mettre l\'Afrique sur les rails de la formation scientifique', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n\r\n<p>Un groupe de chercheurs  dont le noyau est d’origine africaine a choisi  d’investir le continent pour contribuer à son développement  dans le domaine de la recherche scientifique et des nouvelles applications technologiques. L’objectif de cette convergence active de ténors de la science est d’organiser une grande session tous les deux ans dans un pays africain et d’y faire participer des enseignants internationaux afin de promouvoir l’enseignement de la physique fondamentale et ses applications. Lancée en 2010 en Afrique du Sud et poursuivie au Ghana en 2012,  cette école scientifique itinérante a choisi cette année le Sénégal pour dérouler la troisième édition.</p>\r\n \r\n<p>Pour cette édition 2014, sur près de 330 dossiers de candidature issus pour la plupart des Etats figurant sur la liste des pays les moins développés tels qu’exigés par les critères de cette formation de haut niveau, seuls 56 étudiants ont été présélectionnés, dont 11 Sénégalais. Une partie de ces étudiants a été prise en charge par l’Union  Internationale des Télécommunications (UIT) dont le siège est à Genève. </p>\r\n \r\n<p>Un groupe de chercheurs africains est à l’origine de cette école internationale, d’après Dr. KeteviAssamagan, physicien natif du Togo et basé à New York. Elle regroupe des enseignants et chercheurs provenant des USA, d’Europe et d’Asie mais aussi d’Afrique. Dr. Assamagan de faire constater que, d’une manière générale, l’enseignement de la physique en Afrique a été jusqu’à présent quasi théorique alors que les applications arrivent de tous les côtés. « C’est là où nous voulons apporter notre soutien à l’Afrique»  Ces volontaires qui ont en commun l’engagement à relever les défis de l’Afrique en ce troisième millénaire, ont ainsi décidé d’appuyer voire de pousser le continent vers le passage obligé de la recherche et des applications scientifiques pour  tout pays qui aspire au développement.</p>\r\n \r\n<p>La session biannuelle permet aux étudiants du sud du Sahara de se frotter à des professeurs de dimension internationale et  de saisir des  opportunités d’étudier en Europe, aux Etats-Unis ou en Asie. Ainsi, après avoir fructifié leurs connaissances en physique fondamentale et  appliquée, ils pourront ensuite revenir contribuer au développement de leur pays.</p>\r\n \r\n<p><b>PROFESSEUR OMAR KA, DE LA FACULTE DES SCIENCES DE L’UCAD - «Nous sommes prêts à donner plus d’éléments d’appréciation…»</b></p>\r\n \r\n<p>En marge de la cérémonie de lancement de la session de formation samedi dernier, à l’UCAD II, le Pr Omar Ka, du département de Physique de la Faculté des Sciences et Techniques de l’UCAD est revenu largement sur le message que les scientifiques adressent  à tous les  gouvernants, hommes politiques et société civile du continent. « Malgré les grands enjeux nationaux, les pays d’Afrique subsaharienne devraient davantage investir dans la recherche scientifique et ses nouvelles applications. Un passage obligé déjà emprunté par les pays asiatiques (Corée, Malaisie,  Vietnam, etc.) qui avaient opté pour cette voie dans les années 80. En amenant leurs étudiants se former au Japon, ils font partie des pays qui ont poussé à l’essor de la recherche et ses nouvelles applications et  fait d’eux aujourd’hui les nouveaux modèles de développement à travers le monde. Pour preuve, le Vietnam, quasiment à l’état de ruine au sortir de la guerre du Vietnam en 1975, a évolué ensuite pour devenir le fournisseur principal de disques durs pour ordinateurs. Au point qu’il y a deux ou trois années, on a assisté à une augmentation des prix  de cette composante essentielle du fait que ce pays était vivement touché par des inondations qui ont réduit sa capacité de production de disques durs. »<p>\r\n \r\n<p><b>Passage obligé</b><p>\r\n \r\n<p>La fabrication des disques durs, les téléphones portables, les écouteurs (pour ne citer que quelques exemples faciles à identifier), les avancées dans le domaine médical, dans l’environnement avec par exemple le solaire, voilà autant de domaines aujourd’hui essentiels à l’homme et qui sont fabriqués dans les pays qui avaient investi dans la recherche et la science et qui bénéficient maintenant des retombées en terme de développement. De l’avis du Pr Ka, les pays africains  sont obligés de passer par là. Il insiste d’ailleurs face à cet impératif, sur la nécessité de faire dès maintenant les investissements sur ressources humaines (par la formation) sans attendre, au risque de rater par exemple la prochaine étape de délocalisation qui aura nécessairement lieu vers l’Afrique. Saisissant  l’opportunité de cette tribune internationale, il a lancé un vibrant appel aux dirigeants sénégalais qui ont opté pour l’émergence économique en leur demandant d’orienter désormais leur ambition vers la formation des jeunes dans le domaine de la recherche et des nouvelles applications technologiques.</p>\r\n \r\n<p>« Nous serions plus qu’honorés, heureux de donner des éléments d’analyse aux autorités gouvernementales de manière à pouvoir mieux cibler les actions du gouvernement sur ce plan là», a t-il lancé dans la grande salle de l’UCAD, suite au  discours prononcé par le  président Macky Sall lors de la dernière distribution des prix du Concours général.</p>\r\n \r\n<p><b>DR HAMADOUNTOURE,  SECRETAIRE GENERAL DE L’UNION INTERNATIONALE  DES TELECOMMUNICATION - «Si on néglige l’enseignement des sciences, le continent sera toujours à la traine»</b></p>\r\n \r\n<p>Donnant son point de vue sur ce sujet d’actualité, le Docteur Hamadoun Touré,  secrétaire général de l’Union internationale des télécommunications (UIT) n’a pas manqué d’insister sur ces urgences, interpellant les dirigeants politiques d’Afrique subsaharienne. Faisant la remarque que même s’il y a des raisons économiques qui font que les priorités sont données à d’autres secteurs, il voudrait que l’on sache que si l’enseignement des sciences est négligé, le continent sera toujours à la traine.</p>\r\n \r\n<p>C’est d’ailleurs pour cela que l’institution qu’il dirige s’intéresse à ce programme  très important qui  donne l’occasion aux jeunes chercheurs africains d’être outillés en technologie de pointe. « C’est pour cela que nous avons sponsorisé un certain nombre d’étudiants dans ce programme, pour que l’Afrique se concentre sur l’enseignement des mathématiques, la science et la physique surtout. Parce que dans ce troisième millénaire, il est important que l’Afrique apporte sa contribution », a-t-il encore précisé, avant de résumer sa présentation qui stipule que la recherche est fondamentale pour le progrès  et que  le cerveau humain est son seul moteur équitablement distribué au monde entier. Il n’y a pas une race ou une nation qui a en a plus ou moins.</p>\r\n\r\n<p>De quoi lui permettre d’inciter les gouvernants à continuer à former les cerveaux afin que le continent africain puisse apporter sa contribution. Il a également soutenu que les technologies de l’information et de la communication ont besoin de la recherche fondamentale, de la physique des particules et sont au service de tous. Elles sont la base pour les OMD en santé, éducation,  commerce, etc. C’est aussi une base pour un développement durable et pour combattre le changement climatique. Autrement dit, de nombreux challenges que l’humanité a devant elle peuvent être résolus à travers les technologies de l’information et de la communication. </p>\r\n \r\n<p>Le haut fonctionnaire de l’Union internationale des télécommunications a dans ce sens fait remarquer que le continent africain a fait de grands progrès au cours des dernières années. En téléphonie mobile, l’Afrique est le continent où il ya la plus forte croissance  ces dix dernières années, avec un taux de pénétration de plus de 70 %. Mais, a-t-il fait savoir, il y a des lacunes concernant notamment Internet, dont le haut débit constitue un des outils importants pour le développement socio économique.</p>\r\n \r\n<p><b>Lettres mortes, projets sans lendemain…</b></p>\r\n \r\n<p>Les promoteurs de cette école scientifique invitent à une plus forte connexion entre les autorités publiques et le corps professoral, qui n’est peut être pas bien écouté. Tout en renouvelant  leur disponibilité à contribuer au défrichage de  cette voie, ils ont avoué avoir déjà essayé de partager leur passion avec les autorités sénégalaises. Mais la concrétisation de leurs projets pose toujours problème.</p>\r\n \r\n<p>Le Pr Ka de citer en exemple un programme très ambitieux qu’ils avaient présenté au président Wade, à l’époque très enthousiaste et qui leur a adressé des lettres de soutien avec son accord pour la construction par l’Etat du Sénégal d’une structure de dimension internationale de recherche et applications. Dix ans après, ce projet n’a toujours pas vu le jour et de nombreuses opportunités pouvant avoir un grand impact sur l’avenir des sciences au Sénégal n’ont pu être saisies. Il dit qu’il est encore temps de prendre des mesures permettant de ne pas rater la prochaine opportunité, qui est le projet naissant “African Light Source”, qui correspond à un outil de dimension internationale utilisé dans des domaines appliqués extrêmement variés (science des matériaux, biophysique, spectroscopie, etc.).</p>\r\n<p>\r\n</p>\r\n</div>', 'ActuInfo/actuinfo3_mini.jpg', 'ActuInfo/actuinfo3.jpg'),
(49, 18, NULL, NULL, 2, 1, 'Mali : CAMES / Pr. Rokia Sanogo fait honneur au Mali', '<div style=\"text-align:justify;padding-left:40px;padding-right:40px\">\r\n\r\n<p><b>Suite au concours du CAMES au titre de l’année 2014, Rokia Sanogo a fait honneur au Mali tout entier en se hissant au rang des Professeurs titulaires du CAMES. Elle devient à ce titre, la seule Malienne à avoir obtenu ce grade en pharmacie.</b></p>\r\n\r\n<p>La nouvelle qui est tombée en début de semaine, a fait honneur non seulement au peuple malien, mais aussi et surtout aux plus proches collaborateurs du Pr. Sanogo. «C’est avec fierté et joie que nous avons appris le passage de notre sœur et collaboratrice au grade de Professeur titulaire du CAMES. Au nom de l’ensemble des travailleurs de la Faculté de Pharmacie et à mon nom propre, nous lui disons bravo et félicitation», confie à ‘’Le Flambeau’’ le Doyen de la Faculté de Pharmacie, le Professeur Boubacar dit Bouba Traoré. En essayant de faire un lien entre le thème de la journée panafricaine des femmes de cette année: «Rôle des femmes et des jeunes filles dans les sciences et les nouvelles technologies pour une Afrique émergente» et le grand exploit que vient de réaliser Pr. Sanogo, on peut aisément se permettre de dire que ses objectifs seront atteints dans un temps record.</p>\r\n\r\n \r\n\r\n<p><b>Portrait du professeur Rokia Sanogo</b></p>\r\n\r\n<p>Née à San en 1964, elle décrochera son Doctorat en pharmacie à Bamako en 1990. Neuf ans plus tard, elle obtiendra son Ph. D. en Pharmacognosie à Messine (Italie) en 1999. Depuis 2008, elle était Professeur Agrégée du CAMES. Elle  enseigne à la Faculté de Pharmacie et est actuellement Chef du Service des Sciences Pharmaceutiques du Département Médecine Traditionnelle, une unité qui s’occupe de la recherche, de la production et du contrôle de qualité des Médicaments Traditionnels Améliorées.  Elle est aussi Présidente du Comité Scientifique Interne de l’Institut National de Recherche en Santé Publique. Le Pr. Rokia est chargée des Cours en Ethnopharmacologie Appliquée de la Société Française d’Ethnopharmacologie à Metz (France) avec le thème : «L’intégration de la Médecine Traditionnelle dans les Systèmes de Santé en Afrique» ; Biotechnologie à l’Université de Ouagadougou (Burkina Faso) sur les Plantes Médicinales et le Paludisme ; Santé Publique de la Faculté de Médecine et d’Odontostomatologie de Bamako, avec  le Module «Pharmacopée et Médecine  Traditionnelles».</p>\r\n\r\n<p>Elle participe également à l’enseignement et la recherche sur les plantes médicinales africaines auprès des Facultés de Pharmacie de Messine et Salerne (Italie) et de Toulouse  (France). Le Pr. Sanogo est auteur d’une soixantaine de publications scientifiques sur les propriétés biologiques et la chimie des plantes médicinales au Mali et ailleurs. Depuis 1990, Pr. Sanogo est engagée à trouver des solutions pragmatiques aux problèmes de la santé des femmes, par la valorisation des ressources de la médecine traditionnelle dans lutte conte la mortalité maternelle et néonatale, les mutilations génitales féminines, l’infertilité, les troubles de la ménopause…</p>\r\n\r\n\r\n<p>À noter que le Conseil Africain et Malgache pour l’Enseignement Supérieur (CAMES) est l’organisme de coordination des problèmes de l’Enseignement supérieur dans les pays d’expression française d’Afrique et de Madagascar regroupant à ce jour, dix-neuf (19) Etats d’Afrique et de l’Océan Indien.\r\nIl s’agit notamment : de la Côte d’Ivoire, du Bénin, du Burkina-Faso, du Burundi, du Cameroun, de la Centrafrique, du Congo, du Gabon, de la Guinée, de la Guinée-Bissau, du Mali, de Madagascar, du Niger, du Rwanda, du Sénégal, du Tchad et du Togo.</p>\r\n<p>\r\n<ul>\r\n<li>Auteur :KANTAO Drissa</li>\r\n<li>Source: Le Flambeau du 29 août 2014</li>\r\n</ul>\r\n</p>\r\n</div>', 'ActuInfo/actuinfo4_mini.jpg', 'ActuInfo/actuinfo4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

DROP TABLE IF EXISTS `institution`;
CREATE TABLE IF NOT EXISTS `institution` (
  `CODINSTITUTION` int NOT NULL AUTO_INCREMENT,
  `CODPAYS` int NOT NULL,
  `CODTYPEINSTITUTION` int NOT NULL,
  `LIBINSTITUTION` varchar(100) NOT NULL,
  PRIMARY KEY (`CODINSTITUTION`),
  KEY `FK_ETRE1` (`CODTYPEINSTITUTION`),
  KEY `FK_EXISTER` (`CODPAYS`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `institution`
--

INSERT INTO `institution` (`CODINSTITUTION`, `CODPAYS`, `CODTYPEINSTITUTION`, `LIBINSTITUTION`) VALUES
(1, 1, 1, 'Ecole supérieure de génie civil Verechagune A.K./Cotonou'),
(2, 1, 1, 'Institut supérieur de management ADONAI'),
(3, 1, 1, 'Institut Supérieur des Métiers de l\'Audiovisuel'),
(4, 1, 1, 'Université Africaine de Technologie et de Management (UATM)'),
(5, 2, 1, 'Groupe BK-Université/IIM/OUAGADOUGOU'),
(6, 2, 1, 'Institut Supérieur d\'Informatique et de Gestion (I.S.I.G.)'),
(7, 2, 1, 'Institut Supérieur de Génie Electronique (ISCGE-BF / CCIA -BF)'),
(8, 2, 1, 'Institut Supérieur Privée Polytechnique (I.S.P.P.)'),
(9, 3, 1, 'RUSTA / USTCI - ABIDJAN'),
(10, 6, 1, 'Ecole Supérieur de Commerce et d\'Administration des Entreprises'),
(11, 6, 1, 'Ecole des Techniques Economiques Commerciales et de Communication (E.T.E.C.)'),
(12, 6, 1, 'Institut Africain de Technologie (I.A.T / NIAMEY)'),
(13, 7, 1, 'Ecole des Techniques Internationales de Commerce, de Communication et des Affaires (E.T.I.C.C.A.)'),
(14, 7, 1, 'Ecole Supérieure Multinationale des Télécommunications (E.S.M.T.)'),
(15, 7, 1, 'Institut Saint Michel / UCAO'),
(16, 7, 1, 'Institut Sainte Jeanne d\'Arc (POST - BAC) DAKAR'),
(17, 7, 1, 'Institut Supérieur Entrepreneurship et Gestion (I.S.E.G.)'),
(18, 7, 2, 'Université de l\'Entreprise / DAKAR'),
(19, 7, 2, 'Université Gaston Berger de SAINT LOUIS'),
(20, 7, 2, 'Université Hamadou Hampaté-Ba / DAKAR'),
(21, 8, 2, 'Centre Régional d\'Action Culturele (C.R.A.C. /LOME)'),
(22, 7, 1, 'Ecole Supérieure de Commerce de Dakar (S.U.P.DE.CO.)'),
(23, 1, 1, 'Ecole Supérieure d\'Enseignement Professionnel le BERGER'),
(24, 1, 1, 'Ecole Sup. de Gestion Informatique et de Sciences (E.S.G.I.S.)'),
(25, 1, 1, 'Haute Ecole de Commerce et de Management (H.E.C.M.)'),
(26, 1, 1, 'Institut International de Management (I.I.M.)'),
(27, 1, 2, 'Université Polytechnique Internationale du Bénin (U.P.I.B.)'),
(28, 2, 1, 'Institut Supérieur de Gestion de OUAHIGOUYA (I.S.G.O.)'),
(29, 2, 1, 'Institut Supérieur des Filières Professionnalisantes de BOBO'),
(30, 2, 1, 'Institut Supérieur Privé de Technologies (I.S.T.)'),
(31, 2, 2, 'Université de KOUDOUGOU'),
(32, 2, 2, 'Université Libre du Burkina (U.L.B. / OUAGADOUGOU)'),
(33, 2, 2, 'Université Saint Thomas d\'Acquin'),
(34, 9, 1, 'Centre Régional Africain d\'Adm. du Travail (C.R.A.D.A.T. /YAOUNDE)'),
(35, 3, 1, 'AGITEL FORMATION'),
(36, 3, 1, 'Groupe LOKO ABIDJAN'),
(37, 3, 1, 'Université Catholique de l\'Afrique de l\'Ouest (U.C.A.O. / ABIDJAN)'),
(38, 7, 1, 'Ecole Sup. de Technologie et de Management de Dakar (E.S.T.M.)'),
(39, 7, 1, 'Groupe Ecole Supérieure de Commerce de Dakar'),
(40, 7, 1, 'Institut Africain de Management (I.A.M.)'),
(41, 7, 1, 'Institut Supérieur d\'Informatique de Dakar (I.S.I.)'),
(42, 7, 1, 'Institut Supérieur de Finance'),
(43, 7, 1, 'Institut Supérieur en Management (I.S.M. / DAKAR)'),
(44, 7, 1, 'Institut Technique de Commerce (I.T.E.C.O.M.)'),
(45, 20, 2, 'Université Senghor d\'Alexandrie'),
(46, 21, 2, 'Centre Régional de Formation aux Tech. des Levées Aerospatiaux');

-- --------------------------------------------------------

--
-- Table structure for table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `CODNIVEAU` int NOT NULL AUTO_INCREMENT,
  `LIBNIVEAU` varchar(10) NOT NULL,
  PRIMARY KEY (`CODNIVEAU`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `niveau`
--

INSERT INTO `niveau` (`CODNIVEAU`, `LIBNIVEAU`) VALUES
(1, 'Bac + 2'),
(2, 'Bac + 3'),
(3, 'Bac + 4'),
(4, 'Bac + 5');

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `CODPAYS` int NOT NULL AUTO_INCREMENT,
  `CODAPPARTENANCE` int NOT NULL,
  `CODZONE` int NOT NULL,
  `CODPERIODE` int NOT NULL,
  `LIBPAYS` varchar(40) NOT NULL,
  PRIMARY KEY (`CODPAYS`),
  KEY `FK_ASSOCIATION_18` (`CODAPPARTENANCE`),
  KEY `FK_DEVENIR` (`CODPERIODE`),
  KEY `FK_SE_TROUVER` (`CODZONE`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`CODPAYS`, `CODAPPARTENANCE`, `CODZONE`, `CODPERIODE`, `LIBPAYS`) VALUES
(1, 1, 1, 2, 'Bénin'),
(2, 1, 1, 2, 'Burkina Faso'),
(3, 1, 1, 2, 'Côte d\'Ivoire'),
(4, 1, 1, 4, 'Guinée Bissau'),
(5, 1, 1, 2, 'Mali'),
(6, 1, 1, 2, 'Niger'),
(7, 1, 1, 2, 'Sénégal'),
(8, 1, 1, 2, 'Togo'),
(9, 1, 2, 2, 'Cameroun'),
(10, 1, 2, 3, 'République Démocratique du Congo'),
(11, 1, 2, 2, 'Gabon'),
(12, 1, 2, 2, 'Guninée Equatoriale'),
(13, 1, 2, 2, 'République Centrafricaine'),
(14, 1, 2, 2, 'Tchad'),
(15, 1, 3, 2, 'Burundi'),
(16, 1, 4, 2, 'Madagascar'),
(17, 1, 3, 2, 'Rwanda'),
(18, 1, 4, 2, 'Guinée Conakry'),
(19, 1, 3, 2, 'Congo'),
(20, 2, 5, 1, 'Egypte'),
(21, 2, 5, 1, 'Nigéria');

-- --------------------------------------------------------

--
-- Table structure for table `periode`
--

DROP TABLE IF EXISTS `periode`;
CREATE TABLE IF NOT EXISTS `periode` (
  `CODPERIODE` int NOT NULL AUTO_INCREMENT,
  `LIBPERIODE` date NOT NULL,
  PRIMARY KEY (`CODPERIODE`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `periode`
--

INSERT INTO `periode` (`CODPERIODE`, `LIBPERIODE`) VALUES
(1, '2014-10-13'),
(2, '1968-01-01'),
(3, '2011-01-01'),
(4, '2005-01-01'),
(5, '2014-09-25'),
(6, '2014-10-20'),
(7, '2014-10-28'),
(8, '2014-10-29'),
(9, '2010-12-31'),
(10, '2012-12-31'),
(11, '2009-12-31'),
(12, '2014-11-26'),
(13, '2014-10-29'),
(14, '2014-11-03'),
(15, '2014-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `piecejointe`
--

DROP TABLE IF EXISTS `piecejointe`;
CREATE TABLE IF NOT EXISTS `piecejointe` (
  `CODPIEECEJOINTE` int NOT NULL AUTO_INCREMENT,
  `CODPERIODE` int NOT NULL,
  `CODINFORMATION` int NOT NULL,
  `LIBPIECEJOINTE` varchar(100) NOT NULL,
  `NOMPIECEJOINTE` varchar(100) NOT NULL,
  PRIMARY KEY (`CODPIEECEJOINTE`),
  KEY `FK_DATER` (`CODPERIODE`),
  KEY `FK_POSSEDER5` (`CODINFORMATION`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `piecejointe`
--

INSERT INTO `piecejointe` (`CODPIEECEJOINTE`, `CODPERIODE`, `CODINFORMATION`, `LIBPIECEJOINTE`, `NOMPIECEJOINTE`) VALUES
(1, 1, 1, 'download/cci/CTS_LSH.pdf', 'Lettres et Science Humaines'),
(2, 1, 1, 'download/cci/CTS_MPC.pdf', 'Mathématiques, Physique et Chimie'),
(3, 1, 1, 'download/cci/CTS_SEG.pdf', 'Sciences Economiques et de Gestion'),
(4, 1, 1, 'download/cci/CTS_STI.pdf', 'Sciences Techniques de l\'Ingénieur'),
(5, 1, 1, 'download/cci/CTS_SJP.pdf', 'Sciences Juridiques et Politiques'),
(6, 1, 1, 'download/cci/CTS_MPOMV.pdf', 'Médecine-pharmacie-odonto-médecine vétérianaire'),
(7, 1, 1, 'download/cci/CTS_STAPS.pdf', 'Sciences et tech. des act. sportives, jeunesse,spo'),
(8, 1, 1, 'download/cci/CTS_SNA.pdf', 'Sciences Naturelles et Agronomie'),
(9, 1, 1, 'download/cci/Recommandations_CCG.pdf', 'Recommandations du CCG en 2011'),
(10, 1, 1, 'download/cci/LISTPIEC_ENSEIG.doc', 'Fiche d\'inscription pour enseignants-chercheurs'),
(11, 1, 1, 'download/cci/LISPCHER.doc', 'Fiche d\'inscription pour chercheurs'),
(12, 1, 1, 'download/cci/homologation_ens.doc', 'Fiche d\'homologation pour enseignants-chercheurs'),
(13, 1, 1, 'download/cci/homologation_cher.doc', 'Fiche d\'homologation pour chercheurs'),
(14, 1, 1, 'download/cci/ATT_VERIFICATION.doc', 'Attestation de vérification'),
(15, 1, 1, 'download/cci/Formulaire_depot_electronique_these_cames.doc', 'Formulaire de dépôt électronique des thèses (oblig'),
(16, 1, 2, 'download/agregation/Critere_recevabilie_medecine.pdf', 'Critères pour le concours d\'agréation de médecine'),
(17, 1, 2, 'download/agregation/Fiche_de_Candidature.doc', 'Fiche de candidature (médecine)'),
(18, 1, 2, 'download/agregation/Decision_Conseil_Ministres.pdf', 'Décision 00/2006 du Conseil des Ministres sur l\'ancienneté'),
(19, 1, 2, 'download/agregation/Fiche_de_Candidature.doc', 'Dossier d\'inscription'),
(20, 1, 2, 'download/agregation/ConditionsSJPEG.doc', 'Conditions d\'inscription au Concours SJPEG'),
(21, 1, 3, 'download/pred/Lancement_pred_2014.pdf', 'Note de lancement du 29ème colloque du PRED.'),
(22, 1, 3, 'download/pred/diplomes_colloque_special_niamey.pdf', 'Tableau synoptique d\'équivalence des diplômes étra'),
(23, 1, 3, 'download/pred/Referentiel_LMD.pdf', 'Référentiel au format LMD pour le PRED'),
(24, 1, 3, 'download/pred/Decision_Conseil_Ministres.pdf', 'Décision du CM sur la participation des IES aux fr'),
(25, 1, 3, 'download/pred/Fiche_renseignement_equiv_2014.doc', 'Fiche de renseignement(formulaire à remplir)'),
(26, 1, 3, 'download/pred/GuideConstitutionDossier.pdf', 'Guide de constitution du dossier'),
(27, 1, 3, 'download/pred/Piece_a_fournir.pdf', 'Pièces à fournir'),
(28, 1, 9, 'download/planstrategique/Plan_strategique.pdf', 'Plan stratégique du CAMES'),
(29, 1, 14, 'download/aq/CDC_CAMES_UniversitesPrives.pdf', 'Cahier de charges pour la création d\'Universités p'),
(30, 1, 14, 'download/aq/Decision011_CM_2012.pdf', 'Décision n°011/2012 portant sur la création de l\'A'),
(31, 1, 14, 'download/aq/DecisionCM_CDC.pdf', 'Décision n°010/2012 portant adoption du cahier de charges pour la création d\'universités privées'),
(32, 1, 14, 'download/aq/DeclarationAQ_Bangui.pdf', 'Déclaration de Bangui sur l\'A.Q. dans l\'enseignement supérieur'),
(33, 1, 14, 'download/aq/Resolution0406CAMES.pdf', 'Résolution sur le passage au LMD'),
(34, 1, 15, 'download/aq/EtatLieuxAQ_EUMOA.pdf', 'Etat des lieux de l\'AQ (UEMOA)'),
(35, 1, 16, 'download/aq/Referentiels_Qualite.pdf', 'Les référentiels qualité du CAMES'),
(36, 5, 18, 'download/recrutement/Poste Informaticien CAMES.pdf', 'Recrutementd\'un informaticien'),
(37, 1, 19, 'download/stat/Bilan_CCI_1978_2012.pdf', 'Bilan CCI de 1978 à 2012'),
(38, 1, 39, 'download/stat/CCI2014.pdf', 'CCI 2014: Les résultats généraux ');

-- --------------------------------------------------------

--
-- Table structure for table `rubrique`
--

DROP TABLE IF EXISTS `rubrique`;
CREATE TABLE IF NOT EXISTS `rubrique` (
  `CODRUBRIQUE` int NOT NULL AUTO_INCREMENT,
  `LIBRUBRIQUE` varchar(20) NOT NULL,
  PRIMARY KEY (`CODRUBRIQUE`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `rubrique`
--

INSERT INTO `rubrique` (`CODRUBRIQUE`, `LIBRUBRIQUE`) VALUES
(1, 'ACCUEIL'),
(2, 'ECAMES'),
(3, 'C.I.D.'),
(4, 'ASSURANCE QUALITE'),
(5, 'STATISTIQUES'),
(6, 'CONTACTS'),
(7, 'OPPORTUNITES'),
(8, 'PIED DE PAGE');

-- --------------------------------------------------------

--
-- Table structure for table `siteweb`
--

DROP TABLE IF EXISTS `siteweb`;
CREATE TABLE IF NOT EXISTS `siteweb` (
  `CODSITEWEB` int NOT NULL AUTO_INCREMENT,
  `CODPAYS` int DEFAULT NULL,
  `LIBSITEWEB` varchar(50) NOT NULL,
  PRIMARY KEY (`CODSITEWEB`),
  KEY `FK_POSSEDER` (`CODPAYS`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `siteweb`
--

INSERT INTO `siteweb` (`CODSITEWEB`, `CODPAYS`, `LIBSITEWEB`) VALUES
(1, 1, 'http://www.gouv.bj'),
(2, 2, 'http://presidence.bf'),
(3, 3, 'http://gouv.ci'),
(4, 4, 'http://www.guineabissau-government.com'),
(5, 5, 'http://www.gouv.ml'),
(6, 6, 'http://www.gouv.ne'),
(7, 7, 'http://www.gouv.sn'),
(8, 8, 'http://www.gouv.tg'),
(9, 9, 'http://www.spm.gov.cm'),
(10, 10, 'http://www.presidence.cg/accueil'),
(11, 11, 'http://www.gouvernement.ga'),
(12, 12, 'http://www.guineacuatorialpress.com'),
(13, 13, 'http://www.primature-rca.org'),
(14, 14, 'http://www.gouvernementdutchad.org'),
(15, 15, 'http://burundi.gov.bi'),
(16, 16, 'http://www.madagascar.gov.mg'),
(17, 17, 'http://www.gov.rw'),
(18, 18, 'http://www.guineeconakry.info'),
(19, 19, 'http://www.kinshasa.cd');

-- --------------------------------------------------------

--
-- Table structure for table `sousrubrique`
--

DROP TABLE IF EXISTS `sousrubrique`;
CREATE TABLE IF NOT EXISTS `sousrubrique` (
  `CODSOUSRUBRIQUE` int NOT NULL AUTO_INCREMENT,
  `CODRUBRIQUE` int NOT NULL,
  `LIBSOUSRUBRIQUE` varchar(50) NOT NULL,
  PRIMARY KEY (`CODSOUSRUBRIQUE`),
  KEY `FK_POSSEDER7` (`CODRUBRIQUE`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sousrubrique`
--

INSERT INTO `sousrubrique` (`CODSOUSRUBRIQUE`, `CODRUBRIQUE`, `LIBSOUSRUBRIQUE`) VALUES
(1, 1, 'NOS PROGRAMMES'),
(2, 1, 'PAYS MEMBRES'),
(3, 1, 'SECRETARIAT GENERAL'),
(4, 1, 'DIPLOMES RECONNUS'),
(5, 3, 'PRESENTATION DU C.I.D.'),
(6, 4, 'PRESENTATION DE L\'ASSURANCE QUALITE'),
(7, 4, 'REFERENTIELS'),
(8, 4, 'EVALUATION ET ACCREDITATION'),
(9, 7, 'RECRUTEMENTS'),
(10, 6, 'APPELS D\'OFFRE'),
(11, 6, 'FORMATIONS'),
(12, 5, 'STATISTIQUES'),
(13, 1, 'ACTUALITES'),
(14, 1, 'EVENEMENTS'),
(15, 8, 'AGENDA'),
(16, 8, 'GALERIE'),
(17, 1, 'SLIDE'),
(18, 1, 'ACTUALITES');

-- --------------------------------------------------------

--
-- Table structure for table `specialite`
--

DROP TABLE IF EXISTS `specialite`;
CREATE TABLE IF NOT EXISTS `specialite` (
  `CODSPECIALITE` int NOT NULL AUTO_INCREMENT,
  `LIBSPECIALITE` varchar(100) NOT NULL,
  PRIMARY KEY (`CODSPECIALITE`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `specialite`
--

INSERT INTO `specialite` (`CODSPECIALITE`, `LIBSPECIALITE`) VALUES
(1, 'Génie Civil'),
(2, 'Banque-Finance-Assurance'),
(3, 'Journalisme et Audiovisuel'),
(4, 'Réalisation Audiovisuel'),
(5, 'Audiovisuelle'),
(6, 'Sciences de Gestion'),
(7, 'Droit'),
(8, 'Gestion de Projets'),
(9, 'Management de l\'Environnement et du Développement Durable'),
(10, 'Maintenance Industrielle'),
(11, 'Réseaux Informatiques et Télécommunications'),
(12, 'Finance Comptabilité'),
(13, 'Gestion et Marketing'),
(14, 'Gestion des Ressources Humaines'),
(16, 'Communication d\'Entreprise'),
(17, 'Gestion Commerciale'),
(18, 'Marketing et Management'),
(22, 'Comptabilité, Contrôle et Audit'),
(25, 'Comptabilité et Gestion des Entreprises'),
(26, 'Communication des Entreprises'),
(27, 'Transport et Logistique'),
(28, 'Sciences de l\'Ingénieur'),
(31, 'Master Spécialisé en Comptabilité et Finance'),
(33, 'Génie Informatique'),
(35, 'Sciences et Techniques de l\'Information et de la Communication'),
(36, 'Sciences Juridiques'),
(37, 'Développement Culturel'),
(38, 'Qualité, Sécurité Environnementale et Alimentaire'),
(39, 'Administration et Gestion des Ressources Humaines'),
(40, 'Gestion des Entreprises'),
(41, 'Management Internationale'),
(42, 'Marketing et Publicité'),
(43, 'Fiscalité'),
(44, 'Administration des Entreprises'),
(45, 'Agronomie'),
(46, 'Biotechnologie'),
(47, 'Génie Logiciel'),
(48, 'Psychologie'),
(49, 'Géographie'),
(50, 'Lettres Modernes'),
(51, 'Secrétariat de Direction'),
(52, 'Agro-alimentaire'),
(53, 'Philosophie'),
(54, 'Sciences Politiques'),
(55, 'Production et Gestion de l\'Information Géographique'),
(56, 'Télé-informatique'),
(57, 'Informatique de Gestion'),
(58, 'Gestion des Industries Culturelles'),
(59, 'Environnement');

-- --------------------------------------------------------

--
-- Table structure for table `statut`
--

DROP TABLE IF EXISTS `statut`;
CREATE TABLE IF NOT EXISTS `statut` (
  `CODSTATUT` int NOT NULL AUTO_INCREMENT,
  `LIBSTATUT` varchar(10) NOT NULL,
  PRIMARY KEY (`CODSTATUT`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `statut`
--

INSERT INTO `statut` (`CODSTATUT`, `LIBSTATUT`) VALUES
(1, 'Ancien'),
(2, 'Nouveau');

-- --------------------------------------------------------

--
-- Table structure for table `typeinstitution`
--

DROP TABLE IF EXISTS `typeinstitution`;
CREATE TABLE IF NOT EXISTS `typeinstitution` (
  `CODTYPEINSTITUTION` int NOT NULL AUTO_INCREMENT,
  `LIBTYPEINSTITUTION` varchar(10) NOT NULL,
  PRIMARY KEY (`CODTYPEINSTITUTION`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `typeinstitution`
--

INSERT INTO `typeinstitution` (`CODTYPEINSTITUTION`, `LIBTYPEINSTITUTION`) VALUES
(1, 'Privée'),
(2, 'Publique');

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

DROP TABLE IF EXISTS `zone`;
CREATE TABLE IF NOT EXISTS `zone` (
  `CODZONE` int NOT NULL AUTO_INCREMENT,
  `LIBZONE` varchar(60) NOT NULL,
  PRIMARY KEY (`CODZONE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`CODZONE`, `LIBZONE`) VALUES
(1, 'Union Economique et Monétaire Ouest Africaine'),
(2, 'Communauté Economique et Monétaire de l\'Afrique Centrale'),
(3, 'Communauté Economique des Pays des Grands Lacs'),
(4, 'Autres PMC'),
(5, 'Autres pays hors cames');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diplome`
--
ALTER TABLE `diplome`
  ADD CONSTRAINT `FK_APPARTENIR1` FOREIGN KEY (`CODSPECIALITE`) REFERENCES `specialite` (`CODSPECIALITE`),
  ADD CONSTRAINT `FK_AVOIR` FOREIGN KEY (`CODNIVEAU`) REFERENCES `niveau` (`CODNIVEAU`),
  ADD CONSTRAINT `FK_POSSEDER6` FOREIGN KEY (`CODINSTITUTION`) REFERENCES `institution` (`CODINSTITUTION`),
  ADD CONSTRAINT `FK_RECONNAITRE` FOREIGN KEY (`CODPERIODE`) REFERENCES `periode` (`CODPERIODE`);

--
-- Constraints for table `information`
--
ALTER TABLE `information`
  ADD CONSTRAINT `FK_APPARTENIR` FOREIGN KEY (`CODSOUSRUBRIQUE`) REFERENCES `sousrubrique` (`CODSOUSRUBRIQUE`),
  ADD CONSTRAINT `FK_ENREGISTRER` FOREIGN KEY (`PER_CODPERIODE2`) REFERENCES `periode` (`CODPERIODE`),
  ADD CONSTRAINT `FK_ETRE` FOREIGN KEY (`CODSTATUT`) REFERENCES `statut` (`CODSTATUT`),
  ADD CONSTRAINT `FK_FERMER` FOREIGN KEY (`CODPERIODE`) REFERENCES `periode` (`CODPERIODE`),
  ADD CONSTRAINT `FK_OUVRIR` FOREIGN KEY (`PER_CODPERIODE`) REFERENCES `periode` (`CODPERIODE`);

--
-- Constraints for table `institution`
--
ALTER TABLE `institution`
  ADD CONSTRAINT `FK_ETRE1` FOREIGN KEY (`CODTYPEINSTITUTION`) REFERENCES `typeinstitution` (`CODTYPEINSTITUTION`),
  ADD CONSTRAINT `FK_EXISTER` FOREIGN KEY (`CODPAYS`) REFERENCES `pays` (`CODPAYS`);

--
-- Constraints for table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `FK_ASSOCIATION_18` FOREIGN KEY (`CODAPPARTENANCE`) REFERENCES `appartenance` (`CODAPPARTENANCE`),
  ADD CONSTRAINT `FK_DEVENIR` FOREIGN KEY (`CODPERIODE`) REFERENCES `periode` (`CODPERIODE`),
  ADD CONSTRAINT `FK_SE_TROUVER` FOREIGN KEY (`CODZONE`) REFERENCES `zone` (`CODZONE`);

--
-- Constraints for table `piecejointe`
--
ALTER TABLE `piecejointe`
  ADD CONSTRAINT `FK_DATER` FOREIGN KEY (`CODPERIODE`) REFERENCES `periode` (`CODPERIODE`),
  ADD CONSTRAINT `FK_POSSEDER5` FOREIGN KEY (`CODINFORMATION`) REFERENCES `information` (`CODINFORMATION`);

--
-- Constraints for table `siteweb`
--
ALTER TABLE `siteweb`
  ADD CONSTRAINT `FK_POSSEDER` FOREIGN KEY (`CODPAYS`) REFERENCES `pays` (`CODPAYS`);

--
-- Constraints for table `sousrubrique`
--
ALTER TABLE `sousrubrique`
  ADD CONSTRAINT `FK_POSSEDER7` FOREIGN KEY (`CODRUBRIQUE`) REFERENCES `rubrique` (`CODRUBRIQUE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
