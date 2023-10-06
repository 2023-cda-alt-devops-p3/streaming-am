-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 06 oct. 2023 à 13:48
-- Version du serveur : 8.1.0
-- Version de PHP : 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `streamingbdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `id` int NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `date_naissance` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`id`, `nom`, `prenom`, `date_naissance`) VALUES
(1, 'NOM_ACTEUR_1', 'PRENOM_ACTEUR_1', '2000/01/01'),
(2, 'NOM_ACTEUR_2', 'PRENOM_ACTEUR_2', '1990/02/02'),
(3, 'NOM_ACTEUR_3', 'PRENOM_ACTEUR_3', '1970/03/03'),
(4, 'NOM AJOUTEE', 'PRENOM AJOUTEE', '2000/05/05');

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int NOT NULL,
  `id_acteur` int NOT NULL,
  `id_realisateur` int NOT NULL,
  `titre` text NOT NULL,
  `duree` text NOT NULL,
  `annee_de_sortie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `id_acteur`, `id_realisateur`, `titre`, `duree`, `annee_de_sortie`) VALUES
(1, 1, 1, 'TITRE_FILM_1', 'DUREE_FILM_1', 'ANNEEDESORTIE_FILM_1'),
(2, 2, 2, 'TITRE_FILM_2', 'DUREE_FILM_2', 'ANNEEDESORTIE_FILM_2'),
(3, 3, 3, 'TITRE_FILM_3', 'DUREE_FILM_3', 'ANNEEDESORTIE_FILM_3');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int NOT NULL,
  `nom` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `prenom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`id`, `nom`, `prenom`) VALUES
(1, 'NOM_REALISATEUR_1', 'PRENOM_REALISATEUR_1'),
(2, 'NOM_REALISATEUR_2', 'PRENOM_REALISATEUR_2'),
(3, 'NOM_REALISATEUR_3', 'PRENOM_REALISATEUR_3');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `email` text NOT NULL,
  `mdp` text NOT NULL,
  `role` text NOT NULL,
  `liste_film_preferes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `email`, `mdp`, `role`, `liste_film_preferes`) VALUES
(1, 'NOM_UTILISATEUR_1', 'PRENOM_UTILISATEUR_1', 'EMAIL_UTILISATEUR_1', 'MDP_UTILISATEUR_1', 'ROLE_UTILISATEUR_1', 'LISTE_UTILISATEUR_1'),
(2, 'NOM_UTILISATEUR_2', 'PRENOM_UTILISATEUR_2', 'EMAIL_UTILISATEUR_2', 'MDP_UTILISATEUR_2', 'ROLE_UTILISATEUR_2', 'LISTE_UTILISATEUR_2'),
(3, 'NOM_UTILISATEUR_3', 'PRENOM_UTILISATEUR_3', 'EMAIL_UTILISATEUR_3', 'MDP_UTILISATEUR_3', 'ROLE_UTILISATEUR_3', 'LISTE_UTILISATEUR_3');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_acteur` (`id_acteur`),
  ADD KEY `id_realisateur` (`id_realisateur`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
