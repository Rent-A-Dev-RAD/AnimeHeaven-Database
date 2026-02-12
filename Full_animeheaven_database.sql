-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Feb 12. 11:28
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

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
CREATE DATABASE IF NOT EXISTS `animeheaven_database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `animeheaven_database`;

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
  `feltoltes_ido` date NOT NULL DEFAULT curdate(),
  `lathatosag` tinyint(1) DEFAULT 1,
  `osszes_epizod` varchar(10) DEFAULT NULL,
  `jelenlegi_epizod` int(11) DEFAULT NULL,
  `trailer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `anime_adatlap`
--

INSERT INTO `anime_adatlap` (`id`, `mal_id`, `borito`, `hatter`, `japan_cim`, `angol_cim`, `leiras`, `megjelenes`, `besorolas`, `statusz`, `tipus`, `szezon`, `keszito`, `ertekeles`, `feltoltes_ido`, `lathatosag`, `osszes_epizod`, `jelenlegi_epizod`, `trailer`) VALUES
(1, 44511, 'https://cdn.myanimelist.net/images/anime/1806/126216l.webp', 'https://image.tmdb.org/t/p/original/onn6JPGNwqcOUkp73ADq0PEpuLv.jpg', 'Chainsaw Man', 'Chainsaw Man', 'Denji a szülei halála után hatalmas tartozást örököl. Hogy kifizesse, démonokra vadászik Pochita nevű démon-láncfűrész-kutyája segítségével. Nem vágynak másra, csak egy normális életre. Viszont a jakuza elárulja őket, így feldarabolva végzik egy szemetesben. Itt egyezséget kötnek, amelynek hála egy erősebb testen osztoznak majd. Ezután egy professzionális démonvadász csapat befogadja őket. Így a harc a normális életért tovább folyik.', '2022-10-12', 'R-17+', 'Befejezett', 'TV', '2022 ŐSZ', 'Naruto-Kun', 9.0, '2022-10-12', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/jk7QSGwupPA?enablejsapi=1&wmode=opaque&autoplay=0'),
(2, 50346, 'https://cdn.myanimelist.net/images/anime/1045/123711l.webp', 'https://image.tmdb.org/t/p/original/veh7M4ho0vgqkW0n0hx1Up42elV.jpg', 'Yofukashi no Uta', 'Call Of The Night', 'Ko Yamori éjszakánként bolyong az utcákon, mert nem tud aludni. Egy éjszaka találkozik Nazuna Nanakusával, egy titokzatos lánnyal, aki felfedi, hogy vámpír. Nazuna megmutatja Ko-nak az éjszakai élet varázsát és szabadságát, miközben különös kapcsolat alakul ki közöttük.', '2022-07-08', 'R-17+', 'Befejezett', 'TV', '2022 Nyár', 'Black Ryuu Team', 8.9, '2022-07-08', 1, '13', 13, 'https://www.youtube-nocookie.com/embed/a4bSbmqwhso?enablejsapi=1&wmode=opaque&autoplay=0'),
(3, 40748, 'https://cdn.myanimelist.net/images/anime/1171/109222l.webp', 'https://image.tmdb.org/t/p/original/j0gsESaBzFmYVhnBTXzIE9PsgY8.jpg', 'Jujutsu Kaisen', 'Jujutsu Kaisen', 'Yuuji Itadori egy rendkívüli fizikai képességekkel rendelkező középiskolás. Egyik napja azzal kezdődik, hogy találkozik egy jujutsu varázslóval, aki elátkozott tárgyakat kutat. Amikor barátai veszélybe kerülnek, Yuuji lenyeli egy erős átok ujját, hogy megmentse őket.', '2020-10-03', 'R-17+', '', 'TV', '2020 Ősz', 'Naruto-Kun', 8.8, '2020-10-03', 1, '24', 24, 'https://www.youtube-nocookie.com/embed/4A_X-Dvl0ws?enablejsapi=1&wmode=opaque&autoplay=0'),
(4, 48736, 'https://cdn.myanimelist.net/images/anime/1179/119897l.webp', 'https://image.tmdb.org/t/p/original/lt6iImp0S1cFOUs8i0hr1ycqyCu.jpg', 'Sono Bisque Doll wa Koi wo Suru', 'My Dress-Up Darling', 'Wakana Gojou egy középiskolás fiú, aki hina babák készítésével foglalkozik. Egy nap osztálytársa, Marin Kitagawa felfedezi Wakana tehetségét, és megkéri, hogy segítsen neki cosplay jelmezek készítésében. Így kezdődik kettejük különleges barátsága.', '2022-01-09', 'PG-13', 'Befejezett', 'TV', '2022 Tél', 'AnimeCenter', 8.7, '2022-01-09', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/tFKDKd8z-NU?enablejsapi=1&wmode=opaque&autoplay=0'),
(5, 1535, 'https://cdn.myanimelist.net/images/anime/9/9453l.webp', 'https://image.tmdb.org/t/p/original/mOlEbXcb6ufRJKogI35KqsSlCfB.jpg', 'Death Note', 'Death Note', 'Light Yagami egy kiváló tanuló, aki egy különleges noteszre bukkan, a Death Note-ra. Bárki neve, akit a noteszba írnak, meghal. Light úgy dönt, hogy megtisztítja a világot a gonosztól, de hamarosan egy titokzatos nyomozó, L nyomába ered.', '2006-10-04', 'R-17+', 'Befejezett', 'TV', '2006 Ősz', 'Hidden Leaf Team', 8.6, '2006-10-04', 1, '37', 37, 'https://www.youtube-nocookie.com/embed/Vt_3c8BgxV4?enablejsapi=1&wmode=opaque&autoplay=0'),
(6, 50739, 'https://cdn.myanimelist.net/images/anime/1240/133638l.webp', 'https://image.tmdb.org/t/p/original/eusdD22WIeV27BVQPSJz6YONtqf.jpg', 'Otonari no Tenshi-sama ni Itsunomanika Dame Ningen ni Sareteita Ken', 'The Angel Next Door Spoils Me Rotten', 'Amane Fujimiya egy magányos középiskolás fiú, aki egy napon találkozik szomszédjával, Mahiru Shiinával, akit az iskolában angyalnak hívnak. Amikor Mahiru észreveszi Amane rendetlen életmódját, eldönti, hogy gondoskodik róla.', '2023-01-07', 'PG-13', 'Befejezett', 'TV', '2023 Tél', 'Muteki Fansub', 9.0, '2023-01-07', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/IUq59ARXtdg?enablejsapi=1&wmode=opaque&autoplay=0'),
(7, 61773, 'https://cdn.myanimelist.net/images/anime/1148/150376l.webp', 'https://image.tmdb.org/t/p/original/kARAcjWmKnb9mnDPRTU9zxs5Ad2.jpg', 'Let\'s Play: Quest-darake no My Life', 'Let\'s Play', 'Főiskolai évei alatt Sam Young órákat töltött kaland-logikai játékának, a Ruminate-nek a fejlesztésével. Annak ellenére, hogy gyerekként nagyon beteg volt, Sam igazi játékfejlesztő szeretne lenni. De amikor kedvenc játékstreamere, Marshall Law kipróbálja a játékot, szörnyen félreérti, és kijelenti, hogy ez a legrosszabb játék, amit valaha játszott. Ennek eredményeként rajongói negatív értékelésekkel bombázzák Sam játékát, veszélybe sodorva ezzel az álmait.<br><br>A helyzetet tovább rontja, hogy Marshall Sam új szomszédja lesz, nem tudva, hogy ő az a fejlesztő, akit olyan keményen kritizált. Bár Marshall gondoskodónak és kedvesnek tűnik, Samnek nehézséget okoz, hogy barátságot kötjön vele. Mielőtt második játékát, az Evermake-et kifejlesztheti, Samnek először ki kell találnia, hogyan hozhatja helyre tönkrement hírnevét.', '2025-10-02', 'PG-13', 'Befejezett', 'TV', '2025 ŐSZ', 'Rudolfskysub', 1.0, '2025-10-02', 7, '12', 12, 'https://www.youtube-nocookie.com/embed/ZmvyXUE_t_k?enablejsapi=1&wmode=opaque&autoplay=0'),
(8, 57555, 'https://cdn.myanimelist.net/images/anime/1763/150638l.webp', 'https://image.tmdb.org/t/p/original/xVlpyPgAjZiCcFYnKu87CNj55cu.jpg', 'Chainsaw Man Movie: Reze-hen', 'Chainsaw Man – The Movie: Reze Arc', 'A Chainsaw Man 1. évada után való folytatás.', '2025-09-19', '', 'Befejezett', '', '2025 ŐSZ', 'Muteki Fansub', 9.1, '2025-09-19', 1, '1', 1, 'https://www.youtube-nocookie.com/embed/VfoZp7CmOkE?enablejsapi=1&wmode=opaque&autoplay=0'),
(9, 50695, 'https://www.themoviedb.org/t/p/original/yuelUbcko5B25UgUKe30B3al2Z9.jpg', 'https://www.themoviedb.org/t/p/original/stEMpPdy4wRoHyNN7KmiLuOE0S0.jpg', 'MF Ghost', 'MF Ghost', 'A nagyon is közeli jövőben az elektromos önvezető autók már elterjedtnek számítanak Japán szerte. Kanata Livington, aki kivételes tehetségnek számít az autóversenyzés terén, éppen befejezte angliai tanulmányait, és hazatér a belső égésű benzinmotorral felszerelt kocsijával az immáron sofőr nélkül száguldó, elektromos autók hazájába.', '2023-10-02', 'PG-13', 'Befejezett', 'TV', '2023 ŐSZ', 'Akio-Fansub, AnimeDrive', 7.6, '2023-10-02', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/zNWZjjkKfXs?enablejsapi=1&wmode=opaque&autoplay=0'),
(10, 57559, 'https://cdn.myanimelist.net/images/anime/1037/145338l.webp', 'https://image.tmdb.org/t/p/original/qEqLerjgjX9BL1fsqRc4MoWzqIU.jpg', 'MF Ghost 2nd Season', 'MF Ghost Season 2', 'Az MF Ghost 2. évadja', '2024-10-07', '', 'Befejezett', 'TV', '2024 ŐSZ', 'Lordminator', 7.8, '2024-10-07', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/zn_3RAMZj9E?enablejsapi=1&wmode=opaque&autoplay=0'),
(11, 60602, 'https://cdn.myanimelist.net/images/anime/1419/154458l.webp', 'https://image.tmdb.org/t/p/original/stEMpPdy4wRoHyNN7KmiLuOE0S0.jpg', 'MF Ghost 3rd Season', 'MF Ghost Season 3', 'MF Ghost 3. évadja.', '2026-01-01', '', 'Fut', 'TV', '2026 TÉL', 'Lordminator', 8.0, '2026-01-01', 1, '?', 5, 'https://www.youtube-nocookie.com/embed/hUcDI5hSBPo?enablejsapi=1&wmode=opaque&autoplay=0');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `anime_cimke`
--

CREATE TABLE `anime_cimke` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `cimke_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `anime_cimke`
--

INSERT INTO `anime_cimke` (`id`, `anime_id`, `cimke_id`) VALUES
(1, 1, 1),
(2, 1, 10),
(3, 2, 17),
(4, 2, 24),
(5, 3, 1),
(6, 3, 10),
(7, 3, 21),
(8, 4, 17),
(9, 4, 22),
(10, 5, 24),
(11, 5, 25),
(12, 6, 17),
(13, 6, 22),
(14, 7, 7),
(15, 7, 17),
(16, 8, 1),
(17, 8, 10),
(18, 8, 21),
(19, 9, 7),
(20, 9, 19),
(21, 9, 23),
(22, 10, 7),
(23, 10, 19),
(24, 10, 23),
(25, 11, 7),
(26, 11, 19),
(27, 11, 23);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `anime_studio`
--

CREATE TABLE `anime_studio` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `studio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `anime_studio`
--

INSERT INTO `anime_studio` (`id`, `anime_id`, `studio_id`) VALUES
(1, 1, 375),
(2, 3, 375),
(3, 5, 372),
(4, 6, 474),
(5, 7, 450),
(6, 8, 375),
(7, 9, 217),
(8, 10, 217),
(9, 11, 217);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cimke_lista`
--

CREATE TABLE `cimke_lista` (
  `id` int(11) NOT NULL,
  `cimke_nev` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `cimke_lista`
--

INSERT INTO `cimke_lista` (`id`, `cimke_nev`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Avant Garde'),
(4, 'Award Winning'),
(5, 'Boys Love'),
(6, 'Comedy'),
(7, 'Drama'),
(8, 'Ecchi'),
(9, 'Erotica'),
(10, 'Fantasy'),
(11, 'Girls Love'),
(12, 'Gourmet'),
(13, 'Horror'),
(14, 'Josei'),
(15, 'Kids'),
(16, 'Mystery'),
(17, 'Romance'),
(18, 'Sci-Fi'),
(19, 'Seinen'),
(20, 'Shoujo'),
(21, 'Shounen'),
(22, 'Slice of Life'),
(23, 'Sports'),
(24, 'Supernatural'),
(25, 'Suspense');

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

--
-- A tábla adatainak kiíratása `elozmeny`
--

INSERT INTO `elozmeny` (`id`, `profil_id`, `anime_id`, `resz_id`, `megnezve`) VALUES
(1, 6, 1, 1, '2024-10-15 18:30:00'),
(2, 6, 1, 2, '2024-10-15 19:00:00'),
(3, 6, 1, 3, '2024-10-16 17:45:00'),
(4, 6, 1, 4, '2024-10-16 18:15:00'),
(5, 6, 1, 5, '2024-10-17 16:30:00'),
(6, 6, 1, 6, '2024-10-17 17:00:00'),
(7, 6, 1, 7, '2024-10-18 18:00:00'),
(8, 6, 1, 8, '2024-10-18 18:30:00'),
(9, 6, 1, 9, '2024-10-19 17:00:00'),
(10, 6, 1, 10, '2024-10-19 17:30:00'),
(11, 6, 1, 11, '2024-10-20 16:00:00'),
(12, 6, 1, 12, '2024-10-20 16:30:00'),
(13, 6, 5, 77, '2024-11-01 20:00:00'),
(14, 6, 5, 78, '2024-11-01 20:30:00'),
(15, 6, 5, 79, '2024-11-02 19:00:00'),
(16, 6, 5, 80, '2024-11-02 19:30:00'),
(17, 6, 5, 81, '2024-11-03 18:00:00'),
(18, 6, 5, 82, '2024-11-03 18:30:00'),
(19, 6, 5, 83, '2024-11-04 19:00:00'),
(20, 6, 5, 84, '2024-11-04 19:30:00'),
(21, 6, 5, 85, '2024-11-05 20:00:00'),
(22, 6, 5, 86, '2024-11-05 20:30:00'),
(23, 6, 5, 87, '2024-11-06 18:00:00'),
(24, 6, 5, 88, '2024-11-06 18:30:00'),
(25, 6, 5, 89, '2024-11-07 19:00:00'),
(26, 6, 5, 90, '2024-11-07 19:30:00'),
(27, 6, 5, 91, '2024-11-08 20:00:00'),
(28, 6, 5, 92, '2024-11-08 20:30:00'),
(29, 6, 5, 93, '2024-11-09 18:00:00'),
(30, 6, 5, 94, '2024-11-09 18:30:00'),
(31, 6, 5, 95, '2024-11-10 19:00:00'),
(32, 6, 5, 96, '2024-11-10 19:30:00'),
(64, 7, 4, 62, '2024-09-01 17:00:00'),
(65, 7, 4, 63, '2024-09-01 17:30:00'),
(66, 7, 4, 64, '2024-09-02 18:00:00'),
(67, 7, 4, 65, '2024-09-02 18:30:00'),
(68, 7, 4, 66, '2024-09-03 17:00:00'),
(69, 7, 4, 67, '2024-09-03 17:30:00'),
(70, 7, 4, 68, '2024-09-04 18:00:00'),
(71, 7, 4, 69, '2024-09-04 18:30:00'),
(72, 7, 4, 70, '2024-09-05 17:00:00'),
(73, 7, 4, 71, '2024-09-05 17:30:00'),
(74, 7, 4, 72, '2024-09-06 18:00:00'),
(75, 7, 4, 73, '2024-09-06 18:30:00'),
(76, 7, 2, 16, '2024-10-01 19:00:00'),
(77, 7, 2, 17, '2024-10-01 19:30:00'),
(78, 7, 2, 18, '2024-10-02 18:00:00'),
(79, 7, 2, 19, '2024-10-02 18:30:00'),
(80, 7, 2, 20, '2024-10-03 17:00:00'),
(81, 7, 2, 21, '2024-10-03 17:30:00'),
(82, 7, 2, 22, '2024-10-04 18:00:00'),
(83, 7, 2, 23, '2024-10-04 18:30:00'),
(95, 8, 3, 31, '2024-08-01 16:00:00'),
(96, 8, 3, 32, '2024-08-01 16:30:00'),
(97, 8, 3, 33, '2024-08-02 17:00:00'),
(98, 8, 3, 34, '2024-08-02 17:30:00'),
(99, 8, 3, 35, '2024-08-03 18:00:00'),
(100, 8, 3, 36, '2024-08-03 18:30:00'),
(101, 8, 3, 37, '2024-08-04 16:00:00'),
(102, 8, 3, 38, '2024-08-04 16:30:00'),
(103, 8, 3, 39, '2024-08-05 17:00:00'),
(104, 8, 3, 40, '2024-08-05 17:30:00'),
(105, 8, 3, 41, '2024-08-06 18:00:00'),
(106, 8, 3, 42, '2024-08-06 18:30:00'),
(107, 8, 3, 43, '2024-08-07 16:00:00'),
(108, 8, 3, 44, '2024-08-07 16:30:00'),
(109, 8, 3, 45, '2024-08-08 17:00:00'),
(110, 8, 1, 1, '2024-09-15 18:00:00'),
(111, 8, 1, 2, '2024-09-15 18:30:00'),
(112, 8, 1, 3, '2024-09-16 17:00:00'),
(113, 8, 1, 4, '2024-09-16 17:30:00'),
(114, 8, 1, 5, '2024-09-17 18:00:00'),
(115, 8, 1, 6, '2024-09-17 18:30:00'),
(116, 8, 1, 7, '2024-09-18 17:00:00'),
(117, 8, 1, 8, '2024-09-18 17:30:00'),
(118, 8, 1, 9, '2024-09-19 18:00:00'),
(119, 8, 1, 10, '2024-09-19 18:30:00'),
(120, 8, 1, 11, '2024-09-20 17:00:00'),
(121, 8, 1, 12, '2024-09-20 17:30:00'),
(126, 10, 5, 77, '2024-11-15 19:00:00'),
(127, 10, 5, 78, '2024-11-15 19:30:00'),
(128, 10, 5, 79, '2024-11-16 18:00:00'),
(129, 10, 5, 80, '2024-11-16 18:30:00'),
(130, 10, 5, 81, '2024-11-17 19:00:00'),
(131, 10, 5, 82, '2024-11-17 19:30:00'),
(132, 10, 5, 83, '2024-11-18 18:00:00'),
(133, 10, 5, 84, '2024-11-18 18:30:00'),
(134, 10, 5, 85, '2024-11-19 19:00:00'),
(135, 10, 5, 86, '2024-11-19 19:30:00'),
(136, 10, 4, 62, '2024-12-01 20:00:00'),
(137, 10, 4, 63, '2024-12-01 20:30:00'),
(138, 10, 4, 64, '2024-12-02 19:00:00'),
(139, 10, 4, 65, '2024-12-02 19:30:00'),
(140, 10, 4, 66, '2024-12-03 18:00:00'),
(141, 10, 4, 67, '2024-12-03 18:30:00');

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

--
-- A tábla adatainak kiíratása `forras_elem`
--

INSERT INTO `forras_elem` (`id`, `forras_id`, `resz_id`, `link`) VALUES
(1, 2, 1, 'https://videa.hu/player?f=8.2115862.1265416.0'),
(2, 2, 2, 'https://videa.hu/player?f=8.2122583.1265416.0'),
(3, 2, 3, 'https://videa.hu/player?f=8.2128854.1265416.0'),
(4, 2, 4, 'https://videa.hu/player?f=8.2172886.1265416.0'),
(5, 2, 5, 'https://videa.hu/player?f=8.2180532.1265416.0'),
(6, 2, 6, 'https://videa.hu/player?f=8.2186899.1265416.0'),
(7, 2, 7, 'https://videa.hu/player?f=8.2191775.1265416.0'),
(8, 2, 8, 'https://videa.hu/player?f=8.2198591.1265416.0'),
(9, 2, 9, 'https://videa.hu/player?f=8.2203161.1265416.0'),
(10, 2, 10, 'https://videa.hu/player?f=8.2218117.1265416.0'),
(11, 2, 11, 'https://videa.hu/player?f=8.2219917.1265416.0'),
(12, 2, 12, 'https://videa.hu/player?f=8.2231170.1265416.0'),
(16, 1, 16, 'https://embed.indavideo.hu/player/video/1504c218d3'),
(17, 1, 17, 'https://embed.indavideo.hu/player/video/17bab4906e'),
(18, 1, 18, 'https://embed.indavideo.hu/player/video/d4318f45b7'),
(19, 1, 19, 'https://embed.indavideo.hu/player/video/00c5c20d53'),
(20, 1, 20, 'https://embed.indavideo.hu/player/video/1363d8f66f'),
(21, 1, 21, 'https://embed.indavideo.hu/player/video/a4c4bfa4bf'),
(22, 1, 22, 'https://embed.indavideo.hu/player/video/f84f2721bd'),
(23, 1, 23, 'https://embed.indavideo.hu/player/video/10a1901a40'),
(24, 1, 24, 'https://embed.indavideo.hu/player/video/4793124702'),
(25, 1, 25, 'https://embed.indavideo.hu/player/video/c3abea8c53'),
(26, 1, 26, 'https://embed.indavideo.hu/player/video/9bf6fea98e'),
(27, 1, 27, 'https://embed.indavideo.hu/player/video/5023d038ca'),
(28, 1, 28, 'https://embed.indavideo.hu/player/video/04177bca42'),
(31, 2, 31, 'https://videa.hu/player?v=2dSQaZt8ARheeksS'),
(32, 2, 32, 'https://videa.hu/player?v=JY5hTJzRyJ3YvKD6'),
(33, 2, 33, 'https://videa.hu/player?v=DDyMVmFaaUodAeo2'),
(34, 2, 34, 'https://videa.hu/player?v=OdmF3xxnYYNXbsxZ'),
(35, 2, 35, 'https://videa.hu/player?v=AMQvwmCCGiHqIBWo'),
(36, 2, 36, 'https://videa.hu/player?v=5f0riFjIUCjkttkT'),
(37, 2, 37, 'https://videa.hu/player?v=k9WZbCuGpAx32Fd0'),
(38, 2, 38, 'https://videa.hu/player?v=i7xrLt8awWerbNUS'),
(39, 2, 39, 'https://videa.hu/player?v=eYgdFf3XE0ksP8ic'),
(40, 2, 40, 'https://videa.hu/player?v=e4jdYSIPrekNZTQK'),
(41, 2, 41, 'https://videa.hu/player?v=dBua0mH5UU0unazY'),
(42, 2, 42, 'https://videa.hu/player?v=BJ6hZBfsDpET0kjj'),
(43, 2, 43, 'https://videa.hu/player?v=Iz5yIuuy8GNU55yb'),
(44, 2, 44, 'https://videa.hu/player?v=q4suAuWjY5AHFYi1'),
(45, 2, 45, 'https://videa.hu/player?v=XVKv7OQgZzRuTPo7'),
(46, 2, 46, 'https://videa.hu/player?v=5tapvxcG48D7hsRD'),
(47, 2, 47, 'https://videa.hu/player?v=BpzweDplCKeCWPL0'),
(48, 2, 48, 'https://videa.hu/player?v=se2P3vcU4YWnQk7Q'),
(49, 2, 49, 'https://videa.hu/player?v=DbXitw1vutjBnz8L'),
(50, 2, 50, 'https://videa.hu/player?v=C7OiOIp7RVYO8zb8'),
(51, 2, 51, 'https://videa.hu/player?v=MjVA6PMDXQtgJzJv'),
(52, 2, 52, 'https://videa.hu/player?v=7ESfXTiAYWyvi2KI'),
(53, 2, 53, 'https://videa.hu/player?v=I1APXGB0HqBolMJr'),
(54, 2, 54, 'https://videa.hu/player?v=TtnCaifof9WxiXRc'),
(62, 1, 62, 'https://embed.indavideo.hu/player/video/86dd4bef6d'),
(63, 1, 63, 'https://embed.indavideo.hu/player/video/14ec055ca2'),
(64, 1, 64, 'https://embed.indavideo.hu/player/video/f9ee121743'),
(65, 1, 65, 'https://embed.indavideo.hu/player/video/85537f7dda'),
(66, 1, 66, 'https://embed.indavideo.hu/player/video/58c17a1a16'),
(67, 1, 67, 'https://embed.indavideo.hu/player/video/74406e2eb8'),
(68, 1, 68, 'https://embed.indavideo.hu/player/video/be7f1a793c'),
(69, 1, 69, 'https://embed.indavideo.hu/player/video/9a35c1f226'),
(70, 1, 70, 'https://embed.indavideo.hu/player/video/9c44d85d15'),
(71, 1, 71, 'https://embed.indavideo.hu/player/video/8f9bda6fb2'),
(72, 1, 72, 'https://embed.indavideo.hu/player/video/9a9df5b775'),
(73, 1, 73, 'https://embed.indavideo.hu/player/video/745e52f031'),
(77, 1, 77, 'https://embed.indavideo.hu/player/video/80bb6b6714'),
(78, 1, 78, 'https://embed.indavideo.hu/player/video/984bfc889d'),
(79, 1, 79, 'https://embed.indavideo.hu/player/video/dcc8125f9f'),
(80, 1, 80, 'https://embed.indavideo.hu/player/video/dcefc47071'),
(81, 1, 81, 'https://embed.indavideo.hu/player/video/6fa8ba8e9a'),
(82, 1, 82, 'https://embed.indavideo.hu/player/video/42ed4c1054'),
(83, 1, 83, 'https://embed.indavideo.hu/player/video/c2b3ffc5d0'),
(84, 1, 84, 'https://embed.indavideo.hu/player/video/63231b7a3b'),
(85, 1, 85, 'https://embed.indavideo.hu/player/video/0689ded9a7'),
(86, 1, 86, 'https://embed.indavideo.hu/player/video/5c51714948'),
(87, 1, 87, 'https://embed.indavideo.hu/player/video/1ee64d64cf'),
(88, 1, 88, 'https://embed.indavideo.hu/player/video/1384c87c5e'),
(89, 1, 89, 'https://embed.indavideo.hu/player/video/e46712c7fc'),
(90, 1, 90, 'https://embed.indavideo.hu/player/video/bfac23292a'),
(91, 1, 91, 'https://embed.indavideo.hu/player/video/92ed6af747'),
(92, 1, 92, 'https://embed.indavideo.hu/player/video/95538b94c9'),
(93, 1, 93, 'https://embed.indavideo.hu/player/video/583658e9fa'),
(94, 1, 94, 'https://embed.indavideo.hu/player/video/f06a35010f'),
(95, 1, 95, 'https://embed.indavideo.hu/player/video/46967b8a86'),
(96, 1, 96, 'https://embed.indavideo.hu/player/video/5312a55760'),
(97, 1, 97, 'https://embed.indavideo.hu/player/video/84828cf5b5'),
(98, 1, 98, 'https://embed.indavideo.hu/player/video/7da260787d'),
(99, 1, 99, 'https://embed.indavideo.hu/player/video/c54c0b32c5'),
(100, 1, 100, 'https://embed.indavideo.hu/player/video/d2667c65b2'),
(101, 1, 101, 'https://embed.indavideo.hu/player/video/6c6366c214'),
(102, 1, 102, 'https://embed.indavideo.hu/player/video/0fb10f877a'),
(103, 1, 103, 'https://embed.indavideo.hu/player/video/f675e1942b'),
(104, 1, 104, 'https://embed.indavideo.hu/player/video/4fd84456b2'),
(105, 1, 105, 'https://embed.indavideo.hu/player/video/365b5ceb9d'),
(106, 1, 106, 'https://embed.indavideo.hu/player/video/d5708805f1'),
(107, 1, 107, 'https://embed.indavideo.hu/player/video/dd919614b6'),
(108, 1, 108, 'https://embed.indavideo.hu/player/video/8fa4d39fb6'),
(109, 1, 109, 'https://embed.indavideo.hu/player/video/6aac26007e'),
(110, 1, 110, 'https://embed.indavideo.hu/player/video/2891b1c309'),
(111, 1, 111, 'https://embed.indavideo.hu/player/video/e90bb11d49'),
(112, 1, 112, 'https://embed.indavideo.hu/player/video/7d43b7cdb7'),
(113, 1, 113, 'https://embed.indavideo.hu/player/video/8bd41eaa94'),
(140, 1, 140, 'https://embed.indavideo.hu/player/video/daf32ea189'),
(141, 1, 141, 'https://embed.indavideo.hu/player/video/c41f1abc8e'),
(142, 1, 142, 'https://embed.indavideo.hu/player/video/16a0969e8c'),
(143, 1, 143, 'https://embed.indavideo.hu/player/video/37d001e9e6'),
(144, 1, 144, 'https://embed.indavideo.hu/player/video/5002520ad9'),
(145, 1, 145, 'https://embed.indavideo.hu/player/video/97d4e442e4'),
(146, 1, 146, 'https://embed.indavideo.hu/player/video/5e1d8bb270'),
(147, 1, 147, 'https://embed.indavideo.hu/player/video/767a12f315'),
(148, 1, 148, 'https://embed.indavideo.hu/player/video/7a02260740'),
(149, 1, 149, 'https://embed.indavideo.hu/player/video/f8d54e22e4'),
(150, 1, 150, 'https://embed.indavideo.hu/player/video/60eb4cbc94'),
(151, 1, 151, 'https://embed.indavideo.hu/player/video/891dc7228d'),
(155, 2, 155, 'https://videa.hu/player?f=8.3560746.2567651.0'),
(156, 2, 156, 'https://videa.hu/player?f=8.3560748.2567651.0'),
(157, 2, 157, 'https://videa.hu/player?f=8.3560751.2567651.0'),
(158, 2, 158, 'https://videa.hu/player?f=8.3560754.2567651.0'),
(159, 2, 159, 'https://videa.hu/player?f=8.3560755.2567651.0'),
(160, 2, 160, 'https://videa.hu/player?f=8.3560757.2567651.0'),
(161, 2, 161, 'https://videa.hu/player?f=8.3560758.2567651.0'),
(162, 2, 162, 'https://videa.hu/player?f=8.3560759.2567651.0'),
(163, 2, 163, 'https://videa.hu/player?f=8.3560762.2567651.0'),
(164, 2, 164, 'https://videa.hu/player?f=8.3560764.2567651.0'),
(165, 2, 165, 'https://videa.hu/player?f=8.3560765.2567651.0'),
(166, 2, 166, 'https://videa.hu/player?f=8.3560766.2567651.0'),
(170, 1, 155, 'https://embed.indavideo.hu/player/video/d66d262168'),
(171, 1, 156, 'https://embed.indavideo.hu/player/video/3d3d9f0d8c'),
(172, 1, 157, 'https://embed.indavideo.hu/player/video/8a95a56701'),
(173, 1, 158, 'https://embed.indavideo.hu/player/video/c56c8cc6d1'),
(174, 1, 159, 'https://embed.indavideo.hu/player/video/3dbeb8f44b'),
(175, 1, 160, 'https://embed.indavideo.hu/player/video/d7c24a0cd4'),
(176, 1, 161, 'https://embed.indavideo.hu/player/video/12ede6d57a'),
(177, 1, 162, 'https://embed.indavideo.hu/player/video/143b05de62'),
(178, 1, 163, 'https://embed.indavideo.hu/player/video/5e48f94d15'),
(179, 1, 164, 'https://embed.indavideo.hu/player/video/58112899a6'),
(180, 1, 165, 'https://embed.indavideo.hu/player/video/4275627db7'),
(181, 1, 166, 'https://embed.indavideo.hu/player/video/d86eccd741'),
(185, 2, 170, 'https://videa.hu/player?f=8.3543680.2511611.0'),
(186, 2, 171, 'https://videa.hu/player?f=8.2489879.2293168.0'),
(187, 2, 172, 'https://videa.hu/player?f=8.2525235.2293168.0'),
(189, 1, 173, 'https://embed.indavideo.hu/player/video/099e58472f'),
(190, 1, 174, 'https://embed.indavideo.hu/player/video/877fd5e4b5'),
(191, 1, 175, 'https://embed.indavideo.hu/player/video/405a5cebf1'),
(192, 1, 176, 'https://embed.indavideo.hu/player/video/bb06183bbf'),
(193, 1, 177, 'https://embed.indavideo.hu/player/video/6599cfb69c'),
(194, 1, 178, 'https://embed.indavideo.hu/player/video/1e082510f9'),
(195, 1, 179, 'https://embed.indavideo.hu/player/video/af306d4f8e'),
(196, 1, 180, 'https://embed.indavideo.hu/player/video/5eee4bc5ba'),
(197, 1, 181, 'https://embed.indavideo.hu/player/video/683a075798'),
(198, 1, 182, 'https://embed.indavideo.hu/player/video/ed3d032401'),
(204, 1, 186, 'https://embed.indavideo.hu/player/video/cd39c718c9'),
(205, 1, 187, 'https://embed.indavideo.hu/player/video/37c2335883'),
(206, 1, 188, 'https://embed.indavideo.hu/player/video/b5be7f0eee'),
(207, 1, 189, 'https://embed.indavideo.hu/player/video/79764fadac'),
(208, 1, 190, 'https://embed.indavideo.hu/player/video/d6e1f0b654'),
(209, 1, 191, 'https://embed.indavideo.hu/player/video/c527b28370'),
(210, 1, 192, 'https://embed.indavideo.hu/player/video/2698ffec65'),
(211, 1, 193, 'https://embed.indavideo.hu/player/video/d7d43aac94'),
(212, 1, 194, 'https://embed.indavideo.hu/player/video/6509501c6b'),
(213, 1, 195, 'https://embed.indavideo.hu/player/video/af0574a569'),
(214, 1, 196, 'https://embed.indavideo.hu/player/video/74c9ea28db'),
(215, 1, 197, 'https://embed.indavideo.hu/player/video/bb560cd230'),
(219, 1, 201, 'https://embed.indavideo.hu/player/video/f9d74d0f4e'),
(220, 1, 202, 'https://embed.indavideo.hu/player/video/9d669499ea'),
(221, 1, 203, 'https://embed.indavideo.hu/player/video/baae22e48c'),
(222, 1, 204, 'https://embed.indavideo.hu/player/video/21c3df38eb'),
(223, 1, 205, 'https://embed.indavideo.hu/player/video/a5171b76a4');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `forras_tipus`
--

CREATE TABLE `forras_tipus` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `forras_tipus`
--

INSERT INTO `forras_tipus` (`id`, `nev`) VALUES
(1, 'Indavideo'),
(2, 'Videa');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lista_elem`
--

CREATE TABLE `lista_elem` (
  `id` int(11) NOT NULL,
  `profil_id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `tipus_id` int(11) NOT NULL,
  `hozzaadva` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `lista_elem`
--

INSERT INTO `lista_elem` (`id`, `profil_id`, `anime_id`, `tipus_id`, `hozzaadva`) VALUES
(1, 6, 1, 1, '2026-02-12 10:27:40'),
(2, 6, 3, 3, '2026-02-12 10:27:40'),
(3, 6, 5, 1, '2026-02-12 10:27:40'),
(4, 6, 11, 2, '2026-02-12 10:27:40'),
(8, 7, 4, 1, '2026-02-12 10:27:40'),
(9, 7, 2, 3, '2026-02-12 10:27:40'),
(10, 7, 6, 2, '2026-02-12 10:27:40'),
(11, 7, 7, 5, '2026-02-12 10:27:40'),
(15, 8, 1, 3, '2026-02-12 10:27:40'),
(16, 8, 8, 2, '2026-02-12 10:27:40'),
(17, 8, 9, 4, '2026-02-12 10:27:40'),
(18, 8, 3, 1, '2026-02-12 10:27:40'),
(22, 10, 5, 3, '2026-02-12 10:27:40'),
(23, 10, 10, 2, '2026-02-12 10:27:40'),
(24, 10, 4, 1, '2026-02-12 10:27:40');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lista_tipus`
--

CREATE TABLE `lista_tipus` (
  `id` int(11) NOT NULL,
  `tipus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `lista_tipus`
--

INSERT INTO `lista_tipus` (`id`, `tipus`) VALUES
(5, 'Droppolt'),
(1, 'Kedvenc'),
(2, 'Megnézendő'),
(4, 'Nem tetszett'),
(3, 'Tetszett');

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
  `jogosultsag` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `profil_adatlap`
--

INSERT INTO `profil_adatlap` (`id`, `email`, `felhasznalonev`, `jelszo`, `salt`, `profilkep`, `jogosultsag`) VALUES
(1, 'tulajdonos@animeheaven.hu', 'Tulaj', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '/profiles/tulaj.jpg', 5),
(2, 'admin@animeheaven.hu', 'Admin', '$2a$10$abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQ', '$2a$10$abcdefghijklmnopqrs', '/profiles/admin.jpg', 4),
(3, 'foszerkeszto@animeheaven.hu', 'FőSzerkesztő', '$2a$10$xyz123abc456def789ghi012jkl345mno678pqr901stu234vwx567', '$2a$10$xyz123abc456def789g', '/profiles/chief-editor.jpg', 3),
(4, 'szerkeszto1@animeheaven.hu', 'Szerkesztő_Akira', '$2a$10$pqr901stu234vwx567yzA012BCD345EFG678HIJ901KLM234NOP567', '$2a$10$pqr901stu234vwx567y', '/profiles/editor1.jpg', 2),
(5, 'szerkeszto2@animeheaven.hu', 'Szerkesztő_Rei', '$2a$10$QRS345TUV678WXY901ZAB234CDE567FGH890IJK123LMN456OPQ789', '$2a$10$QRS345TUV678WXY901Z', '/profiles/editor2.jpg', 2),
(6, 'felhasznalo1@gmail.com', 'AnimeFan2024', '$2a$10$STU678VWX901YZA234BCD567EFG890HIJ123KLM456NOP789QRS012', '$2a$10$STU678VWX901YZA234B', '/profiles/user1.jpg', 1),
(7, 'felhasznalo2@gmail.com', 'OtakuMaster', '$2a$10$TUV890WXY123ZAB456CDE789FGH012IJK345LMN678OPQ901RST234', '$2a$10$TUV890WXY123ZAB456C', '/profiles/user2.jpg', 1),
(8, 'felhasznalo3@gmail.com', 'MangaReader', '$2a$10$UVW012XYZ345ABC678DEF901GHI234JKL567MNO890PQR123STU456', '$2a$10$UVW012XYZ345ABC678D', '/profiles/user3.jpg', 1),
(9, 'inaktiv@example.com', 'InaktívUser', '$2a$10$VWX234YZA567BCD890EFG123HIJ456KLM789NOP012QRS345TUV678', '$2a$10$VWX234YZA567BCD890E', NULL, 0),
(10, 'tesztuser@animeheaven.hu', 'TesztUser', '$2a$10$WXY456ZAB789CDE012FGH345IJK678LMN901OPQ234RST567UVW890', '$2a$10$WXY456ZAB789CDE012F', '/profiles/test.jpg', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reszek`
--

CREATE TABLE `reszek` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `sorrend` int(11) DEFAULT NULL,
  `resz` varchar(25) DEFAULT NULL,
  `lathatosag` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `reszek`
--

INSERT INTO `reszek` (`id`, `anime_id`, `sorrend`, `resz`, `lathatosag`) VALUES
(1, 1, 1, '1. rész', 1),
(2, 1, 2, '2. rész', 1),
(3, 1, 3, '3. rész', 1),
(4, 1, 4, '4. rész', 1),
(5, 1, 5, '5. rész', 1),
(6, 1, 6, '6. rész', 1),
(7, 1, 7, '7. rész', 1),
(8, 1, 8, '8. rész', 1),
(9, 1, 9, '9. rész', 1),
(10, 1, 10, '10. rész', 1),
(11, 1, 11, '11. rész', 1),
(12, 1, 12, '12. rész', 1),
(16, 2, 1, '1. rész', 1),
(17, 2, 2, '2. rész', 1),
(18, 2, 3, '3. rész', 1),
(19, 2, 4, '4. rész', 1),
(20, 2, 5, '5. rész', 1),
(21, 2, 6, '6. rész', 1),
(22, 2, 7, '7. rész', 1),
(23, 2, 8, '8. rész', 1),
(24, 2, 9, '9. rész', 1),
(25, 2, 10, '10. rész', 1),
(26, 2, 11, '11. rész', 1),
(27, 2, 12, '12. rész', 1),
(28, 2, 13, '13. rész', 1),
(31, 3, 1, '1. rész', 1),
(32, 3, 2, '2. rész', 1),
(33, 3, 3, '3. rész', 1),
(34, 3, 4, '4. rész', 1),
(35, 3, 5, '5. rész', 1),
(36, 3, 6, '6. rész', 1),
(37, 3, 7, '7. rész', 1),
(38, 3, 8, '8. rész', 1),
(39, 3, 9, '9. rész', 1),
(40, 3, 10, '10. rész', 1),
(41, 3, 11, '11. rész', 1),
(42, 3, 12, '12. rész', 1),
(43, 3, 13, '13. rész', 1),
(44, 3, 14, '14. rész', 1),
(45, 3, 15, '15. rész', 1),
(46, 3, 16, '16. rész', 1),
(47, 3, 17, '17. rész', 1),
(48, 3, 18, '18. rész', 1),
(49, 3, 19, '19. rész', 1),
(50, 3, 20, '20. rész', 1),
(51, 3, 21, '21. rész', 1),
(52, 3, 22, '22. rész', 1),
(53, 3, 23, '23. rész', 1),
(54, 3, 24, '24. rész', 1),
(62, 4, 1, '1. rész', 1),
(63, 4, 2, '2. rész', 1),
(64, 4, 3, '3. rész', 1),
(65, 4, 4, '4. rész', 1),
(66, 4, 5, '5. rész', 1),
(67, 4, 6, '6. rész', 1),
(68, 4, 7, '7. rész', 1),
(69, 4, 8, '8. rész', 1),
(70, 4, 9, '9. rész', 1),
(71, 4, 10, '10. rész', 1),
(72, 4, 11, '11. rész', 1),
(73, 4, 12, '12. rész', 1),
(77, 5, 1, '1. rész', 1),
(78, 5, 2, '2. rész', 1),
(79, 5, 3, '3. rész', 1),
(80, 5, 4, '4. rész', 1),
(81, 5, 5, '5. rész', 1),
(82, 5, 6, '6. rész', 1),
(83, 5, 7, '7. rész', 1),
(84, 5, 8, '8. rész', 1),
(85, 5, 9, '9. rész', 1),
(86, 5, 10, '10. rész', 1),
(87, 5, 11, '11. rész', 1),
(88, 5, 12, '12. rész', 1),
(89, 5, 13, '13. rész', 1),
(90, 5, 14, '14. rész', 1),
(91, 5, 15, '15. rész', 1),
(92, 5, 16, '16. rész', 1),
(93, 5, 17, '17. rész', 1),
(94, 5, 18, '18. rész', 1),
(95, 5, 19, '19. rész', 1),
(96, 5, 20, '20. rész', 1),
(97, 5, 21, '21. rész', 1),
(98, 5, 22, '22. rész', 1),
(99, 5, 23, '23. rész', 1),
(100, 5, 24, '24. rész', 1),
(101, 5, 25, '25. rész', 1),
(102, 5, 26, '26. rész', 1),
(103, 5, 27, '27. rész', 1),
(104, 5, 28, '28. rész', 1),
(105, 5, 29, '29. rész', 1),
(106, 5, 30, '30. rész', 1),
(107, 5, 31, '31. rész', 1),
(108, 5, 32, '32. rész', 1),
(109, 5, 33, '33. rész', 1),
(110, 5, 34, '34. rész', 1),
(111, 5, 35, '35. rész', 1),
(112, 5, 36, '36. rész', 1),
(113, 5, 37, '37. rész', 1),
(140, 6, 1, '1. rész', 1),
(141, 6, 2, '2. rész', 1),
(142, 6, 3, '3. rész', 1),
(143, 6, 4, '4. rész', 1),
(144, 6, 5, '5. rész', 1),
(145, 6, 6, '6. rész', 1),
(146, 6, 7, '7. rész', 1),
(147, 6, 8, '8. rész', 1),
(148, 6, 9, '9. rész', 1),
(149, 6, 10, '10. rész', 1),
(150, 6, 11, '11. rész', 1),
(151, 6, 12, '12. rész', 1),
(155, 7, 1, '1. rész', 1),
(156, 7, 2, '2. rész', 1),
(157, 7, 3, '3. rész', 1),
(158, 7, 4, '4. rész', 1),
(159, 7, 5, '5. rész', 1),
(160, 7, 6, '6. rész', 1),
(161, 7, 7, '7. rész', 1),
(162, 7, 8, '8. rész', 1),
(163, 7, 9, '9. rész', 1),
(164, 7, 10, '10. rész', 1),
(165, 7, 11, '11. rész', 1),
(166, 7, 12, '12. rész', 1),
(170, 8, 1, 'Film', 1),
(171, 9, 1, '1. rész', 1),
(172, 9, 2, '2. rész', 1),
(173, 9, 3, '3. rész', 1),
(174, 9, 4, '4. rész', 1),
(175, 9, 5, '5. rész', 1),
(176, 9, 6, '6. rész', 1),
(177, 9, 7, '7. rész', 1),
(178, 9, 8, '8. rész', 1),
(179, 9, 9, '9. rész', 1),
(180, 9, 10, '10. rész', 1),
(181, 9, 11, '11. rész', 1),
(182, 9, 12, '12. rész', 1),
(186, 10, 1, '1. rész', 1),
(187, 10, 2, '2. rész', 1),
(188, 10, 3, '3. rész', 1),
(189, 10, 4, '4. rész', 1),
(190, 10, 5, '5. rész', 1),
(191, 10, 6, '6. rész', 1),
(192, 10, 7, '7. rész', 1),
(193, 10, 8, '8. rész', 1),
(194, 10, 9, '9. rész', 1),
(195, 10, 10, '10. rész', 1),
(196, 10, 11, '11. rész', 1),
(197, 10, 12, '12. rész', 1),
(201, 11, 1, '1. rész', 1),
(202, 11, 2, '2. rész', 1),
(203, 11, 3, '3. rész', 1),
(204, 11, 4, '4. rész', 1),
(205, 11, 5, '5. rész', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `studio_lista`
--

CREATE TABLE `studio_lista` (
  `id` int(11) NOT NULL,
  `studio_nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `studio_lista`
--

INSERT INTO `studio_lista` (`id`, `studio_nev`) VALUES
(3, '100studio'),
(2, '10Gauge'),
(6, '1IN'),
(8, '33 Collective'),
(7, '3xCube'),
(5, '5 Inc.'),
(819, '717 Animation Studio'),
(4, '7doc'),
(1, '81 Produce'),
(818, '8bit'),
(11, 'A-1 Pictures'),
(44, 'A-Line'),
(39, 'A-Real'),
(18, 'A.C.G.T.'),
(63, 'ABC Animation Studio'),
(40, 'ABC Frontier'),
(52, 'AC-Bu'),
(43, 'ACC Production'),
(38, 'Acca effe'),
(15, 'Actas'),
(37, 'ADK Emotions NY Inc.'),
(9, 'ADV Films'),
(33, 'Agent 21'),
(19, 'Ai Addiction'),
(57, 'Ai Yume Mai'),
(12, 'AIC'),
(20, 'AIC ASTA'),
(34, 'AIC Build'),
(42, 'AIC Classic'),
(26, 'AIC PLUS+'),
(68, 'AIC Project'),
(83, 'AIC Takarazuka'),
(74, 'Aiko'),
(56, 'AION Studio'),
(58, 'Aiti St.'),
(29, 'Akatsuki'),
(821, 'Akatsuki Media Studio'),
(78, 'Albacrow'),
(59, 'Alfred Imageworks'),
(60, 'Alice Production'),
(64, 'Alke'),
(25, 'Alpha Animation'),
(17, 'Alpha Group'),
(75, 'Alpha Pictures'),
(32, 'AlphaPolis'),
(73, 'Amarcord'),
(72, 'Amineworks'),
(822, 'Amuse Creative Studio'),
(62, 'An DerCen'),
(53, 'AN Entertainment'),
(45, 'Andraft'),
(79, 'ANIDO FILM'),
(51, 'Anima&Co.'),
(35, 'Animaruya'),
(67, 'Animation 501'),
(22, 'Animation Do'),
(76, 'Animation Lab Japan'),
(41, 'Animation Staff Room'),
(55, 'Anime Friend'),
(65, 'Anime Tokyo'),
(69, 'ANiMix Project'),
(10, 'Aniplex of America'),
(80, 'Ankama Animations'),
(47, 'Anon Pictures'),
(48, 'Anpro'),
(23, 'APPP'),
(13, 'AQUA ARIS'),
(46, 'Arch'),
(82, 'Arcs Create'),
(61, 'Arcturus'),
(36, 'ARCUS'),
(54, 'ARECT'),
(77, 'Ark'),
(24, 'arma bianca'),
(21, 'Artmic'),
(16, 'Asahi Production'),
(28, 'Ascendent Animation'),
(30, 'Ascension'),
(14, 'Ashi Productions'),
(27, 'AT-2'),
(823, 'Atelier Peuplier'),
(50, 'Atelier Pontdarc'),
(71, 'Atorie A.B.C.'),
(70, 'Atti Production'),
(49, 'Au Praxinoscope'),
(820, 'Aubeck'),
(824, 'Aura Studio'),
(66, 'Aurora Animation'),
(81, 'Aurum Production'),
(31, 'AXsiZ'),
(825, 'Azuki'),
(93, 'B.CMAY PICTURES'),
(827, 'B.COOL STUDIO'),
(104, 'B&T'),
(101, 'Bakken Record'),
(85, 'Bandai Entertainment'),
(89, 'Bandai Namco Music Live'),
(95, 'Bandai Visual USA'),
(106, 'Bebow'),
(121, 'Beijing Rocen Digital'),
(118, 'Beijing Sunchime Happy Culture Company'),
(111, 'Bellnox Films'),
(116, 'Benlai Pictures'),
(826, 'BENTEN Film'),
(120, 'Bianyue Culture'),
(109, 'Bibury Animation CG'),
(94, 'Big Firebird Culture'),
(113, 'Big Pine Animation Studio'),
(108, 'Big Wing'),
(828, 'BIGBIGSUN'),
(107, 'Bigcat Studio'),
(84, 'bilibili'),
(119, 'Bitgang'),
(112, 'Blaze Studio'),
(91, 'Blue bread'),
(98, 'Blue Cat'),
(114, 'Blue Moon Studio Inc.'),
(115, 'Blue Note'),
(99, 'BOMB! CUTE! BOMB!'),
(86, 'Bones'),
(110, 'Borutong'),
(96, 'Bouncy'),
(103, 'Boyan Pictures'),
(92, 'Bridge'),
(117, 'Brio Animation'),
(88, 'BS Fuji'),
(90, 'BS NTV'),
(100, 'BS TV Tokyo'),
(105, 'Buemon'),
(102, 'BUG FILMS'),
(829, 'bushes'),
(87, 'Bushiroad'),
(97, 'BYMENT'),
(153, 'C and R'),
(124, 'C-Station'),
(152, 'C&S Production'),
(138, 'Cafe de Jeilhouse'),
(136, 'CANON RECORDINGS'),
(131, 'CBS Sony Group'),
(125, 'CCTV Animation Group'),
(145, 'CD Projekt Red'),
(151, 'Chenghuang Yinghua'),
(140, 'Children\'s Corner'),
(155, 'Chimu Jika Hatsuden'),
(132, 'Chiptune'),
(127, 'CHOCOLATE'),
(144, 'Chongzhuo Animation'),
(150, 'CinePix'),
(148, 'Circle Tribute'),
(146, 'Circus Production'),
(129, 'CLAP'),
(130, 'Cloud Hearts'),
(134, 'Coastline Animation Studio'),
(141, 'Cocktail Media'),
(137, 'cogitoworks'),
(126, 'Collaboration Works'),
(154, 'Concept Films'),
(128, 'Craftar Studios'),
(142, 'Creative House Pocket'),
(133, 'Creative Power Entertaining'),
(139, 'Creators Dot Com'),
(122, 'Creators in Pack'),
(149, 'CREi'),
(123, 'Crunchyroll SC Anime Fund'),
(143, 'CUC Anima'),
(135, 'CUCURI'),
(147, 'Cutie Bee'),
(171, 'D.ROCK-ART'),
(182, 'D\'ART Shtajio'),
(188, 'Da Huoniao Donghua'),
(164, 'Daewon Media'),
(181, 'Dai-Ichi Douga'),
(173, 'Dancing CG Studio'),
(162, 'DandeLion Animation Studio'),
(167, 'Dangun Pictures'),
(172, 'Datama Film'),
(158, 'David Production'),
(187, 'Dawn Animation'),
(185, 'Days'),
(183, 'Daysview Animation'),
(175, 'Dazzling Star'),
(168, 'DC Impression Vision'),
(163, 'Decovocal'),
(184, 'Delpic'),
(170, 'Deregula'),
(169, 'DiC Entertainment'),
(174, 'Digital Network Animation'),
(156, 'Discotek Media'),
(159, 'Disney Platform Distribution'),
(179, 'Diwphalanx Records'),
(178, 'Djinn Power'),
(157, 'DLE'),
(160, 'DMM.futureworks'),
(161, 'Dongwoo A&E'),
(180, 'Dongyang Animation'),
(186, 'Drawing and Manual'),
(165, 'Dream Entertainment'),
(176, 'drop'),
(830, 'dugout'),
(177, 'Dyna Method'),
(166, 'Dynamo Pictures'),
(212, 'e-notion'),
(192, 'E&G Films'),
(196, 'Eallin'),
(194, 'East Fish Studio'),
(190, 'Echoes'),
(195, 'EDGE'),
(202, 'Egg'),
(189, 'Eiken'),
(201, 'EKACHI EPILKA'),
(210, 'Ekakiya'),
(199, 'Ekura Animal'),
(200, 'Elias'),
(198, 'Emon'),
(193, 'Encourage Films'),
(191, 'ENGI'),
(197, 'Enishiya'),
(204, 'Enjin Productions'),
(209, 'Enzo Animation'),
(203, 'Escape Velocity Animation'),
(207, 'Eshoya Honpo'),
(211, 'Ether Kitten'),
(208, 'evg'),
(206, 'Executive Decision'),
(213, 'Ezo Kobo'),
(205, 'Ezόla'),
(831, 'Fantawild Animation'),
(215, 'Fanworks'),
(214, 'feel.'),
(217, 'Felix Film'),
(218, 'Fenz'),
(224, 'Fever Creations'),
(223, 'flag Co.'),
(216, 'Flat Studio'),
(222, 'Flying Fish Studio'),
(220, 'Front Line'),
(219, 'Fuji Creative'),
(221, 'Fukushima Gaina'),
(238, 'G-angle'),
(241, 'G-Lam'),
(247, 'G.P Entertainment'),
(249, 'G&G Direction'),
(250, 'Ga-Crew'),
(237, 'Gaina'),
(229, 'Gainax'),
(248, 'Gainax Kyoto'),
(255, 'Gambit'),
(234, 'GANSIS'),
(245, 'GARDEN LODGE'),
(254, 'Garyuu Studio'),
(231, 'Gathering'),
(261, 'GAV Video'),
(235, 'Geek Toys'),
(228, 'Geidai Animation'),
(244, 'GEMBA'),
(225, 'Geneon Entertainment USA'),
(230, 'Geneon Universal Entertainment'),
(239, 'Geno Studio'),
(243, 'Gift-o’-Animation'),
(246, 'Giga Production'),
(253, 'Ginga Teikoku'),
(832, 'GoHands'),
(260, 'Gonzino'),
(226, 'Gonzo'),
(236, 'Good Smile Film'),
(262, 'Gosay Studio'),
(233, 'Graphinica'),
(242, 'Gravity Well'),
(232, 'Green Bunny'),
(256, 'Green Monster Team'),
(258, 'Griot Groove'),
(252, 'GRIZZLY'),
(263, 'Grom'),
(227, 'Group TAC'),
(240, 'Grouper Productions'),
(257, 'GUMBLAB'),
(259, 'Gunners'),
(251, 'Guton Animation Studio'),
(282, 'Hai An Xian Donghua Gongzuo Shi'),
(272, 'Hand to Mouse.'),
(284, 'Hanjin Animation'),
(264, 'Haoliners Animation League'),
(266, 'Happinet Phantom Studios'),
(276, 'Happy Toon'),
(279, 'happyproject'),
(269, 'Hayabusa Film'),
(281, 'Hei Chao Yinghua'),
(283, 'helo.inc'),
(268, 'Hifumi'),
(278, 'Hifumi Shobo'),
(267, 'High Energy Studio'),
(275, 'HM Heros'),
(833, 'Hololive Production'),
(280, 'Honoo'),
(265, 'Hoods Entertainment'),
(271, 'Horannabi'),
(270, 'Horgos Coloroom Pictures'),
(273, 'HS Pictures Studio'),
(277, 'Hu Po Donghua'),
(274, 'Husio Studio'),
(292, 'I.Gzwei'),
(287, 'Iconix Entertainment'),
(299, 'iDRAGONS Creative Studio'),
(297, 'iDreamSky'),
(288, 'Ijigen Tokyo'),
(304, 'IKK Room'),
(286, 'ILCA'),
(294, 'Image House'),
(301, 'Imagestone Inc.'),
(302, 'Imagica Digitalscape'),
(305, 'Imagica Imageworks'),
(289, 'Imagica Infos'),
(291, 'IMAGICA Lab.'),
(290, 'Imagin'),
(293, 'Imagineer'),
(296, 'Infinity Vision'),
(298, 'Inugoya'),
(285, 'iQIYI'),
(303, 'Ishibashi Planning'),
(300, 'Ishimori Entertainment'),
(295, 'Issen'),
(311, 'J.C.F.'),
(313, 'J.K.I'),
(308, 'J.T.P.P.'),
(312, 'Japan Taps'),
(309, 'JCF'),
(315, 'Jichitai Anime'),
(316, 'JJJOY Animation Studios'),
(314, 'JOF'),
(310, 'Joker Films'),
(306, 'Jumondou'),
(307, 'Jumonji'),
(342, 'K contents'),
(348, 'Kaca Entertainment'),
(318, 'Kachidoki Studio'),
(341, 'Kachigarasu'),
(339, 'Kagome Company'),
(340, 'KaKa Technology Studio'),
(343, 'Kami Kukan'),
(320, 'Kamikaze Douga'),
(324, 'Kanaban Graphics'),
(349, 'Karasfilms'),
(322, 'Kate Arrow'),
(338, 'Keica'),
(345, 'Kent House'),
(335, 'Kid+Kid Animation Studio'),
(346, 'Kigumi'),
(333, 'Kill Time Communication'),
(350, 'Kinematics'),
(336, 'Kitchen Ltd.'),
(323, 'Kitty Film Mitaka Studio'),
(347, 'KKC Animation Production'),
(325, 'Koei'),
(326, 'Koinrush Studio'),
(332, 'Konami animation'),
(328, 'Konami Cross Media NY'),
(330, 'Korean Academy of Film Arts'),
(319, 'KSS'),
(331, 'Kuaikan Manhua'),
(329, 'Kung Fu Frog Animation'),
(321, 'Kuri Jikken Manga Koubou'),
(337, 'Kusama Art'),
(317, 'Kyoto Animation'),
(327, 'Kyoto Broadcasting System'),
(334, 'Kyoto University of the Arts'),
(344, 'Kyushu Network Animation'),
(363, 'l-a-unch・BOX'),
(354, 'L²Studio'),
(367, 'Lan Ying Yingshi'),
(355, 'Lapin Track'),
(358, 'Larx Entertainment'),
(353, 'Lay-duce'),
(366, 'LB Commerce'),
(369, 'Lead'),
(352, 'Lerche'),
(370, 'LEVELS'),
(356, 'Light Chaser Animation Studios'),
(365, 'Lingsanwu Animation'),
(359, 'Liu Cong Animation'),
(368, 'Liu Lin Yi Dongman'),
(364, 'Live2D Creative Studio'),
(360, 'Liyu Culture'),
(361, 'Locus Corporation'),
(351, 'Lune-Pictures'),
(362, 'LX Animation Studio'),
(357, 'Lyrics'),
(412, 'M&M'),
(392, 'Maboroshi Koubou'),
(372, 'Madhouse'),
(404, 'Magia Doraglier'),
(376, 'Magic Bus'),
(373, 'Magic Capsule'),
(416, 'Magma Studio'),
(387, 'Maho Film'),
(378, 'Maiden Japan'),
(388, 'Making Animation'),
(400, 'Manga Productions'),
(380, 'Manglobe'),
(375, 'MAPPA'),
(403, 'Maro Studio'),
(417, 'Marone'),
(409, 'maroyaka'),
(407, 'Maru Animation'),
(382, 'Marvelous AQL'),
(385, 'Marza Animation Planet'),
(405, 'MASTER LIGHTS'),
(418, 'MAT'),
(384, 'Maxilla'),
(398, 'MB planning'),
(374, 'Mediabank'),
(393, 'MediaNet Pictures'),
(399, 'Melissa'),
(389, 'Meltdown'),
(415, 'MI'),
(395, 'Micro House'),
(379, 'miHoYoAnime'),
(410, 'Miki Production'),
(411, 'Mikimoto Production'),
(390, 'Mili Pictures'),
(381, 'Millepensee'),
(386, 'Mimoid'),
(391, 'Minakata Laboratory'),
(397, 'Miota'),
(383, 'Mirai Film'),
(420, 'Mirai Fusion'),
(414, 'Miyuki Production'),
(402, 'MMT Technology'),
(413, 'MoMo Production'),
(401, 'Momoi Planning'),
(394, 'monofilmo'),
(419, 'Mook DLE'),
(406, 'Moss Design Unit'),
(396, 'Mousou Senka'),
(371, 'Movic'),
(408, 'Multi Access Company'),
(377, 'Mushi Production'),
(432, 'NADA Holdings'),
(424, 'Nagoya Broadcasting Network'),
(438, 'Nagoya University of Arts and Sciences'),
(440, 'Namu Animation'),
(439, 'NANON CREATIVE'),
(436, 'Natural High'),
(834, 'NAZ'),
(441, 'Neft Film'),
(444, 'Nekonigashi Inc.'),
(425, 'NetEase'),
(427, 'Netflix'),
(435, 'Netmarble'),
(446, 'Network Kouenji Studio'),
(429, 'New Generation'),
(443, 'NEWON'),
(449, 'Next'),
(431, 'Nexus'),
(434, 'NHK Art'),
(422, 'NHK Enterprises'),
(835, 'Nice Boat Animation'),
(430, 'Niceboat Animation'),
(442, 'Nichicaline'),
(428, 'NichiNare'),
(421, 'Nihon Ad Systems'),
(447, 'Nippon Ramayana Film'),
(437, 'Nippon TV Douga'),
(448, 'Nishiki Studio'),
(445, 'nobishiro lab'),
(426, 'Nomad'),
(433, 'Noovo'),
(423, 'NuTech Digital'),
(461, 'October Media'),
(454, 'Oddjob'),
(469, 'Odolttogi'),
(459, 'Office AO'),
(470, 'Office DCI'),
(456, 'Office No. 8'),
(451, 'Office TakeOut'),
(460, 'Okumaza'),
(457, 'Okuruto Noboru'),
(450, 'OLM'),
(453, 'OLM Digital'),
(462, 'Onion Studio'),
(455, 'Onionskin'),
(466, 'ONIRO'),
(458, 'ORADA COMPANY'),
(452, 'Orange'),
(464, 'ORCEN'),
(468, 'ORENDA'),
(471, 'Original Dream'),
(463, 'Outline'),
(465, 'Oyster'),
(467, 'OZ'),
(497, 'P core'),
(482, 'Painting Dream'),
(510, 'Pak Production'),
(488, 'Palm Studio'),
(506, 'Pancake'),
(505, 'Paper Animation'),
(499, 'Paper Plane Animation Studio'),
(493, 'Passion Paint Animation'),
(489, 'Pb Animation'),
(480, 'Peak Hunt'),
(507, 'Penta Show Studios'),
(481, 'pH Studio'),
(514, 'Picona'),
(477, 'Picture Magic'),
(476, 'Pie in the sky'),
(515, 'Piko Studio'),
(509, 'Pink Cat'),
(483, 'Pinkfong'),
(486, 'Piso Studio'),
(502, 'Planet Cartoon'),
(512, 'Planet Nemo Animation'),
(484, 'Platinum Vision'),
(487, 'Plum'),
(492, 'Pmats9 studio'),
(500, 'Point Pictures'),
(495, 'Pollyanna Graphics'),
(513, 'Poly Animation'),
(503, 'Polygon Magic'),
(473, 'Polygon Pictures'),
(475, 'Pony Canyon Enterprises'),
(516, 'PoPoCo'),
(491, 'Pops Inc.'),
(511, 'Potato House'),
(479, 'PP Project'),
(485, 'PRA'),
(490, 'PrimeTime'),
(498, 'Production D.M.H'),
(501, 'production doA'),
(472, 'Production I.G'),
(478, 'Production Reed'),
(504, 'Production Wave'),
(474, 'Project No.9'),
(496, 'Project Studio Q'),
(508, 'Project Team Muu'),
(494, 'Project Team Sarah'),
(521, 'Qianqi Animation'),
(520, 'Qingxiang Culture'),
(523, 'Qiying Animation'),
(518, 'qmotri'),
(519, 'Quad'),
(522, 'Qualia Animation'),
(525, 'QualiArts'),
(524, 'Quebico'),
(517, 'Qzil.la'),
(531, 'R11R'),
(534, 'Rabbit Machine'),
(526, 'Radix'),
(536, 'Raiose'),
(543, 'Rankin/Bass Productions'),
(540, 'Ranzai Studio'),
(541, 'REALTHING'),
(528, 'Red Dog Culture House'),
(542, 'Reiki Eyes Animation'),
(538, 'Reirs'),
(530, 'Revoroot'),
(527, 'RG Animation Studios'),
(537, 'Rhythmos'),
(535, 'Ripromo'),
(529, 'Rising Force'),
(539, 'Rock\'n Roll Mountain'),
(533, 'ROLL2'),
(532, 'Ryuu M\'s'),
(675, 'Saber Works'),
(609, 'Saetta'),
(573, 'Saigo no Shudan'),
(655, 'Sakura Eiga-sha'),
(554, 'Sammy'),
(644, 'Samsara Animation Studio'),
(656, 'Sankaku'),
(557, 'SANZIGEN'),
(677, 'Sasayuri'),
(642, 'Scarlett'),
(568, 'Science SARU'),
(578, 'Scooter Films'),
(597, 'SEK Studios'),
(579, 'SELFISH'),
(552, 'Seven'),
(563, 'Seven Arcs'),
(610, 'Shanghai Hippo Animation'),
(606, 'Sharefun Studio'),
(683, 'Shenfan Animation'),
(577, 'Shengying Animation'),
(591, 'Shenman Entertainment'),
(588, 'Shimogumi'),
(548, 'Shin-Ei Animation'),
(600, 'Shindeban Film'),
(617, 'Shinjukuza'),
(580, 'Shion'),
(565, 'Shirogumi'),
(612, 'Shochiku Animation Institute'),
(551, 'Showgate'),
(545, 'Shueisha'),
(570, 'Shuka'),
(605, 'Shura'),
(613, 'Shykeumo Animation Studio'),
(626, 'SIDO LIMITED'),
(564, 'Signal.MD'),
(628, 'SIGNIF'),
(593, 'Silver'),
(550, 'SILVER LINK.'),
(692, 'SJYNEXCUS'),
(674, 'Skydance'),
(587, 'SMIRAL Animation'),
(571, 'Sogo Vision'),
(652, 'Soigne'),
(676, 'soket'),
(582, 'Sola Digital Arts'),
(602, 'Sola Entertainment'),
(632, 'Sonsan Kikaku'),
(621, 'Sony Interactive Entertainment'),
(560, 'Sony Pictures Entertainment'),
(660, 'Space-X'),
(648, 'Sprite Animation Studios'),
(623, 'Square Enix Visual Works'),
(657, 'Square Pictures'),
(599, 'Staple Entertainment'),
(681, 'Starlight Entertainment'),
(659, 'StarLink'),
(615, 'Stay Luck'),
(604, 'Stereotype'),
(647, 'Stingray'),
(691, 'Story Effect'),
(566, 'Streamline Pictures'),
(558, 'Studio 1st'),
(637, 'STUDIO 8 DOGS'),
(556, 'Studio 9 Maiami'),
(572, 'Studio A-CAT'),
(638, 'Studio A. Craft'),
(678, 'Studio Add'),
(665, 'Studio AWAKE'),
(685, 'Studio B&M'),
(569, 'Studio BAZOOKA'),
(627, 'Studio Bingo'),
(589, 'Studio Blanc.'),
(650, 'Studio Bogey'),
(618, 'Studio Boogie Nights'),
(696, 'Studio CA'),
(608, 'Studio CANDY BOX'),
(698, 'Studio Carbuncle'),
(684, 'Studio Cats'),
(598, 'Studio Chizu'),
(671, 'Studio Clutch'),
(555, 'Studio Comet'),
(646, 'Studio Core'),
(592, 'Studio Crocodile'),
(680, 'Studio D-Volt'),
(620, 'Studio Daisy'),
(546, 'Studio Deen'),
(658, 'Studio Dolphin Night'),
(672, 'Studio Dotou'),
(639, 'Studio Easter'),
(653, 'Studio Eight Color'),
(594, 'Studio Elle'),
(567, 'Studio Eromatick'),
(561, 'Studio Fantasia'),
(624, 'Studio Flad'),
(679, 'Studio Fusion'),
(689, 'Studio Gadget'),
(640, 'Studio Gazelle'),
(559, 'Studio Ghibli'),
(693, 'Studio Guts'),
(695, 'Studio Hakk'),
(673, 'Studio Harutonari'),
(690, 'studio hb'),
(553, 'Studio Hibari'),
(682, 'Studio Himalaya'),
(576, 'Studio Hokiboshi'),
(667, 'Studio Izena'),
(584, 'Studio Jemi'),
(686, 'Studio Jin'),
(603, 'Studio Kaab'),
(633, 'Studio Kafka'),
(697, 'Studio Khronos'),
(619, 'Studio Kingyoiro'),
(654, 'Studio Lemon'),
(636, 'Studio LEO'),
(574, 'Studio Live'),
(666, 'Studio Lotus'),
(611, 'Studio M2'),
(670, 'studio maf'),
(645, 'Studio March'),
(549, 'Studio Mausu'),
(669, 'Studio Maybe'),
(663, 'Studio Mir'),
(575, 'Studio Moriken'),
(586, 'studio MOTHER'),
(649, 'Studio NOIX'),
(596, 'Studio OX'),
(607, 'Studio Palette'),
(547, 'Studio Pierrot'),
(583, 'Studio Placebo'),
(625, 'Studio Ponoc'),
(662, 'Studio Ppuri'),
(631, 'Studio Prokion'),
(630, 'Studio Ranmaru'),
(601, 'Studio RE:Map'),
(590, 'Studio Rikka'),
(661, 'Studio Shelter'),
(616, 'Studio Soul'),
(641, 'Studio Ten'),
(634, 'Studio Ten Carat'),
(664, 'Studio UGOKI'),
(581, 'Studio VOLN'),
(694, 'Studio W.Baba'),
(701, 'Studio WHO'),
(699, 'Studio World'),
(629, 'studio YOG'),
(700, 'Studio Z5'),
(687, 'STUDIO6\'oN'),
(668, 'studioDOT'),
(622, 'Sublimation'),
(635, 'Sugar Boy'),
(688, 'Sumomo Film'),
(614, 'Sunflowers'),
(651, 'Sunny Gapen'),
(544, 'Sunrise'),
(585, 'Sunrise Beyond'),
(595, 'Super Normal Studio'),
(643, 'Suspenders'),
(562, 'Suzuki Mirano'),
(708, 'T-Rex'),
(736, 'Taikong Works'),
(731, 'Takahashi Studio'),
(739, 'TAKI Corporation'),
(714, 'Takun Manga Box'),
(713, 'Tamabi'),
(750, 'Tang Cai Zhaopin'),
(752, 'TanKong Pictures'),
(749, 'TANOsim'),
(738, 'Taomee'),
(742, 'TAP'),
(704, 'TBS'),
(717, 'TCJ'),
(747, 'Team OneOne'),
(761, 'Team TillDawn'),
(740, 'team Yamahitsuji'),
(732, 'Team YokkyuFuman'),
(728, 'Teatro Nishi Tokyo Studio'),
(757, 'TEC'),
(836, 'Telescreen'),
(760, 'Ten Tails Animation'),
(705, 'Tencent Video'),
(741, 'Tengu Kobo'),
(712, 'The Answer Studio'),
(751, 'The Gate Studio'),
(759, 'The Monk Studios'),
(727, 'Thundray'),
(735, 'Tianshi Wenhua'),
(758, 'TiMi Studio Group'),
(703, 'TMS Entertainment'),
(709, 'TNK'),
(764, 'TOCSIS'),
(702, 'Toei Animation'),
(748, 'Tohjak'),
(706, 'TOHO'),
(707, 'TOHO animation'),
(721, 'TOHO animation STUDIO'),
(729, 'Tokyo Movie'),
(734, 'Tokyo Polytechnic University'),
(737, 'Tokyo TV Douga'),
(719, 'Tokyu Agency'),
(746, 'Tomason'),
(730, 'Tomovies'),
(745, 'Tonko House'),
(724, 'Topcraft'),
(715, 'Toranoana'),
(718, 'Toshiba EMI'),
(722, 'Transcendence Picture'),
(723, 'Trash Studio'),
(711, 'Triangle Staff'),
(725, 'TriF Studio'),
(710, 'Trigger'),
(726, 'TrioPen Studio'),
(837, 'TROYCA'),
(743, 'Tryforce'),
(755, 'Tsubo Production'),
(716, 'Tsuburaya Productions'),
(720, 'Tsuchida Productions'),
(763, 'Tsukimidou'),
(744, 'TthunDer Animation'),
(733, 'TV Douga'),
(754, 'TV Tokyo Communications'),
(756, 'Twenty First'),
(762, 'Twilight Studio'),
(753, 'TypeZero'),
(772, 'UchuPeople'),
(765, 'ufotable'),
(769, 'UKA'),
(766, 'Ultra Super Pictures'),
(771, 'Unend'),
(770, 'Urban Product'),
(767, 'Urban Vision'),
(768, 'UWAN Pictures'),
(776, 'V-sign'),
(838, 'Vasoon Animation'),
(774, 'Viewworks'),
(775, 'Visual Flight'),
(773, 'Voil'),
(780, 'W-Toon Studio'),
(786, 'Wanda Media'),
(788, 'Wang Film Productions'),
(778, 'WAO World'),
(777, 'Warner Bros. Japan'),
(789, 'Watanabe Promotion'),
(784, 'Wave Master'),
(783, 'Windy Studio'),
(790, 'Winfuture Media'),
(785, 'Wolf Smoke Studio'),
(779, 'Wonder Cat Animation'),
(787, 'WonderLand'),
(781, 'WOWMAX'),
(782, 'Wright Staff'),
(793, 'Xanthus Media'),
(792, 'Xiaoming Taiji'),
(791, 'Xing Yi Kai Chen'),
(805, 'Y&N Brothers'),
(797, 'Yaoyorozu'),
(801, 'yell'),
(799, 'YHKT Entertainment'),
(800, 'Yi Chen Animation'),
(811, 'Yili Animation Studio'),
(804, 'Yinhe Changxing Culture'),
(839, 'YNUO'),
(796, 'Yokohama Animation Laboratory'),
(794, 'Yomiuri TV Enterprise'),
(810, 'Yonago Gainax'),
(806, 'Yoon\'s Color'),
(808, 'York Animation'),
(795, 'Youku'),
(809, 'Youth Film Studio'),
(803, 'Yoyogi Animation Gakuin'),
(798, 'Yuewen Animation & Comics'),
(807, 'Yumao Wenhua'),
(802, 'YURUPPE Inc.'),
(812, 'Zero-G Room'),
(814, 'Zhou Ling Wenhua'),
(815, 'Zhou Shen Studio'),
(813, 'Ziine Studio'),
(816, 'Zoland Animation'),
(817, 'ZOOM ENTERPRISE');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `anime_adatlap`
--
ALTER TABLE `anime_adatlap`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mal_id` (`mal_id`);

--
-- A tábla indexei `anime_cimke`
--
ALTER TABLE `anime_cimke`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_id` (`anime_id`),
  ADD KEY `cimke_id` (`cimke_id`);

--
-- A tábla indexei `anime_studio`
--
ALTER TABLE `anime_studio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_id` (`anime_id`),
  ADD KEY `studio_id` (`studio_id`);

--
-- A tábla indexei `cimke_lista`
--
ALTER TABLE `cimke_lista`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cimke_nev` (`cimke_nev`);

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
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `anime_adatlap`
--
ALTER TABLE `anime_adatlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `anime_cimke`
--
ALTER TABLE `anime_cimke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT a táblához `anime_studio`
--
ALTER TABLE `anime_studio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT a táblához `cimke_lista`
--
ALTER TABLE `cimke_lista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `elozmeny`
--
ALTER TABLE `elozmeny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT a táblához `forras_elem`
--
ALTER TABLE `forras_elem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT a táblához `forras_tipus`
--
ALTER TABLE `forras_tipus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `lista_elem`
--
ALTER TABLE `lista_elem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT a táblához `lista_tipus`
--
ALTER TABLE `lista_tipus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `profil_adatlap`
--
ALTER TABLE `profil_adatlap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `reszek`
--
ALTER TABLE `reszek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT a táblához `studio_lista`
--
ALTER TABLE `studio_lista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=840;

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
-- Megkötések a táblához `anime_studio`
--
ALTER TABLE `anime_studio`
  ADD CONSTRAINT `anime_studio_ibfk_1` FOREIGN KEY (`anime_id`) REFERENCES `anime_adatlap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anime_studio_ibfk_2` FOREIGN KEY (`studio_id`) REFERENCES `studio_lista` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
