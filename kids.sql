-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 30 sep. 2023 à 18:52
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kids`
--

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_pdf` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`course_id`, `theme_id`, `course_name`, `course_pdf`, `picture`) VALUES
(10, 1, 'Expression orale', 'pdfs/Tout le bonheur/Expression orale.pdf', 'assets/back/EO.jpg'),
(11, 1, 'Lecture', 'pdfs/Tout le bonheur/Lecture.pdf', 'assets/back/Lecture.jpg'),
(12, 1, 'Vocabulaire thématique', 'pdfs/Tout le bonheur/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(13, 1, 'Grammaire', 'pdfs/Tout le bonheur/Grammaire.pdf', 'assets/back/Gra.jpg'),
(14, 1, 'Conjugaison', 'pdfs/Tout le bonheur/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(15, 1, 'Orthographe', 'pdfs/Tout le bonheur/Orthographe.pdf', 'assets/back/Orth.jpg'),
(16, 1, 'Vocabulaire', 'pdfs/Tout le bonheur/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(17, 1, 'Poésie', 'pdfs/Tout le bonheur/Poésie.pdf', 'assets/back/Poesie.jpg'),
(18, 1, 'Expression écrite', 'pdfs/Tout le bonheur/Expression écrite.pdf', 'assets/back/EE.jpg'),
(19, 2, 'Expression orale', 'pdfs/Les contes detournes/Expression orale.pdf', 'assets/back/EO.jpg'),
(20, 2, 'Lecture', 'pdfs/Les contes detournes/Lecture.pdf', 'assets/back/Lecture.jpg'),
(21, 2, 'Vocabulaire thématique', 'pdfs/Les contes detournes/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(22, 2, 'Grammaire', 'pdfs/Les contes detournes/Grammaire.pdf', 'assets/back/Gra.jpg'),
(23, 2, 'Conjugaison', 'pdfs/Les contes detournes/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(24, 2, 'Orthographe', 'pdfs/Les contes detournes/Orthographe.pdf', 'assets/back/Orth.jpg'),
(25, 2, 'Vocabulaire', 'pdfs/Les contes detournes/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(26, 2, 'Poésie', 'pdfs/Les contes detournes/Poésie.pdf', 'assets/back/Poesie.jpg'),
(27, 2, 'Expression écrite', 'pdfs/Les contes detournes/Expression écrite.pdf', 'assets/back/EE.jpg'),
(28, 3, 'Expression orale', 'pdfs/Notre monde en question/Expression orale.pdf', 'assets/back/EO.jpg'),
(29, 3, 'Lecture', 'pdfs/Notre monde en question/Lecture.pdf', 'assets/back/Lecture.jpg'),
(30, 3, 'Vocabulaire thématique', 'pdfs/Notre monde en question/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(31, 3, 'Grammaire', 'pdfs/Notre monde en question/Grammaire.pdf', 'assets/back/Gra.jpg'),
(32, 3, 'Conjugaison', 'pdfs/Notre monde en question/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(33, 3, 'Orthographe', 'pdfs/Notre monde en question/Orthographe.pdf', 'assets/back/Orth.jpg'),
(34, 3, 'Vocabulaire', 'pdfs/Notre monde en question/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(35, 3, 'Poésie', 'pdfs/Notre monde en question/Poésie.pdf', 'assets/back/Poesie.jpg'),
(36, 3, 'Expression écrite', 'pdfs/Notre monde en question/Expression écrite.pdf', 'assets/back/EE.jpg'),
(37, 4, 'Expression orale', 'pdfs/Les romans policiers/Expression orale.pdf', 'assets/back/EO.jpg'),
(38, 4, 'Lecture', 'pdfs/Les romans policiers/Lecture.pdf', 'assets/back/Lecture.jpg'),
(39, 4, 'Vocabulaire thématique', 'pdfs/Les romans policiers/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(40, 4, 'Grammaire', 'pdfs/Les romans policiers/Grammaire.pdf', 'assets/back/Gra.jpg'),
(41, 4, 'Conjugaison', 'pdfs/Les romans policiers/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(42, 4, 'Orthographe', 'pdfs/Les romans policiers/Orthographe.pdf', 'assets/back/Orth.jpg'),
(43, 4, 'Vocabulaire', 'pdfs/Les romans policiers/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(44, 4, 'Poésie', 'pdfs/Les romans policiers/Poésie.pdf', 'assets/back/Poesie.jpg'),
(45, 4, 'Expression écrite', 'pdfs/Les romans policiers/Expression écrite.pdf', 'assets/back/EE.jpg'),
(46, 5, 'Expression orale', 'pdfs/L\'enfance en BD/Expression orale.pdf', 'assets/back/EO.jpg'),
(47, 5, 'Lecture', 'pdfs/L\'enfance en BD/Lecture.pdf', 'assets/back/Lecture.jpg'),
(48, 5, 'Vocabulaire thématique', 'pdfs/L\'enfance en BD/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(49, 5, 'Grammaire', 'pdfs/L\'enfance en BD/Grammaire.pdf', 'assets/back/Gra.jpg'),
(50, 5, 'Conjugaison', 'pdfs/L\'enfance en BD/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(51, 5, 'Orthographe', 'pdfs/L\'enfance en BD/Orthographe.pdf', 'assets/back/Orth.jpg'),
(52, 5, 'Vocabulaire', 'pdfs/L\'enfance en BD/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(53, 5, 'Poésie', 'pdfs/L\'enfance en BD/Poésie.pdf', 'assets/back/Poesie.jpg'),
(54, 5, 'Expression écrite', 'pdfs/L\'enfance en BD/Expression écrite.pdf', 'assets/back/EE.jpg'),
(55, 6, 'Expression orale', 'pdfs/Des journaux intimes/Expression orale.pdf', 'assets/back/EO.jpg'),
(56, 6, 'Lecture', 'pdfs/Des journaux intimes/Lecture.pdf', 'assets/back/Lecture.jpg'),
(57, 6, 'Vocabulaire thématique', 'pdfs/Des journaux intimes/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(58, 6, 'Grammaire', 'pdfs/Des journaux intimes/Grammaire.pdf', 'assets/back/Gra.jpg'),
(59, 6, 'Conjugaison', 'pdfs/Des journaux intimes/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(60, 6, 'Orthographe', 'pdfs/Des journaux intimes/Orthographe.pdf', 'assets/back/Orth.jpg'),
(61, 6, 'Vocabulaire', 'pdfs/Des journaux intimes/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(62, 6, 'Poésie', 'pdfs/Des journaux intimes/Poésie.pdf', 'assets/back/Poesie.jpg'),
(63, 6, 'Expression écrite', 'pdfs/Des journaux intimes/Expression écrite.pdf', 'assets/back/EE.jpg'),
(70, 7, 'eval diagnostique', 'pdfs/evaluations/1.pdf', 'assets/back/1.jpg'),
(71, 7, 'ev 1 s1', 'pdfs/evaluations/2.pdf', 'assets/back/2.jpg'),
(72, 7, 'ev 2 s1', 'pdfs/evaluations/3.pdf', 'assets/back/3.jpg'),
(73, 7, 'contrôle 1 s1', 'pdfs/evaluations/4.pdf', 'assets/back/4.jpg'),
(74, 7, 'contrôle 2 s1', 'pdfs/evaluations/5.pdf', 'assets/back/5.jpg'),
(75, 7, 'ev 1 s2', 'pdfs/evaluations/6.pdf', 'assets/back/6.jpg'),
(76, 7, 'ev 2 s2', 'pdfs/evaluations/7.pdf', 'assets/back/7.jpg'),
(77, 7, 'controle 1 s2', 'pdfs/evaluations/8.pdf', 'assets/back/8.jpg'),
(78, 7, 'controle 2 s2', 'pdfs/evaluations/9.pdf', 'assets/back/9.jpg'),
(79, 8, '35 kilos d\'espoir', 'pdfs/roman/1.pdf', 'assets/back/espoir.png'),
(80, 8, 'La villa d\'en face', 'pdfs/roman/2.pdf', 'assets/back/villa.png'),
(81, 9, 'Production de l\'écrit', 'pdfs/PE/production de l\'ecrit.pdf', NULL),
(82, 100, 'Cahier d\'exercices', 'pdfs/Cahier_D\'exercices/1.pdf', NULL),
(83, 101, 'Cahier d\'exercices', 'pdfs/Cahier_D\'exercices/2.pdf', NULL),
(84, 10, 'Expression orale', 'pdfs/mes _amis/Expression orale.pdf', 'assets/back/EO.jpg'),
(85, 10, 'Lecture', 'pdfs/mes _amis/Lecture.pdf', 'assets/back/Lecture.jpg'),
(86, 10, 'Vocabulaire thématique', 'pdfs/mes _amis/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(87, 10, 'Grammaire', 'pdfs/mes _amis/Grammaire.pdf', 'assets/back/Gra.jpg'),
(88, 10, 'Conjugaison', 'pdfs/mes _amis/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(89, 10, 'Orthographe', 'pdfs/mes _amis/Orthographe.pdf', 'assets/back/Orth.jpg'),
(90, 10, 'Vocabulaire', 'pdfs/mes _amis/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(91, 10, 'Poésie', 'pdfs/mes _amis/Poésie.pdf', 'assets/back/Poesie.jpg'),
(92, 10, 'Expression écrite', 'pdfs/mes _amis/Expression écrite.pdf', 'assets/back/EE.jpg'),
(93, 11, 'Expression orale', 'pdfs/releve_le_defi/Expression orale.pdf', 'assets/back/EO.jpg'),
(94, 11, 'Lecture', 'pdfs/releve_le_defi/Lecture.pdf', 'assets/back/Lecture.jpg'),
(95, 11, 'Vocabulaire thématique', 'pdfs/releve_le_defi/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(96, 11, 'Grammaire', 'pdfs/releve_le_defi/Grammaire.pdf', 'assets/back/Gra.jpg'),
(97, 11, 'Conjugaison', 'pdfs/releve_le_defi/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(98, 11, 'Orthographe', 'pdfs/releve_le_defi/Orthographe.pdf', 'assets/back/Orth.jpg'),
(99, 11, 'Vocabulaire', 'pdfs/releve_le_defi/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(100, 11, 'Poésie', 'pdfs/releve_le_defi/Poésie.pdf', 'assets/back/Poesie.jpg'),
(101, 11, 'Expression écrite', 'pdfs/releve_le_defi/Expression écrite.pdf', 'assets/back/EE.jpg'),
(102, 12, 'Expression orale', 'pdfs/Nos_loisirs/Expression orale.pdf', 'assets/back/EO.jpg'),
(103, 12, 'Lecture', 'pdfs/Nos_loisirs/Lecture.pdf', 'assets/back/Lecture.jpg'),
(104, 12, 'Vocabulaire thématique', 'pdfs/Nos_loisirs/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(105, 12, 'Grammaire', 'pdfs/Nos_loisirs/Grammaire.pdf', 'assets/back/Gra.jpg'),
(106, 12, 'Conjugaison', 'pdfs/Nos_loisirs/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(107, 12, 'Orthographe', 'pdfs/Nos_loisirs/Orthographe.pdf', 'assets/back/Orth.jpg'),
(108, 12, 'Vocabulaire', 'pdfs/Nos_loisirs/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(109, 12, 'Poésie', 'pdfs/Nos_loisirs/Poésie.pdf', 'assets/back/Poesie.jpg'),
(110, 12, 'Expression écrite', 'pdfs/Nos_loisirs/Expression écrite.pdf', 'assets/back/EE.jpg'),
(111, 13, 'Expression orale', 'pdfs/histoires_qui_font_peur/Expression orale.pdf', 'assets/back/EO.jpg'),
(113, 13, 'Lecture', 'pdfs/histoires_qui_font_peur/Lecture.pdf', 'assets/back/Lecture.jpg'),
(114, 13, 'Vocabulaire thématique', 'pdfs/histoires_qui_font_peur/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(115, 13, 'Grammaire', 'pdfs/histoires_qui_font_peur/Grammaire.pdf', 'assets/back/Gra.jpg'),
(116, 13, 'Conjugaison', 'pdfs/histoires_qui_font_peur/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(117, 13, 'Orthographe', 'pdfs/histoires_qui_font_peur/Orthographe.pdf', 'assets/back/Orth.jpg'),
(118, 13, 'Vocabulaire', 'pdfs/histoires_qui_font_peur/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(119, 13, 'Poésie', 'pdfs/histoires_qui_font_peur/Poésie.pdf', 'assets/back/Poesie.jpg'),
(120, 13, 'Expression écrite', 'pdfs/histoires_qui_font_peur/Expression écrite.pdf', 'assets/back/EE.jpg'),
(121, 14, 'Expression orale', 'pdfs/rêve_denfance/Expression orale.pdf', 'assets/back/EO.jpg'),
(122, 14, 'Lecture', 'pdfs/rêve_denfance/Lecture.pdf', 'assets/back/Lecture.jpg'),
(123, 14, 'Vocabulaire thématique', 'pdfs/rêve_denfance/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(124, 14, 'Grammaire', 'pdfs/rêve_denfance/Grammaire.pdf', 'assets/back/Gra.jpg'),
(125, 14, 'Conjugaison', 'pdfs/rêve_denfance/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(126, 14, 'Orthographe', 'pdfs/rêve_denfance/Orthographe.pdf', 'assets/back/Orth.jpg'),
(127, 14, 'Vocabulaire', 'pdfs/rêve_denfance/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(128, 14, 'Poésie', 'pdfs/rêve_denfance/Poésie.pdf', 'assets/back/Poesie.jpg'),
(129, 14, 'Expression écrite', 'pdfs/rêve_denfance/Expression écrite.pdf', 'assets/back/EE.jpg'),
(130, 15, 'Expression orale', 'pdfs/rêve_denfance/Expression orale.pdf', 'assets/back/EO.jpg'),
(131, 15, 'Lecture', 'pdfs/découverte_du_monde/Lecture.pdf', 'assets/back/Lecture.jpg'),
(132, 15, 'Vocabulaire thématique', 'pdfs/découverte_du_monde/Vocabulaire thématique.pdf', 'assets/back/VT.jpg'),
(133, 15, 'Grammaire', 'pdfs/découverte_du_monde/Grammaire.pdf', 'assets/back/Gra.jpg'),
(134, 15, 'Conjugaison', 'pdfs/découverte_du_monde/Conjugaison.pdf', 'assets/back/Conj.jpg'),
(135, 15, 'Orthographe', 'pdfs/découverte_du_monde/Orthographe.pdf', 'assets/back/Orth.jpg'),
(136, 15, 'Vocabulaire', 'pdfs/découverte_du_monde/Vocabulaire.pdf', 'assets/back/Vo.jpg'),
(137, 15, 'Poésie', 'pdfs/découverte_du_monde/Poésie.pdf', 'assets/back/Poesie.jpg'),
(138, 15, 'Expression écrite', 'pdfs/découverte_du_monde/Expression écrite.pdf', 'assets/back/EE.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `exercises`
--

CREATE TABLE `exercises` (
  `exercise_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `exercise_pdf` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `exercises`
--

INSERT INTO `exercises` (`exercise_id`, `course_id`, `exercise_pdf`, `picture`, `theme_id`) VALUES
(2, NULL, 'pdfs/exercices/gra/1.pdf', 'assets/back/EGra.jpg', 1),
(3, NULL, 'pdfs/exercices/gra/2.pdf', 'assets/back/EGra.jpg', 2),
(4, NULL, 'pdfs/exercices/gra/3.pdf', 'assets/back/EGra.jpg', 3),
(5, NULL, 'pdfs/exercices/gra/4.pdf', 'assets/back/EGra.jpg', 4),
(6, NULL, 'pdfs/exercices/gra/5.pdf', 'assets/back/EGra.jpg', 5),
(7, NULL, 'pdfs/exercices/gra/6.pdf', 'assets/back/EGra.jpg', 6),
(8, NULL, 'pdfs/exercices/conj/1.pdf', 'assets/back/EConj.jpg', 1),
(9, NULL, 'pdfs/exercices/conj/2.pdf', 'assets/back/EConj.jpg', 2),
(10, NULL, 'pdfs/exercices/conj/3.pdf', 'assets/back/EConj.jpg', 3),
(11, NULL, 'pdfs/exercices/conj/4.pdf', 'assets/back/EConj.jpg', 4),
(12, NULL, 'pdfs/exercices/conj/5.pdf', 'assets/back/EConj.jpg', 5),
(13, NULL, 'pdfs/exercices/conj/6.pdf', 'assets/back/EConj.jpg', 6),
(14, NULL, 'pdfs/exercices/orth/1.pdf', 'assets/back/EOrth.jpg', 1),
(15, NULL, 'pdfs/exercices/orth/2.pdf', 'assets/back/EOrth.jpg', 2),
(16, NULL, 'pdfs/exercices/orth/3.pdf', 'assets/back/EOrth.jpg', 3),
(17, NULL, 'pdfs/exercices/orth/4.pdf', 'assets/back/EOrth.jpg', 4),
(18, NULL, 'pdfs/exercices/orth/5.pdf', 'assets/back/EOrth.jpg', 5),
(19, NULL, 'pdfs/exercices/orth/6.pdf', 'assets/back/EOrth.jpg', 6),
(20, NULL, 'pdfs/exercices/voc/1.pdf', 'assets/back/EVo.jpg', 1),
(21, NULL, 'pdfs/exercices/voc/2.pdf', 'assets/back/EVo.jpg', 2),
(22, NULL, 'pdfs/exercices/voc/3.pdf', 'assets/back/EVo.jpg', 3),
(23, NULL, 'pdfs/exercices/voc/4.pdf', 'assets/back/EVo.jpg', 4),
(24, NULL, 'pdfs/exercices/voc/5.pdf', 'assets/back/EVo.jpg', 5),
(25, NULL, 'pdfs/exercices/voc/6.pdf', 'assets/back/EVo.jpg', 6);

-- --------------------------------------------------------

--
-- Structure de la table `readingaudio`
--

CREATE TABLE `readingaudio` (
  `reading_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `reading_audio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `themes`
--

CREATE TABLE `themes` (
  `theme_id` int(11) NOT NULL,
  `theme_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `themes`
--

INSERT INTO `themes` (`theme_id`, `theme_name`) VALUES
(1, 'Tout le bonheur'),
(2, 'Les contes detournes'),
(3, 'Notre monde en question'),
(4, 'Les romans policiers'),
(5, 'L\'enfance en BD'),
(6, 'Des journaux intimes'),
(7, 'Evaluation'),
(8, 'Lecturesuivie'),
(9, 'Production de l\'écrit'),
(10, 'Mes amis'),
(11, 'releve le defi\r\n'),
(12, 'Nos loisirs'),
(13, 'Les histoires qui font peur'),
(14, 'Réaliser mon rêve d\'enfant'),
(15, 'À la découverte du monde !'),
(16, 'Poésie'),
(100, 'Cahier d\'exercices'),
(101, 'Cahier d\'exercices');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`) VALUES
(1, 'Fatimaezzahra', 'jinane2121', NULL),
(2, 'wadi@gmail.com', '$2y$10$D82ZQNLEDJfPwdHKcty.VOFKKpruVZbw.D.XhFKOkh3xvJT8LEgq2', 'wadi@gmail.com'),
(3, 'wadi', '$2y$10$/VPWC8qZ4Yhu1Xmx72VhGe66O15moF.t8/Tpkagti8U9/yySlgrpK', 'jinaneboulouk@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `writingcourses`
--

CREATE TABLE `writingcourses` (
  `id` int(11) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_pdf` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `writingcourses`
--

INSERT INTO `writingcourses` (`id`, `theme_id`, `course_name`, `course_pdf`, `picture`) VALUES
(1, 2, 'Le groupe nominal : Le nom \net l’adjectif qualificatif . ', 'pdfs/Les contes detournes/grammaire/3.pdf', 'assets/back/Gra.jpg'),
(2, 2, 'Les déterminants', 'pdfs/Les contes detournes/grammaire/4.pdf', 'assets/back/Gra.jpg'),
(3, 1, 'Les types de phrases', 'pdfs/Tout le bonheur/grammaire/1.pdf', 'assets/back/Gra.jpg'),
(4, 1, 'Les formes de la phrase', 'pdfs/Tout le bonheur/grammaire/2.pdf', 'assets/back/Gra.jpg'),
(5, 3, 'Le sujet et les P.P', 'pdfs/Notre monde en question/grammaire/5.pdf', 'assets/back/Gra.jpg'),
(6, 3, 'C.N', 'pdfs/Notre monde en question/grammaire/6.pdf', 'assets/back/Gra.jpg'),
(7, 4, 'Les adverbes', 'pdfs/Les romans policiers/grammaire/7.pdf', 'assets/back/Gra.jpg'),
(8, 4, 'Les compléments circonstanciels', 'pdfs/Les romans policiers/grammaire/8.pdf', 'assets/back/Gra.jpg'),
(9, 5, 'La phrase simple et complexe', 'pdfs/L\'enfance en BD/grammaire/9.pdf', 'assets/back/Gra.jpg'),
(10, 5, 'COD et COI', 'pdfs/L\'enfance en BD/grammaire/10.pdf', 'assets/back/Gra.jpg'),
(11, 6, 'La nature et la fonction des mots', 'pdfs/Des journaux intimes/grammaire/11.pdf', 'assets/back/Gra.jpg'),
(12, 1, 'L’infinitif et les groupes des verbes', 'pdfs/Tout le bonheur/Conjugaison/1.pdf', 'assets/back/Conj.jpg'),
(13, 1, 'Les principaux temps de l’indicatif. ', 'pdfs/Tout le bonheur/Conjugaison/2.pdf', 'assets/back/Conj.jpg'),
(14, 1, 'La formation des mots', 'pdfs/Tout le bonheur/Vocabulaire/1.pdf', 'assets/back/Vo.jpg'),
(15, 1, 'Comment utiliser le dictionnaire ?', 'pdfs/Tout le bonheur/Vocabulaire/2.pdf', 'assets/back/Vo.jpg'),
(16, 1, 'Quels sons pour les lettres c et g?', 'pdfs/Tout le bonheur/Orthographe/1.pdf', 'assets/back/Orth.jpg'),
(17, 1, 'Les sons [ã], [ɔ]̃et [ɛ̃]', 'pdfs/Tout le bonheur/Orthographe/2.pdf', 'assets/back/Orth.jpg'),
(18, 2, 'Le présent de l’indicatif des verbes être,\n avoir et aller', 'pdfs/Les contes detournes/Conjugaison/3.pdf', 'assets/back/Conj.jpg'),
(19, 2, 'Le présent de l’indicatif des verbes usuels ', 'pdfs/Les contes detournes/Conjugaison/4.pdf', 'assets/back/Conj.jpg'),
(20, 2, 'Le rôle de la lettre « s ».', 'pdfs/Les contes detournes/Orthographe/3.pdf', 'assets/back/Orth.jpg'),
(21, 2, 'Le rôle de la lettre « t »', 'pdfs/Les contes detournes/Orthographe/4.pdf', 'assets/back/Orth.jpg'),
(22, 2, 'Le mot et son contexte', 'pdfs/Les contes detournes/Vocabulaire/3.pdf', 'assets/back/Vo.jpg'),
(23, 2, 'Les synonymes et les antonymes.', 'pdfs/Les contes detournes/Vocabulaire/4.pdf', 'assets/back/Vo.jpg'),
(24, 3, 'Le passé composé', 'pdfs/Notre monde en question/Conjugaison/5.pdf', 'assets/back/Conj.jpg'),
(26, 3, 'Accord du sujet et du verbe', 'pdfs/Notre monde en question/Orthographe/5.pdf', 'assets/back/Orth.jpg'),
(27, 3, 'Accord du participe passé', 'pdfs/Notre monde en question/Orthographe/6.pdf', 'assets/back/Orth.jpg'),
(28, 3, 'Les mots génériques et les mots particuliers', 'pdfs/Notre monde en question/Vocabulaire/5.pdf', 'assets/back/Vo.jpg'),
(29, 3, 'Les niveaux de langue', 'pdfs/Notre monde en question/Vocabulaire/6.pdf', 'assets/back/Vo.jpg'),
(30, 4, 'Les verbes pronominaux', 'pdfs/Les romans policiers/Conjugaison/6.pdf', 'assets/back/Conj.jpg'),
(31, 4, 'L’impératif présent', 'pdfs/Les romans policiers/Conjugaison/7.pdf', 'assets/back/Conj.jpg'),
(32, 4, 'Les homonymes', 'pdfs/Les romans policiers/Orthographe/7.pdf', 'assets/back/Orth.jpg'),
(33, 4, 'Ou/où', 'pdfs/Les romans policiers/Orthographe/8.pdf', 'assets/back/Orth.jpg'),
(34, 4, 'Le champ lexical', 'pdfs/Les romans policiers/Vocabulaire/7.pdf', 'assets/back/Vo.jpg'),
(35, 4, 'D’où viennent les mots du français?', 'pdfs/Les romans policiers/Vocabulaire/8.pdf', 'assets/back/Vo.jpg'),
(37, 5, 'L’imparfait ', 'pdfs/L\'enfance en BD/Conjugaison/8.pdf', 'assets/back/Conj.jpg'),
(38, 5, 'Le passé simple', 'pdfs/L\'enfance en BD/Conjugaison/9.pdf', 'assets/back/Conj.jpg'),
(39, 5, 'Ce/se', 'pdfs/L\'enfance en BD/Orthographe/9.pdf', 'assets/back/Orth.jpg'),
(40, 5, 'Ces / c’est / ses / s’est', 'pdfs/L\'enfance en BD/Orthographe/10.pdf', 'assets/back/Orth.jpg'),
(41, 5, 'Le sens propre et le sens figuré', 'pdfs/L\'enfance en BD/Vocabulaire/9.pdf', 'assets/back/Vo.jpg'),
(42, 5, 'Le mot, son sens et sa famille', 'pdfs/L\'enfance en BD/Vocabulaire/10.pdf', 'assets/back/Vo.jpg'),
(43, 6, 'Le futur simple', 'pdfs/Des journaux intimes/Conjugaison/10.pdf', 'assets/back/Conj.jpg'),
(44, 6, 'La / là / l’a / l’as', 'pdfs/Des journaux intimes/Orthographe/11.pdf', 'assets/back/Orth.jpg'),
(45, 6, 'On / ont / on’n', 'pdfs/Des journaux intimes/Orthographe/12.pdf', 'assets/back/Orth.jpg'),
(46, NULL, 'voc1', 'pdfs/Des journaux intimes/Vocabulaire/11.pdf', 'assets/back/Vo.jpg'),
(47, 6, 'La comparaison et la métaphore', 'pdfs/Des journaux intimes/Vocabulaire/11.pdf', 'assets/back/Vo.jpg'),
(48, 6, 'Le comparatif et le superlatif', 'pdfs/Des journaux intimes/Vocabulaire/12.pdf', 'assets/back/Vo.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `theme_id` (`theme_id`);

--
-- Index pour la table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`exercise_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `theme_id` (`theme_id`);

--
-- Index pour la table `readingaudio`
--
ALTER TABLE `readingaudio`
  ADD PRIMARY KEY (`reading_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Index pour la table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`theme_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `writingcourses`
--
ALTER TABLE `writingcourses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_id` (`theme_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT pour la table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `exercise_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `readingaudio`
--
ALTER TABLE `readingaudio`
  MODIFY `reading_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `themes`
--
ALTER TABLE `themes`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `writingcourses`
--
ALTER TABLE `writingcourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`theme_id`);

--
-- Contraintes pour la table `exercises`
--
ALTER TABLE `exercises`
  ADD CONSTRAINT `exercises_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `exercises_ibfk_2` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`theme_id`);

--
-- Contraintes pour la table `readingaudio`
--
ALTER TABLE `readingaudio`
  ADD CONSTRAINT `readingaudio_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Contraintes pour la table `writingcourses`
--
ALTER TABLE `writingcourses`
  ADD CONSTRAINT `writingcourses_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`theme_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
