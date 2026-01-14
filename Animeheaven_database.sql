-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Okt 07. 17:05
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `animeheaven_database`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `anime_adatlap`
--

CREATE TABLE `anime_adatlap` (
  `id` int(11) NOT NULL,
  `mal_id` int(11) DEFAULT NULL,
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
  `lathatosag` Boolean DEFAULT 1,
  `osszes_epizod` varchar(10) DEFAULT NULL,
  `jelenlegi_epizod` int(11) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cimke_lista` (Előre definiált címkék)
--

CREATE TABLE `cimke_lista` (
  `id` int(11) NOT NULL,
  `cimke_nev` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `anime_cimke` (Kapcsolótábla)
--

CREATE TABLE `anime_cimke` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `cimke_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `elozmeny`
--

CREATE TABLE `elozmeny` (
  `id` int(11) NOT NULL,
  `profil_id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `resz_id` int(11) NOT NULL,
  `megnezve` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `forras_elem`
--

CREATE TABLE `forras_elem` (
  `id` int(11) NOT NULL,
  `forras_id` int(11) NOT NULL,
  `resz_id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `forras_tipus`
--

CREATE TABLE `forras_tipus` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lista_elem`
--

CREATE TABLE `lista_elem` (
  `id` int(11) NOT NULL,
  `profil_id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `tipus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lista_tipus`
--

CREATE TABLE `lista_tipus` (
  `id` int(11) NOT NULL,
  `tipus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `profil_adatlap`
--

CREATE TABLE `profil_adatlap` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `felhasznalonev` varchar(100) NOT NULL,
  `jelszo` varchar(255) NOT NULL,
  `salt` varchar(64) NOT NULL COMMENT 'Csak egyedi hash algoritmus esetén! Bcrypt/Argon2 nem igényli.',
  `profilkep` varchar(255) DEFAULT NULL,
  `admin_jog` Boolean DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reszek`
--

CREATE TABLE `reszek` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `sorrend` int(11) DEFAULT NULL,
  `resz` varchar(25) DEFAULT NULL,
  `lathatosag` Boolean DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `studio_lista` (Előre definiált stúdiók)
--

CREATE TABLE `studio_lista` (
  `id` int(11) NOT NULL,
  `studio_nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `anime_studio` (Kapcsolótábla)
--

CREATE TABLE `anime_studio` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `studio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `anime_adatlap`
--
ALTER TABLE `anime_adatlap`
  ADD PRIMARY KEY (`id`);
  ADD UNIQUE KEY `mal_id` (`mal_id`);

--
-- A tábla indexei `cimke_lista`
--
ALTER TABLE `cimke_lista`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cimke_nev` (`cimke_nev`);

--
-- A tábla indexei `anime_cimke`
--
ALTER TABLE `anime_cimke`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_id` (`anime_id`),
  ADD KEY `cimke_id` (`cimke_id`);

--
-- A tábla indexei `elozmeny`
--
ALTER TABLE `elozmeny`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profil_id` (`profil_id`),
  ADD KEY `anime_id` (`anime_id`),
  ADD KEY `resz_id` (`resz_id`);

--
-- A tábla indexei `forras_elem`
--
ALTER TABLE `forras_elem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forras_id` (`forras_id`),
  ADD KEY `resz_id` (`resz_id`);

--
-- A tábla indexei `forras_tipus`
--
ALTER TABLE `forras_tipus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nev` (`nev`);

--
-- A tábla indexei `lista_elem`
--
ALTER TABLE `lista_elem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profil_id` (`profil_id`),
  ADD KEY `anime_id` (`anime_id`),
  ADD KEY `tipus_id` (`tipus_id`);

--
-- A tábla indexei `lista_tipus`
--
ALTER TABLE `lista_tipus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipus` (`tipus`);

--
-- A tábla indexei `profil_adatlap`
--
ALTER TABLE `profil_adatlap`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A tábla indexei `reszek`
--
ALTER TABLE `reszek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_id` (`anime_id`);

--
-- A tábla indexei `studio_lista`
--
ALTER TABLE `studio_lista`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `studio_nev` (`studio_nev`);

--
-- A tábla indexei `anime_studio`
--
ALTER TABLE `anime_studio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_id` (`anime_id`),
  ADD KEY `studio_id` (`studio_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `anime_adatlap`
--
ALTER TABLE `anime_adatlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `cimke_lista`
--
ALTER TABLE `cimke_lista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `anime_cimke`
--
ALTER TABLE `anime_cimke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `elozmeny`
--
ALTER TABLE `elozmeny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `forras_elem`
--
ALTER TABLE `forras_elem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `forras_tipus`
--
ALTER TABLE `forras_tipus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `lista_elem`
--
ALTER TABLE `lista_elem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `lista_tipus`
--
ALTER TABLE `lista_tipus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `profil_adatlap`
--
ALTER TABLE `profil_adatlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `reszek`
--
ALTER TABLE `reszek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `studio_lista`
--
ALTER TABLE `studio_lista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `anime_studio`
--
ALTER TABLE `anime_studio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `anime_cimke`
--
ALTER TABLE `anime_cimke`
  ADD CONSTRAINT `anime_cimke_ibfk_1` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anime_cimke_ibfk_2` FOREIGN KEY (`cimke_id`) REFERENCES `cimke_lista` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `elozmeny`
--
ALTER TABLE `elozmeny`
  ADD CONSTRAINT `elozmeny_ibfk_1` FOREIGN KEY (`profil_id`) REFERENCES `profil_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `elozmeny_ibfk_2` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `elozmeny_ibfk_3` FOREIGN KEY (`resz_id`) REFERENCES `reszek` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `forras_elem`
--
ALTER TABLE `forras_elem`
  ADD CONSTRAINT `forras_elem_ibfk_1` FOREIGN KEY (`forras_id`) REFERENCES `forras_tipus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `forras_elem_ibfk_2` FOREIGN KEY (`resz_id`) REFERENCES `reszek` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `lista_elem`
--
ALTER TABLE `lista_elem`
  ADD CONSTRAINT `lista_elem_ibfk_1` FOREIGN KEY (`profil_id`) REFERENCES `profil_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lista_elem_ibfk_2` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lista_elem_ibfk_3` FOREIGN KEY (`tipus_id`) REFERENCES `lista_tipus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `reszek`
--
ALTER TABLE `reszek`
  ADD CONSTRAINT `reszek_ibfk_1` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `anime_studio`
--
ALTER TABLE `anime_studio`
  ADD CONSTRAINT `anime_studio_ibfk_1` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anime_studio_ibfk_2` FOREIGN KEY (`studio_id`) REFERENCES `studio_lista` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
