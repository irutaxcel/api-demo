-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 01 juin 2022 à 12:08
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `api_codeigniter`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `my_key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL,
  `is_private_key` tinyint(1) NOT NULL,
  `ip_addresses` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `api_keys`
--

INSERT INTO `api_keys` (`id`, `user_id`, `my_key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, 'funda123', 0, 0, 0, NULL, '2022-03-16 20:40:35');

-- --------------------------------------------------------

--
-- Structure de la table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_prod` int(11) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `create_at_prod` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tbl_product`
--

INSERT INTO `tbl_product` (`id_prod`, `prod_name`, `create_at_prod`) VALUES
(1, 'CAMEL BLEU', '2022-02-18 09:50:19'),
(2, 'CAMEL JAUNE', '2022-02-18 09:50:19'),
(3, 'CLUB FILTER', '2022-02-18 09:51:09'),
(4, 'MONTE CARLO', '2022-02-18 09:51:09'),
(5, 'PORTSMAN ETOILE FILTER', '2022-02-18 09:51:38'),
(6, 'PORTSMAN ETOILE MENTHOL', '2022-02-18 09:51:38'),
(7, 'PORTSMAN KING SIZE', '2022-02-18 10:48:29');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_prod`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
