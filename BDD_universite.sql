-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 25 nov. 2025 à 13:53
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `universite`
--

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `idCours` int(11) NOT NULL,
  `intitule` varchar(100) NOT NULL,
  `coefficient` decimal(3,1) DEFAULT NULL,
  `semestre` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `idEnseignant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`idCours`, `intitule`, `coefficient`, `semestre`, `description`, `idEnseignant`) VALUES
(1, 'Introduction à l\'Algorithmique ', 3.5, 'S5', 'Le module d\'Introduction à l\'Algorithmique vise à vous apprendre à analyser différents algorithmes, à comparer leur performances et à vous fournir des outils pour concevoir des algorithmes efficaces.', 1),
(2, 'Réseaux', 3.5, 'S5', 'Le module de Réseaux a pour objectif de vous initier aux concepts fondamentaux des réseaux informatiques, de comprendre le fonctionnement des protocoles de communication et des architectures réseau, et de vous fournir les outils nécessaires pour concevoir, configurer et sécuriser des réseaux efficaces et fiables', 5),
(3, 'Systèmes de Gestion de Bases de Données', 3.5, 'S5', 'Le module de Systèmes de Gestion de Bases de Données a pour objectif de vous initier aux concepts fondamentaux des bases de données, de comprendre leur architecture et leur fonctionnement, et de vous fournir les outils nécessaires pour concevoir, manipuler et optimiser des bases de données relationnelles de manière efficace et sécurisée.', 3),
(4, 'Système d\'exploitation', 4.0, 'S6', 'Le module de Système d’exploitation a pour objectif de vous familiariser avec les concepts fondamentaux des systèmes d’exploitation, de comprendre la gestion des ressources matérielles et logicielles (processeur, mémoire, fichiers, périphériques), et de vous fournir les outils nécessaires pour exploiter, administrer et optimiser efficacement un système informatique.', 5),
(5, 'Gestion commerciale', 2.0, 'S6', 'Le module de Gestion commerciale a pour objectif de vous initier aux principes fondamentaux de la gestion des entreprises, de comprendre les processus liés à la vente, à l’approvisionnement et à la relation client, et de vous fournir les outils nécessaires pour organiser, suivre et optimiser efficacement les activités commerciales d’une organisation.', 2);

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `idEnseignant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `dateNaiss` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `specialite` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`idEnseignant`, `nom`, `prenom`, `dateNaiss`, `email`, `specialite`) VALUES
(1, 'Dupont', 'Jean', '1975-03-12', 'j.dupont@univ.fr', 'Mathématiques'),
(2, 'Martin', 'Claire', '1980-07-05', 'c.martin@univ.fr', 'Economie-Gestion'),
(3, 'Lubin', 'Denis', '1985-01-20', 'lubin.univ@gmail.com', 'Informatique'),
(4, 'Moreau', 'Sophie', '1990-09-15', 's.moreau@univ.fr', 'Chimie'),
(5, 'Petit', 'Luc', '1982-05-22', 'l.petit@univ.fr', 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `idEtudiant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `dateNaiss` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `adresse` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`idEtudiant`, `nom`, `prenom`, `dateNaiss`, `email`, `adresse`) VALUES
(1, 'Azzouz', 'Ilhem', '2001-07-25', 'ilhem.azzouz@student.fr', '12 rue A'),
(2, 'Bourakkadi Idrissi', 'Marwa', '2004-03-05', 'marwa.bourakkadiidrissi@student.fr', '34 rue B'),
(3, 'Roux', 'Chloé', '1999-12-30', 'chloe.roux@student.fr', '56 rue C'),
(4, 'Morel', 'David', '1995-07-19', 'david.morel@student.fr', '78 rue D'),
(5, 'Fournier', 'Emma', '2002-11-10', 'emma.fournier@student.fr', '90 rue E'),
(6, 'Giraud', 'François', '1990-02-25', 'francois.giraud@student.fr', '23 rue F');

-- --------------------------------------------------------

--
-- Structure de la table `examen`
--

CREATE TABLE `examen` (
  `idExamen` int(11) NOT NULL,
  `heureDebut` time NOT NULL,
  `heureFin` time NOT NULL,
  `date` date NOT NULL,
  `idCours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `examen`
--

INSERT INTO `examen` (`idExamen`, `heureDebut`, `heureFin`, `date`, `idCours`) VALUES
(1, '09:00:00', '11:00:00', '2025-06-10', 1),
(2, '14:00:00', '16:00:00', '2025-06-11', 2),
(3, '10:00:00', '12:00:00', '2025-06-12', 3),
(4, '13:00:00', '15:00:00', '2025-06-13', 4),
(5, '09:00:00', '11:00:00', '2025-06-14', 5);

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `idInscription` int(11) NOT NULL,
  `date` date NOT NULL,
  `idEtudiant` int(11) NOT NULL,
  `idCours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`idInscription`, `date`, `idEtudiant`, `idCours`) VALUES
(1, '2025-01-10', 1, 1),
(2, '2025-01-10', 1, 2),
(3, '2025-01-11', 2, 1),
(4, '2025-01-11', 2, 3),
(5, '2025-01-12', 3, 2),
(6, '2025-01-12', 3, 3),
(7, '2025-01-13', 4, 4),
(8, '2025-01-13', 4, 5),
(9, '2025-01-14', 5, 1),
(10, '2025-01-14', 5, 2),
(11, '2025-01-15', 6, 3);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `idNote` int(11) NOT NULL,
  `valeur` decimal(5,2) NOT NULL,
  `idEtudiant` int(11) NOT NULL,
  `idExamen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`idNote`, `valeur`, `idEtudiant`, `idExamen`) VALUES
(1, 15.50, 1, 1),
(2, 17.00, 1, 2),
(3, 12.00, 2, 1),
(4, 18.75, 2, 3),
(5, 18.00, 3, 2),
(6, 9.00, 3, 3),
(7, 13.00, 4, 4),
(8, 16.00, 4, 5),
(9, 11.50, 5, 1),
(10, 14.00, 5, 2),
(11, 8.50, 6, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`idCours`),
  ADD KEY `idEnseignant` (`idEnseignant`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`idEnseignant`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`idEtudiant`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`idExamen`),
  ADD KEY `idCours` (`idCours`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`idInscription`),
  ADD UNIQUE KEY `idEtudiant` (`idEtudiant`,`idCours`),
  ADD KEY `idCours` (`idCours`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`idNote`),
  ADD UNIQUE KEY `idEtudiant` (`idEtudiant`,`idExamen`),
  ADD KEY `idExamen` (`idExamen`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `idCours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `idEnseignant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idEtudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `examen`
--
ALTER TABLE `examen`
  MODIFY `idExamen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `idInscription` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `idNote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`idEnseignant`) REFERENCES `enseignant` (`idEnseignant`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `examen`
--
ALTER TABLE `examen`
  ADD CONSTRAINT `examen_ibfk_1` FOREIGN KEY (`idCours`) REFERENCES `cours` (`idCours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiant` (`idEtudiant`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`idCours`) REFERENCES `cours` (`idCours`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`idEtudiant`) REFERENCES `etudiant` (`idEtudiant`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`idExamen`) REFERENCES `examen` (`idExamen`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
