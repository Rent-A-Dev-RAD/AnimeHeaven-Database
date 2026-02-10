-- ===============================================
-- AnimeHeaven Database Setup
-- ===============================================
-- phpMyAdmin SQL Dump
-- Verzió: 5.2.1
-- Gép: 127.0.0.1
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30
-- ===============================================

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- ===============================================
-- Adatbázis létrehozása
-- ===============================================
CREATE DATABASE IF NOT EXISTS `animeheaven_database` 
CHARACTER SET utf8mb4 
COLLATE utf8mb4_hungarian_ci;

USE `animeheaven_database`;

-- ===============================================
-- Táblák törlése (ha léteznek) - fordított sorrendben a foreign key-k miatt
-- ===============================================
DROP TABLE IF EXISTS `anime_cimke`;
DROP TABLE IF EXISTS `anime_studio`;
DROP TABLE IF EXISTS `elozmeny`;
DROP TABLE IF EXISTS `forras_elem`;
DROP TABLE IF EXISTS `lista_elem`;
DROP TABLE IF EXISTS `reszek`;
DROP TABLE IF EXISTS `cimke_lista`;
DROP TABLE IF EXISTS `studio_lista`;
DROP TABLE IF EXISTS `forras_tipus`;
DROP TABLE IF EXISTS `lista_tipus`;
DROP TABLE IF EXISTS `profil_adatlap`;
DROP TABLE IF EXISTS `anime_adatlap`;

-- ===============================================
-- FŐ TÁBLA: anime_adatlap
-- ===============================================
CREATE TABLE `anime_adatlap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mal_link` varchar(255) DEFAULT NULL,
  `borito` varchar(255) DEFAULT NULL,
  `hatter` varchar(255) DEFAULT NULL,
  `japan_cim` varchar(255) DEFAULT NULL,
  `angol_cim` varchar(255) DEFAULT NULL,
  `leiras` text DEFAULT NULL,
  `megjelenes` date DEFAULT NULL,
  `besorolas` enum('G','PG','PG-13','R-17+','R+-18+','Besorolás alatt') DEFAULT 'Besorolás alatt',
  `statusz` enum('Hamarosan','Fut','Befejezett','Felfüggesztett') DEFAULT 'Hamarosan',
  `tipus` enum('TV','Film','OVA','ONA','Special') DEFAULT 'TV',
  `szezon` varchar(50) DEFAULT NULL,
  `keszito` varchar(255) DEFAULT NULL,
  `ertekeles` decimal(3,1) DEFAULT NULL, 
  `feltoltes_ido` date NOT NULL DEFAULT (CURDATE()),
  `lathatosag` tinyint(1) DEFAULT 1,
  `osszes_epizod` varchar(10) DEFAULT NULL,
  `jelenlegi_epizod` int(11) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_statusz` (`statusz`),
  KEY `idx_ertekeles` (`ertekeles`),
  KEY `idx_lathatosag` (`lathatosag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- ===============================================
-- CÍMKÉK (Genres/Tags)
-- ===============================================
CREATE TABLE `cimke_lista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cimke_nev` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cimke_nev` (`cimke_nev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

CREATE TABLE `anime_cimke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anime_id` int(11) NOT NULL,
  `cimke_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `anime_id` (`anime_id`),
  KEY `cimke_id` (`cimke_id`),
  CONSTRAINT `anime_cimke_ibfk_1` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `anime_cimke_ibfk_2` FOREIGN KEY (`cimke_id`) REFERENCES `cimke_lista` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- ===============================================
-- STÚDIÓK
-- ===============================================
CREATE TABLE `studio_lista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studio_nev` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `studio_nev` (`studio_nev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

CREATE TABLE `anime_studio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anime_id` int(11) NOT NULL,
  `studio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `anime_id` (`anime_id`),
  KEY `studio_id` (`studio_id`),
  CONSTRAINT `anime_studio_ibfk_1` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `anime_studio_ibfk_2` FOREIGN KEY (`studio_id`) REFERENCES `studio_lista` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- ===============================================
-- RÉSZEK/EPIZÓDOK
-- ===============================================
CREATE TABLE `reszek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anime_id` int(11) NOT NULL,
  `sorrend` int(11) DEFAULT NULL,
  `resz` varchar(25) DEFAULT NULL,
  `lathatosag` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `anime_id` (`anime_id`),
  CONSTRAINT `reszek_ibfk_1` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- ===============================================
-- VIDEÓ FORRÁSOK
-- ===============================================
CREATE TABLE `forras_tipus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nev` (`nev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

CREATE TABLE `forras_elem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forras_id` int(11) NOT NULL,
  `resz_id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `forras_id` (`forras_id`),
  KEY `resz_id` (`resz_id`),
  CONSTRAINT `forras_elem_ibfk_1` FOREIGN KEY (`forras_id`) REFERENCES `forras_tipus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `forras_elem_ibfk_2` FOREIGN KEY (`resz_id`) REFERENCES `reszek` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- ===============================================
-- FELHASZNÁLÓI RENDSZER
-- ===============================================
CREATE TABLE `profil_adatlap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `felhasznalonev` varchar(100) NOT NULL,
  `jelszo` varchar(255) NOT NULL,
  `salt` varchar(64) NOT NULL COMMENT 'Csak egyedi hash algoritmus esetén! Bcrypt/Argon2 nem igényli.',
  `profilkep` varchar(255) DEFAULT NULL,
  `jogosultsag` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- ===============================================
-- FELHASZNÁLÓI LISTÁK (Watchlist, Favorites, stb)
-- ===============================================
CREATE TABLE `lista_tipus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tipus` (`tipus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

CREATE TABLE `lista_elem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profil_id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `tipus_id` int(11) NOT NULL,
  `hozzaadva` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `profil_id` (`profil_id`),
  KEY `anime_id` (`anime_id`),
  KEY `tipus_id` (`tipus_id`),
  CONSTRAINT `lista_elem_ibfk_1` FOREIGN KEY (`profil_id`) REFERENCES `profil_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lista_elem_ibfk_2` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lista_elem_ibfk_3` FOREIGN KEY (`tipus_id`) REFERENCES `lista_tipus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- ===============================================
-- NÉZÉSI ELŐZMÉNYEK
-- ===============================================
CREATE TABLE `elozmeny` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profil_id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `resz_id` int(11) NOT NULL,
  `megnezve` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `profil_id` (`profil_id`),
  KEY `anime_id` (`anime_id`),
  KEY `resz_id` (`resz_id`),
  CONSTRAINT `elozmeny_ibfk_1` FOREIGN KEY (`profil_id`) REFERENCES `profil_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `elozmeny_ibfk_2` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `elozmeny_ibfk_3` FOREIGN KEY (`resz_id`) REFERENCES `reszek` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- ===============================================
-- Siker üzenet
-- ===============================================
SELECT 'AnimeHeaven database created successfully!' AS Status,
       'Database: animeheaven_database' AS Info,
       '12 tables created with foreign keys' AS Details;
