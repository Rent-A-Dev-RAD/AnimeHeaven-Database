-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Feb 18. 13:23
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
(9, 42897, 'https://cdn.myanimelist.net/images/anime/1695/111486l.jpg', 'https://www.themoviedb.org/t/p/original/xNd77OTbhuqp8nMZzv55USSRJDo.jpg', 'Horimiya', 'Horimiya', 'Hori Kyoko látszatra egy átlagos tizenéves lánynak tűnhet, ám ez koránt sem igaz. A munkamániás szülei távollétében vigyáznia kell kisöccsére, Sotára, emellett főznie és takarítania is kell magukra. Ennek következtében nincs ideje a szokásos tinik társadalmi életét élnie. Erős felelősségtudata mellett nem hogy a karaokét, de még egy fél órás fagyizást sem engedhet meg magának tanítás után. Bárhová hívják barátai, ügyesen kibújik a tényleges válasz alól. Ám egy nap véletlenül találkozik valakivel, aki mint később kiderült, nem is annyira idegen, a látszatra csendes, szemüveges, sötét jellemű, pletykák szerint otaku osztálytársával, Miyamura Izumival. Később maga Hori jön rá, hogy bármit, amit gondolt, bármit, amit hallott a fiúról, az mind ellentéte annak, amint jobban megismeri a másik oldalát.', '2021-01-10', 'PG-13', 'Befejezett', 'TV', '2021 TÉL', 'AnimeGun Subs & Dark-Subs', 8.2, '2021-01-10', 1, '13', 13, 'https://www.youtube-nocookie.com/embed/e4RCugyx5No?enablejsapi=1&wmode=opaque&autoplay=0'),
(10, 54856, 'https://image.tmdb.org/t/p/original/uj83treg58OvYnAAV9VF9p9qron.jpg', 'https://www.themoviedb.org/t/p/original/mNFcBM82O0AG5pU9JwOcJqH98G9.jpg', 'Horimiya: Piece', 'Horimiya: The Missing Pieces', 'Hori Kyoko látszatra egy átlagos tizenéves lánynak tűnhet, ám ez koránt sem igaz. A munkamániás szülei távollétében vigyáznia kell kisöccsére, Sotára, emellett főznie és takarítania is kell magukra. Ennek következtében nincs ideje a szokásos tinik társadalmi életét élnie. Erős felelősségtudata mellett nem hogy a karaokét, de még egy fél órás fagyizást sem engedhet meg magának tanítás után. Bárhová hívják barátai, ügyesen kibújik a tényleges válasz alól. Ám egy nap véletlenül találkozik valakivel, aki mint később kiderült, nem is annyira idegen, a látszatra csendes, szemüveges, sötét jellemű, pletykák szerint otaku osztálytársával, Miyamura Izumival. Később maga Hori jön rá, hogy bármit, amit gondolt, bármit, amit hallott a fiúról, az mind ellentéte annak, amint jobban megismeri a másik oldalát.', '2023-07-01', 'PG-13', 'Befejezett', 'TV', '2023 NYÁR', 'AnimeTrix', 8.1, '2023-07-01', 1, '13', 13, 'https://www.youtube-nocookie.com/embed/MU-Vk5R0vVY?enablejsapi=1&wmode=opaque&autoplay=0'),
(11, 50695, 'https://www.themoviedb.org/t/p/original/yuelUbcko5B25UgUKe30B3al2Z9.jpg', 'https://www.themoviedb.org/t/p/original/stEMpPdy4wRoHyNN7KmiLuOE0S0.jpg', 'MF Ghost', 'MF Ghost', 'A nagyon is közeli jövőben az elektromos önvezető autók már elterjedtnek számítanak Japán szerte. Kanata Livington, aki kivételes tehetségnek számít az autóversenyzés terén, éppen befejezte angliai tanulmányait, és hazatér a belső égésű benzinmotorral felszerelt kocsijával az immáron sofőr nélkül száguldó, elektromos autók hazájába.', '2023-10-02', 'PG-13', 'Befejezett', 'TV', '2023 ŐSZ', 'Akio-Fansub, AnimeDrive', 7.6, '2023-10-02', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/zNWZjjkKfXs?enablejsapi=1&wmode=opaque&autoplay=0'),
(12, 57559, 'https://cdn.myanimelist.net/images/anime/1037/145338l.webp', 'https://image.tmdb.org/t/p/original/qEqLerjgjX9BL1fsqRc4MoWzqIU.jpg', 'MF Ghost 2nd Season', 'MF Ghost Season 2', 'Az MF Ghost 2. évadja', '2024-10-07', '', 'Befejezett', 'TV', '2024 ŐSZ', 'Lordminator', 7.8, '2024-10-07', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/zn_3RAMZj9E?enablejsapi=1&wmode=opaque&autoplay=0'),
(13, 60602, 'https://cdn.myanimelist.net/images/anime/1419/154458l.webp', 'https://image.tmdb.org/t/p/original/stEMpPdy4wRoHyNN7KmiLuOE0S0.jpg', 'MF Ghost 3rd Season', 'MF Ghost Season 3', 'MF Ghost 3. évadja.', '2026-01-01', '', 'Fut', 'TV', '2026 TÉL', 'Lordminator', 8.0, '2026-01-01', 1, '?', 5, 'https://www.youtube-nocookie.com/embed/hUcDI5hSBPo?enablejsapi=1&wmode=opaque&autoplay=0'),
(14, 877, 'https://cdn.myanimelist.net/images/anime/2/11232l.webp', 'https://image.tmdb.org/t/p/original/xqbimh1vOdiGAYnu0bz3y3TcIBj.jpg', 'Nana', 'Nana (Szinkronos)', 'Tartalmazza a Nana Soushuuhen: Junko no Heya epizódokat, azaz a 11,5., a 21,5. és a 36,5. részeket, ezek mindig az előttük játszódó egységeket dolgozzák fel. A narrálással (egy másik szereplő elbeszélésével) és a külsős megfigyeléssel lesz kicsit másabb. Így a sztori egyes részei kicsit más megvilágításba kerülnek. Történet: Két huszonéves lány tart Tokióba, hogy megvalósítsák nagyon különböző álmaikat, és mindkettőjüket Nanának hívják. Komatsu Nana egy vidéki polgári család lánya, naív, nyílt, és folyton szerelmes; Osaki Nana egy félárva punkzenész - határozott, kemény lány, aki önmagát és karrierjét keresni megy a fővárosba. A sors úgy hozza, hogy a két Nana először a vonaton, majd Tokióban is találkozik, végül lakótársak lesznek. Szerelmek és szakítások, siker és bukás, boldogság és tragédiák kísérik a felnőtté válásukat.', '2006-04-05', 'R-17+', 'Befejezett', 'TV', '2006 TAVASZ', 'Szinkronos', 8.6, '2006-04-05', 1, '50', 50, 'https://www.youtube-nocookie.com/embed/Tad-n4Xh3nI?enablejsapi=1&wmode=opaque&autoplay=0');

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
(19, 9, 17),
(20, 9, 21),
(21, 10, 17),
(22, 10, 21),
(23, 11, 7),
(24, 11, 19),
(25, 11, 23),
(26, 12, 7),
(27, 12, 19),
(28, 12, 23),
(29, 13, 7),
(30, 13, 19),
(31, 13, 23),
(32, 14, 7),
(33, 14, 17),
(34, 14, 20);

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
(1, 1, 376),
(2, 3, 376),
(3, 4, 131),
(4, 5, 373),
(5, 6, 475),
(6, 7, 451),
(7, 8, 376),
(8, 9, 131),
(9, 10, 131),
(10, 11, 218),
(11, 12, 218),
(12, 13, 218),
(13, 14, 373);

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
(1, 2, 208, 'https://videa.hu/player?f=8.3536427.2567651.0'),
(2, 2, 209, 'https://videa.hu/player?f=8.3536425.2567651.0'),
(3, 2, 210, 'https://videa.hu/player?f=8.3536423.2567651.0'),
(4, 2, 211, 'https://videa.hu/player?f=8.3536422.2567651.0'),
(5, 2, 212, 'https://videa.hu/player?f=8.3536421.2567651.0'),
(6, 2, 213, 'https://videa.hu/player?f=8.3536420.2567651.0'),
(7, 2, 214, 'https://videa.hu/player?f=8.3536419.2567651.0'),
(8, 2, 215, 'https://videa.hu/player?f=8.3536418.2567651.0'),
(9, 2, 216, 'https://videa.hu/player?f=8.3536417.2567651.0'),
(10, 2, 217, 'https://videa.hu/player?f=8.3536416.2567651.0'),
(11, 2, 218, 'https://videa.hu/player?f=8.3536415.2567651.0'),
(12, 2, 219, 'https://videa.hu/player?f=8.3536414.2567651.0'),
(13, 2, 220, 'https://videa.hu/player?f=8.3536414.2567651.0'),
(14, 2, 221, 'https://videa.hu/player?f=8.3536411.2567651.0'),
(15, 2, 222, 'https://videa.hu/player?f=8.3536409.2567651.0'),
(16, 2, 223, 'https://videa.hu/player?f=8.3536407.2567651.0'),
(17, 2, 224, 'https://videa.hu/player?f=8.3536406.2567651.0'),
(18, 2, 225, 'https://videa.hu/player?f=8.3536405.2567651.0'),
(19, 2, 226, 'https://videa.hu/player?f=8.3536403.2567651.0'),
(20, 2, 227, 'https://videa.hu/player?f=8.3536402.2567651.0'),
(21, 2, 228, 'https://videa.hu/player?f=8.3536401.2567651.0'),
(22, 2, 229, 'https://videa.hu/player?f=8.3536399.2567651.0'),
(23, 2, 230, 'https://videa.hu/player?f=8.3536397.2567651.0'),
(24, 2, 231, 'https://videa.hu/player?f=8.3536395.2567651.0'),
(25, 2, 232, 'https://videa.hu/player?f=8.3536394.2567651.0'),
(26, 2, 233, 'https://videa.hu/player?f=8.3536393.2567651.0'),
(27, 2, 234, 'https://videa.hu/player?f=8.3536391.2567651.0'),
(28, 2, 235, 'https://videa.hu/player?f=8.3536387.2567651.0'),
(29, 2, 236, 'https://videa.hu/player?f=8.3536387.2567651.0'),
(30, 2, 237, 'https://videa.hu/player?f=8.3536385.2567651.0'),
(31, 2, 238, 'https://videa.hu/player?f=8.3536383.2567651.0'),
(32, 2, 239, 'https://videa.hu/player?f=8.3536381.2567651.0'),
(33, 2, 240, 'https://videa.hu/player?f=8.3536376.2567651.0'),
(34, 2, 241, 'https://videa.hu/player?f=8.3536372.2567651.0'),
(35, 2, 242, 'https://videa.hu/player?f=8.3536377.2567651.0'),
(36, 2, 243, 'https://videa.hu/player?f=8.3536368.2567651.0'),
(37, 2, 244, 'https://videa.hu/player?f=8.3536366.2567651.0'),
(38, 2, 245, 'https://videa.hu/player?f=8.3536363.2567651.0'),
(39, 2, 246, 'https://videa.hu/player?f=8.3536361.2567651.0'),
(40, 2, 247, 'https://videa.hu/player?f=8.3536361.2567651.0'),
(41, 2, 248, 'https://videa.hu/player?f=8.3536356.2567651.0'),
(42, 2, 249, 'https://videa.hu/player?f=8.3536351.2567651.0'),
(43, 2, 250, 'https://videa.hu/player?f=8.3536349.2567651.0'),
(44, 2, 251, 'https://videa.hu/player?f=8.3536357.2567651.0'),
(45, 2, 252, 'https://videa.hu/player?f=8.3536344.2567651.0'),
(46, 2, 253, 'https://videa.hu/player?f=8.3536342.2567651.0'),
(47, 2, 254, 'https://videa.hu/player?f=8.3536340.2567651.0'),
(48, 2, 255, 'https://videa.hu/player?f=8.3536338.2567651.0'),
(49, 2, 256, 'https://videa.hu/player?f=8.3536335.2567651.0'),
(50, 2, 257, 'https://videa.hu/player?f=8.3536334.2567651.0'),
(64, 1, 208, 'https://indavideo.hu/video/Nana_Szink_S01E01'),
(65, 1, 209, 'https://indavideo.hu/video/Nana_Szink_S01E02'),
(66, 1, 210, 'https://indavideo.hu/video/Nana_Szink_S01E03'),
(67, 1, 211, 'https://indavideo.hu/video/Nana_Szink_S01E04'),
(68, 1, 212, 'https://indavideo.hu/video/Nana_Szink_S01E05'),
(69, 1, 213, 'https://indavideo.hu/video/Nana_Szink_S01E06'),
(70, 1, 214, 'https://indavideo.hu/video/Nana_Szink_S01E07'),
(71, 1, 215, 'https://indavideo.hu/video/Nana_Szink_S01E08'),
(72, 1, 216, 'https://indavideo.hu/video/Nana_Szink_S01E09'),
(73, 1, 217, 'https://indavideo.hu/video/Nana_Szink_S01E10'),
(74, 1, 218, 'https://indavideo.hu/video/Nana_Szink_S01E11'),
(75, 1, 219, 'https://indavideo.hu/video/Nana_Szink_S01E11_5'),
(76, 1, 220, 'https://indavideo.hu/video/Nana_Szink_S01E12'),
(77, 1, 221, 'https://indavideo.hu/video/Nana_Szink_S01E13'),
(78, 1, 222, 'https://indavideo.hu/video/Nana_Szink_S01E14'),
(79, 1, 223, 'https://indavideo.hu/video/Nana_Szink_S01E15'),
(80, 1, 224, 'https://indavideo.hu/video/Nana_Szink_S01E16'),
(81, 1, 225, 'https://indavideo.hu/video/Nana_Szink_S01E17'),
(82, 1, 226, 'https://indavideo.hu/video/Nana_Szink_S01E18'),
(83, 1, 227, 'https://indavideo.hu/video/Nana_Szink_S01E19'),
(84, 1, 228, 'https://indavideo.hu/video/Nana_Szink_S01E20'),
(85, 1, 229, 'https://indavideo.hu/video/Nana_Szink_S01E21'),
(86, 1, 230, 'https://indavideo.hu/video/Nana_Szink_S01E21_5'),
(87, 1, 231, 'https://indavideo.hu/video/Nana_Szink_S01E22'),
(88, 1, 232, 'https://indavideo.hu/video/Nana_Szink_S01E23'),
(89, 1, 233, 'https://indavideo.hu/video/Nana_Szink_S01E24'),
(90, 1, 234, 'https://indavideo.hu/video/Nana_Szink_S01E25'),
(91, 1, 235, 'https://indavideo.hu/video/Nana_Szink_S01E26'),
(92, 1, 236, 'https://indavideo.hu/video/Nana_Szink_S01E27'),
(93, 1, 237, 'https://indavideo.hu/video/Nana_Szink_S01E28'),
(94, 1, 238, 'https://indavideo.hu/video/Nana_Szink_S01E29'),
(95, 1, 239, 'https://indavideo.hu/video/Nana_Szink_S01E30'),
(96, 1, 240, 'https://indavideo.hu/video/Nana_Szink_S01E31'),
(97, 1, 241, 'https://indavideo.hu/video/Nana_Szink_S01E32'),
(98, 1, 242, 'https://indavideo.hu/video/Nana_Szink_S01E33'),
(99, 1, 243, 'https://indavideo.hu/video/Nana_Szink_S01E34'),
(100, 1, 244, 'https://indavideo.hu/video/Nana_Szink_S01E35'),
(101, 1, 245, 'https://indavideo.hu/video/Nana_Szink_S01E36'),
(102, 1, 246, 'https://indavideo.hu/video/Nana_Szink_S01E36_5'),
(103, 1, 247, 'https://indavideo.hu/video/Nana_Szink_S01E37'),
(104, 1, 248, 'https://indavideo.hu/video/Nana_Szink_S01E38'),
(105, 1, 249, 'https://indavideo.hu/video/Nana_Szink_S01E39'),
(106, 1, 250, 'https://indavideo.hu/video/Nana_Szink_S01E40'),
(107, 1, 251, 'https://indavideo.hu/video/Nana_Szink_S01E41'),
(108, 1, 252, 'https://indavideo.hu/video/Nana_Szink_S01E42'),
(109, 1, 253, 'https://indavideo.hu/video/Nana_Szink_S01E43'),
(110, 1, 254, 'https://indavideo.hu/video/Nana_Szink_S01E44'),
(111, 1, 255, 'https://indavideo.hu/video/Nana_Szink_S01E45'),
(112, 1, 256, 'https://indavideo.hu/video/Nana_Szink_S01E46'),
(113, 1, 257, 'https://indavideo.hu/video/Nana_Szink_S01E47'),
(127, 2, 271, 'https://videa.hu/player?f=8.3512186.2567651.0'),
(128, 2, 272, 'https://videa.hu/player?f=8.3512191.2567651.0'),
(129, 2, 273, 'https://videa.hu/player?f=8.3512195.2567651.0'),
(130, 2, 274, 'https://videa.hu/player?f=8.3512196.2567651.0'),
(131, 2, 275, 'https://videa.hu/player?f=8.3512203.2567651.0'),
(132, 2, 276, 'https://videa.hu/player?f=8.3512206.2567651.0'),
(133, 2, 277, 'https://videa.hu/player?f=8.3512209.2567651.0'),
(134, 2, 278, 'https://videa.hu/player?f=8.3512210.2567651.0'),
(135, 2, 279, 'https://videa.hu/player?f=8.3512212.2567651.0'),
(136, 2, 280, 'https://videa.hu/player?f=8.3512215.2567651.0'),
(137, 2, 281, 'https://videa.hu/player?f=8.3512217.2567651.0'),
(138, 2, 282, 'https://videa.hu/player?f=8.3512222.2567651.0'),
(139, 2, 283, 'https://videa.hu/player?f=8.3512226.2567651.0'),
(142, 1, 271, 'https://embed.indavideo.hu/player/video/9573c794b9'),
(143, 1, 272, 'https://embed.indavideo.hu/player/video/785f2c2b7e'),
(144, 1, 273, 'https://embed.indavideo.hu/player/video/c296a70149'),
(145, 1, 274, 'https://embed.indavideo.hu/player/video/4cdb1b0d49'),
(146, 1, 275, 'https://embed.indavideo.hu/player/video/43b1d82580'),
(147, 1, 276, 'https://embed.indavideo.hu/player/video/5af48c15c8'),
(148, 1, 277, 'https://embed.indavideo.hu/player/video/661fe5f4f1'),
(149, 1, 278, 'https://embed.indavideo.hu/player/video/12cc8e6ff1'),
(150, 1, 279, 'https://embed.indavideo.hu/player/video/342f8a0df7'),
(151, 1, 280, 'https://embed.indavideo.hu/player/video/4e5ef5c817'),
(152, 1, 281, 'https://embed.indavideo.hu/player/video/b25f90a4c8'),
(153, 1, 282, 'https://embed.indavideo.hu/player/video/432d24adbf'),
(154, 1, 283, 'https://embed.indavideo.hu/player/video/1dbebe332f'),
(157, 2, 286, 'https://videa.hu/player?f=8.3614726.2567651.0'),
(158, 2, 287, 'https://videa.hu/player?f=8.3614728.2567651.0'),
(159, 2, 288, 'https://videa.hu/player?f=8.3614729.2567651.0'),
(160, 2, 289, 'https://videa.hu/player?f=8.3614731.2567651.0'),
(161, 2, 290, 'https://videa.hu/player?f=8.3614734.2567651.0'),
(162, 2, 291, 'https://videa.hu/player?f=8.3614736.2567651.0'),
(163, 2, 292, 'https://videa.hu/player?f=8.3614740.2567651.0'),
(164, 2, 293, 'https://videa.hu/player?f=8.3614742.2567651.0'),
(165, 2, 294, 'https://videa.hu/player?f=8.3614744.2567651.0'),
(166, 2, 295, 'https://videa.hu/player?f=8.3614746.2567651.0'),
(167, 2, 296, 'https://videa.hu/player?f=8.3614749.2567651.0'),
(168, 2, 297, 'https://videa.hu/player?f=8.3614750.2567651.0'),
(169, 2, 298, 'https://videa.hu/player?f=8.3614770.2567651.0'),
(172, 1, 286, 'https://embed.indavideo.hu/player/video/7fb82b04ab'),
(173, 1, 287, 'https://embed.indavideo.hu/player/video/a288885c84'),
(174, 1, 288, 'https://embed.indavideo.hu/player/video/6f0461de5a'),
(175, 1, 289, 'https://embed.indavideo.hu/player/video/7b5696b6af'),
(176, 1, 290, 'https://embed.indavideo.hu/player/video/d485984132'),
(177, 1, 291, 'https://embed.indavideo.hu/player/video/53a3a132d7'),
(178, 1, 292, 'https://embed.indavideo.hu/player/video/044d2b204c'),
(179, 1, 293, 'https://embed.indavideo.hu/player/video/5cdb432c01'),
(180, 1, 294, 'https://embed.indavideo.hu/player/video/b780054ecf'),
(181, 1, 295, 'https://embed.indavideo.hu/player/video/de8efd45e6'),
(182, 1, 296, 'https://embed.indavideo.hu/player/video/414fad9d90'),
(183, 1, 297, 'https://embed.indavideo.hu/player/video/1945c7ada8'),
(184, 1, 298, 'https://embed.indavideo.hu/player/video/a6dffb538f'),
(187, 2, 1, 'https://videa.hu/player?f=8.2115862.1265416.0'),
(188, 2, 2, 'https://videa.hu/player?f=8.2122583.1265416.0'),
(189, 2, 3, 'https://videa.hu/player?f=8.2128854.1265416.0'),
(190, 2, 4, 'https://videa.hu/player?f=8.2172886.1265416.0'),
(191, 2, 5, 'https://videa.hu/player?f=8.2180532.1265416.0'),
(192, 2, 6, 'https://videa.hu/player?f=8.2186899.1265416.0'),
(193, 2, 7, 'https://videa.hu/player?f=8.2191775.1265416.0'),
(194, 2, 8, 'https://videa.hu/player?f=8.2198591.1265416.0'),
(195, 2, 9, 'https://videa.hu/player?f=8.2203161.1265416.0'),
(196, 2, 10, 'https://videa.hu/player?f=8.2218117.1265416.0'),
(197, 2, 11, 'https://videa.hu/player?f=8.2219917.1265416.0'),
(198, 2, 12, 'https://videa.hu/player?f=8.2231170.1265416.0'),
(202, 1, 16, 'https://embed.indavideo.hu/player/video/1504c218d3'),
(203, 1, 17, 'https://embed.indavideo.hu/player/video/17bab4906e'),
(204, 1, 18, 'https://embed.indavideo.hu/player/video/d4318f45b7'),
(205, 1, 19, 'https://embed.indavideo.hu/player/video/00c5c20d53'),
(206, 1, 20, 'https://embed.indavideo.hu/player/video/1363d8f66f'),
(207, 1, 21, 'https://embed.indavideo.hu/player/video/a4c4bfa4bf'),
(208, 1, 22, 'https://embed.indavideo.hu/player/video/f84f2721bd'),
(209, 1, 23, 'https://embed.indavideo.hu/player/video/10a1901a40'),
(210, 1, 24, 'https://embed.indavideo.hu/player/video/4793124702'),
(211, 1, 25, 'https://embed.indavideo.hu/player/video/c3abea8c53'),
(212, 1, 26, 'https://embed.indavideo.hu/player/video/9bf6fea98e'),
(213, 1, 27, 'https://embed.indavideo.hu/player/video/5023d038ca'),
(214, 1, 28, 'https://embed.indavideo.hu/player/video/04177bca42'),
(217, 2, 31, 'https://videa.hu/player?v=2dSQaZt8ARheeksS'),
(218, 2, 32, 'https://videa.hu/player?v=JY5hTJzRyJ3YvKD6'),
(219, 2, 33, 'https://videa.hu/player?v=DDyMVmFaaUodAeo2'),
(220, 2, 34, 'https://videa.hu/player?v=OdmF3xxnYYNXbsxZ'),
(221, 2, 35, 'https://videa.hu/player?v=AMQvwmCCGiHqIBWo'),
(222, 2, 36, 'https://videa.hu/player?v=5f0riFjIUCjkttkT'),
(223, 2, 37, 'https://videa.hu/player?v=k9WZbCuGpAx32Fd0'),
(224, 2, 38, 'https://videa.hu/player?v=i7xrLt8awWerbNUS'),
(225, 2, 39, 'https://videa.hu/player?v=eYgdFf3XE0ksP8ic'),
(226, 2, 40, 'https://videa.hu/player?v=e4jdYSIPrekNZTQK'),
(227, 2, 41, 'https://videa.hu/player?v=dBua0mH5UU0unazY'),
(228, 2, 42, 'https://videa.hu/player?v=BJ6hZBfsDpET0kjj'),
(229, 2, 43, 'https://videa.hu/player?v=Iz5yIuuy8GNU55yb'),
(230, 2, 44, 'https://videa.hu/player?v=q4suAuWjY5AHFYi1'),
(231, 2, 45, 'https://videa.hu/player?v=XVKv7OQgZzRuTPo7'),
(232, 2, 46, 'https://videa.hu/player?v=5tapvxcG48D7hsRD'),
(233, 2, 47, 'https://videa.hu/player?v=BpzweDplCKeCWPL0'),
(234, 2, 48, 'https://videa.hu/player?v=se2P3vcU4YWnQk7Q'),
(235, 2, 49, 'https://videa.hu/player?v=DbXitw1vutjBnz8L'),
(236, 2, 50, 'https://videa.hu/player?v=C7OiOIp7RVYO8zb8'),
(237, 2, 51, 'https://videa.hu/player?v=MjVA6PMDXQtgJzJv'),
(238, 2, 52, 'https://videa.hu/player?v=7ESfXTiAYWyvi2KI'),
(239, 2, 53, 'https://videa.hu/player?v=I1APXGB0HqBolMJr'),
(240, 2, 54, 'https://videa.hu/player?v=TtnCaifof9WxiXRc'),
(248, 1, 62, 'https://embed.indavideo.hu/player/video/86dd4bef6d'),
(249, 1, 63, 'https://embed.indavideo.hu/player/video/14ec055ca2'),
(250, 1, 64, 'https://embed.indavideo.hu/player/video/f9ee121743'),
(251, 1, 65, 'https://embed.indavideo.hu/player/video/85537f7dda'),
(252, 1, 66, 'https://embed.indavideo.hu/player/video/58c17a1a16'),
(253, 1, 67, 'https://embed.indavideo.hu/player/video/74406e2eb8'),
(254, 1, 68, 'https://embed.indavideo.hu/player/video/be7f1a793c'),
(255, 1, 69, 'https://embed.indavideo.hu/player/video/9a35c1f226'),
(256, 1, 70, 'https://embed.indavideo.hu/player/video/9c44d85d15'),
(257, 1, 71, 'https://embed.indavideo.hu/player/video/8f9bda6fb2'),
(258, 1, 72, 'https://embed.indavideo.hu/player/video/9a9df5b775'),
(259, 1, 73, 'https://embed.indavideo.hu/player/video/745e52f031'),
(263, 1, 77, 'https://embed.indavideo.hu/player/video/80bb6b6714'),
(264, 1, 78, 'https://embed.indavideo.hu/player/video/984bfc889d'),
(265, 1, 79, 'https://embed.indavideo.hu/player/video/dcc8125f9f'),
(266, 1, 80, 'https://embed.indavideo.hu/player/video/dcefc47071'),
(267, 1, 81, 'https://embed.indavideo.hu/player/video/6fa8ba8e9a'),
(268, 1, 82, 'https://embed.indavideo.hu/player/video/42ed4c1054'),
(269, 1, 83, 'https://embed.indavideo.hu/player/video/c2b3ffc5d0'),
(270, 1, 84, 'https://embed.indavideo.hu/player/video/63231b7a3b'),
(271, 1, 85, 'https://embed.indavideo.hu/player/video/0689ded9a7'),
(272, 1, 86, 'https://embed.indavideo.hu/player/video/5c51714948'),
(273, 1, 87, 'https://embed.indavideo.hu/player/video/1ee64d64cf'),
(274, 1, 88, 'https://embed.indavideo.hu/player/video/1384c87c5e'),
(275, 1, 89, 'https://embed.indavideo.hu/player/video/e46712c7fc'),
(276, 1, 90, 'https://embed.indavideo.hu/player/video/bfac23292a'),
(277, 1, 91, 'https://embed.indavideo.hu/player/video/92ed6af747'),
(278, 1, 92, 'https://embed.indavideo.hu/player/video/95538b94c9'),
(279, 1, 93, 'https://embed.indavideo.hu/player/video/583658e9fa'),
(280, 1, 94, 'https://embed.indavideo.hu/player/video/f06a35010f'),
(281, 1, 95, 'https://embed.indavideo.hu/player/video/46967b8a86'),
(282, 1, 96, 'https://embed.indavideo.hu/player/video/5312a55760'),
(283, 1, 97, 'https://embed.indavideo.hu/player/video/84828cf5b5'),
(284, 1, 98, 'https://embed.indavideo.hu/player/video/7da260787d'),
(285, 1, 99, 'https://embed.indavideo.hu/player/video/c54c0b32c5'),
(286, 1, 100, 'https://embed.indavideo.hu/player/video/d2667c65b2'),
(287, 1, 101, 'https://embed.indavideo.hu/player/video/6c6366c214'),
(288, 1, 102, 'https://embed.indavideo.hu/player/video/0fb10f877a'),
(289, 1, 103, 'https://embed.indavideo.hu/player/video/f675e1942b'),
(290, 1, 104, 'https://embed.indavideo.hu/player/video/4fd84456b2'),
(291, 1, 105, 'https://embed.indavideo.hu/player/video/365b5ceb9d'),
(292, 1, 106, 'https://embed.indavideo.hu/player/video/d5708805f1'),
(293, 1, 107, 'https://embed.indavideo.hu/player/video/dd919614b6'),
(294, 1, 108, 'https://embed.indavideo.hu/player/video/8fa4d39fb6'),
(295, 1, 109, 'https://embed.indavideo.hu/player/video/6aac26007e'),
(296, 1, 110, 'https://embed.indavideo.hu/player/video/2891b1c309'),
(297, 1, 111, 'https://embed.indavideo.hu/player/video/e90bb11d49'),
(298, 1, 112, 'https://embed.indavideo.hu/player/video/7d43b7cdb7'),
(299, 1, 113, 'https://embed.indavideo.hu/player/video/8bd41eaa94'),
(326, 1, 140, 'https://embed.indavideo.hu/player/video/daf32ea189'),
(327, 1, 141, 'https://embed.indavideo.hu/player/video/c41f1abc8e'),
(328, 1, 142, 'https://embed.indavideo.hu/player/video/16a0969e8c'),
(329, 1, 143, 'https://embed.indavideo.hu/player/video/37d001e9e6'),
(330, 1, 144, 'https://embed.indavideo.hu/player/video/5002520ad9'),
(331, 1, 145, 'https://embed.indavideo.hu/player/video/97d4e442e4'),
(332, 1, 146, 'https://embed.indavideo.hu/player/video/5e1d8bb270'),
(333, 1, 147, 'https://embed.indavideo.hu/player/video/767a12f315'),
(334, 1, 148, 'https://embed.indavideo.hu/player/video/7a02260740'),
(335, 1, 149, 'https://embed.indavideo.hu/player/video/f8d54e22e4'),
(336, 1, 150, 'https://embed.indavideo.hu/player/video/60eb4cbc94'),
(337, 1, 151, 'https://embed.indavideo.hu/player/video/891dc7228d'),
(341, 2, 155, 'https://videa.hu/player?f=8.3560746.2567651.0'),
(342, 2, 156, 'https://videa.hu/player?f=8.3560748.2567651.0'),
(343, 2, 157, 'https://videa.hu/player?f=8.3560751.2567651.0'),
(344, 2, 158, 'https://videa.hu/player?f=8.3560754.2567651.0'),
(345, 2, 159, 'https://videa.hu/player?f=8.3560755.2567651.0'),
(346, 2, 160, 'https://videa.hu/player?f=8.3560757.2567651.0'),
(347, 2, 161, 'https://videa.hu/player?f=8.3560758.2567651.0'),
(348, 2, 162, 'https://videa.hu/player?f=8.3560759.2567651.0'),
(349, 2, 163, 'https://videa.hu/player?f=8.3560762.2567651.0'),
(350, 2, 164, 'https://videa.hu/player?f=8.3560764.2567651.0'),
(351, 2, 165, 'https://videa.hu/player?f=8.3560765.2567651.0'),
(352, 2, 166, 'https://videa.hu/player?f=8.3560766.2567651.0'),
(356, 1, 155, 'https://embed.indavideo.hu/player/video/d66d262168'),
(357, 1, 156, 'https://embed.indavideo.hu/player/video/3d3d9f0d8c'),
(358, 1, 157, 'https://embed.indavideo.hu/player/video/8a95a56701'),
(359, 1, 158, 'https://embed.indavideo.hu/player/video/c56c8cc6d1'),
(360, 1, 159, 'https://embed.indavideo.hu/player/video/3dbeb8f44b'),
(361, 1, 160, 'https://embed.indavideo.hu/player/video/d7c24a0cd4'),
(362, 1, 161, 'https://embed.indavideo.hu/player/video/12ede6d57a'),
(363, 1, 162, 'https://embed.indavideo.hu/player/video/143b05de62'),
(364, 1, 163, 'https://embed.indavideo.hu/player/video/5e48f94d15'),
(365, 1, 164, 'https://embed.indavideo.hu/player/video/58112899a6'),
(366, 1, 165, 'https://embed.indavideo.hu/player/video/4275627db7'),
(367, 1, 166, 'https://embed.indavideo.hu/player/video/d86eccd741'),
(371, 2, 170, 'https://videa.hu/player?f=8.3543680.2511611.0'),
(372, 2, 171, 'https://videa.hu/player?f=8.2489879.2293168.0'),
(373, 2, 172, 'https://videa.hu/player?f=8.2525235.2293168.0'),
(375, 1, 173, 'https://embed.indavideo.hu/player/video/099e58472f'),
(376, 1, 174, 'https://embed.indavideo.hu/player/video/877fd5e4b5'),
(377, 1, 175, 'https://embed.indavideo.hu/player/video/405a5cebf1'),
(378, 1, 176, 'https://embed.indavideo.hu/player/video/bb06183bbf'),
(379, 1, 177, 'https://embed.indavideo.hu/player/video/6599cfb69c'),
(380, 1, 178, 'https://embed.indavideo.hu/player/video/1e082510f9'),
(381, 1, 179, 'https://embed.indavideo.hu/player/video/af306d4f8e'),
(382, 1, 180, 'https://embed.indavideo.hu/player/video/5eee4bc5ba'),
(383, 1, 181, 'https://embed.indavideo.hu/player/video/683a075798'),
(384, 1, 182, 'https://embed.indavideo.hu/player/video/ed3d032401'),
(390, 1, 186, 'https://embed.indavideo.hu/player/video/cd39c718c9'),
(391, 1, 187, 'https://embed.indavideo.hu/player/video/37c2335883'),
(392, 1, 188, 'https://embed.indavideo.hu/player/video/b5be7f0eee'),
(393, 1, 189, 'https://embed.indavideo.hu/player/video/79764fadac'),
(394, 1, 190, 'https://embed.indavideo.hu/player/video/d6e1f0b654'),
(395, 1, 191, 'https://embed.indavideo.hu/player/video/c527b28370'),
(396, 1, 192, 'https://embed.indavideo.hu/player/video/2698ffec65'),
(397, 1, 193, 'https://embed.indavideo.hu/player/video/d7d43aac94'),
(398, 1, 194, 'https://embed.indavideo.hu/player/video/6509501c6b'),
(399, 1, 195, 'https://embed.indavideo.hu/player/video/af0574a569'),
(400, 1, 196, 'https://embed.indavideo.hu/player/video/74c9ea28db'),
(401, 1, 197, 'https://embed.indavideo.hu/player/video/bb560cd230'),
(405, 1, 201, 'https://embed.indavideo.hu/player/video/f9d74d0f4e'),
(406, 1, 202, 'https://embed.indavideo.hu/player/video/9d669499ea'),
(407, 1, 203, 'https://embed.indavideo.hu/player/video/baae22e48c'),
(408, 1, 204, 'https://embed.indavideo.hu/player/video/21c3df38eb'),
(409, 1, 205, 'https://embed.indavideo.hu/player/video/a5171b76a4');

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
(1, 6, 1, 1, '2026-02-18 12:22:02'),
(2, 6, 3, 3, '2026-02-18 12:22:02'),
(3, 6, 5, 1, '2026-02-18 12:22:02'),
(4, 6, 13, 2, '2026-02-18 12:22:02'),
(8, 7, 4, 1, '2026-02-18 12:22:02'),
(9, 7, 2, 3, '2026-02-18 12:22:02'),
(10, 7, 6, 2, '2026-02-18 12:22:02'),
(11, 7, 7, 5, '2026-02-18 12:22:02'),
(15, 8, 1, 3, '2026-02-18 12:22:02'),
(16, 8, 8, 2, '2026-02-18 12:22:02'),
(17, 8, 11, 4, '2026-02-18 12:22:02'),
(18, 8, 3, 1, '2026-02-18 12:22:02'),
(22, 10, 5, 3, '2026-02-18 12:22:02'),
(23, 10, 12, 2, '2026-02-18 12:22:02'),
(24, 10, 4, 1, '2026-02-18 12:22:02');

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
(171, 11, 1, '1. rész', 1),
(172, 11, 2, '2. rész', 1),
(173, 11, 3, '3. rész', 1),
(174, 11, 4, '4. rész', 1),
(175, 11, 5, '5. rész', 1),
(176, 11, 6, '6. rész', 1),
(177, 11, 7, '7. rész', 1),
(178, 11, 8, '8. rész', 1),
(179, 11, 9, '9. rész', 1),
(180, 11, 10, '10. rész', 1),
(181, 11, 11, '11. rész', 1),
(182, 11, 12, '12. rész', 1),
(186, 12, 1, '1. rész', 1),
(187, 12, 2, '2. rész', 1),
(188, 12, 3, '3. rész', 1),
(189, 12, 4, '4. rész', 1),
(190, 12, 5, '5. rész', 1),
(191, 12, 6, '6. rész', 1),
(192, 12, 7, '7. rész', 1),
(193, 12, 8, '8. rész', 1),
(194, 12, 9, '9. rész', 1),
(195, 12, 10, '10. rész', 1),
(196, 12, 11, '11. rész', 1),
(197, 12, 12, '12. rész', 1),
(201, 13, 1, '1. rész', 1),
(202, 13, 2, '2. rész', 1),
(203, 13, 3, '3. rész', 1),
(204, 13, 4, '4. rész', 1),
(205, 13, 5, '5. rész', 1),
(208, 14, 1, '1. rész', 1),
(209, 14, 2, '2. rész', 1),
(210, 14, 3, '3. rész', 1),
(211, 14, 4, '4. rész', 1),
(212, 14, 5, '5. rész', 1),
(213, 14, 6, '6. rész', 1),
(214, 14, 7, '7. rész', 1),
(215, 14, 8, '8. rész', 1),
(216, 14, 9, '9. rész', 1),
(217, 14, 10, '10. rész', 1),
(218, 14, 11, '11. rész', 1),
(219, 14, 12, '11_5. rész', 1),
(220, 14, 13, '12. rész', 1),
(221, 14, 14, '13. rész', 1),
(222, 14, 15, '14. rész', 1),
(223, 14, 16, '15. rész', 1),
(224, 14, 17, '16. rész', 1),
(225, 14, 18, '17. rész', 1),
(226, 14, 19, '18. rész', 1),
(227, 14, 20, '19. rész', 1),
(228, 14, 21, '20. rész', 1),
(229, 14, 22, '21. rész', 1),
(230, 14, 23, '21_5. rész', 1),
(231, 14, 24, '22. rész', 1),
(232, 14, 25, '23. rész', 1),
(233, 14, 26, '24. rész', 1),
(234, 14, 27, '25. rész', 1),
(235, 14, 28, '26. rész', 1),
(236, 14, 29, '27. rész', 1),
(237, 14, 30, '28. rész', 1),
(238, 14, 31, '29. rész', 1),
(239, 14, 32, '30. rész', 1),
(240, 14, 33, '31. rész', 1),
(241, 14, 34, '32. rész', 1),
(242, 14, 35, '33. rész', 1),
(243, 14, 36, '34. rész', 1),
(244, 14, 37, '35. rész', 1),
(245, 14, 38, '36. rész', 1),
(246, 14, 39, '36_5. rész', 1),
(247, 14, 40, '37. rész', 1),
(248, 14, 41, '38. rész', 1),
(249, 14, 42, '39. rész', 1),
(250, 14, 43, '40. rész', 1),
(251, 14, 44, '41. rész', 1),
(252, 14, 45, '42. rész', 1),
(253, 14, 46, '43. rész', 1),
(254, 14, 47, '44. rész', 1),
(255, 14, 48, '45. rész', 1),
(256, 14, 49, '46. rész', 1),
(257, 14, 50, '47. rész', 1),
(271, 9, 1, '1. rész', 1),
(272, 9, 2, '2. rész', 1),
(273, 9, 3, '3. rész', 1),
(274, 9, 4, '4. rész', 1),
(275, 9, 5, '5. rész', 1),
(276, 9, 6, '6. rész', 1),
(277, 9, 7, '7. rész', 1),
(278, 9, 8, '8. rész', 1),
(279, 9, 9, '9. rész', 1),
(280, 9, 10, '10. rész', 1),
(281, 9, 11, '11. rész', 1),
(282, 9, 12, '12. rész', 1),
(283, 9, 13, '13. rész', 1),
(286, 10, 1, '1. rész', 1),
(287, 10, 2, '2. rész', 1),
(288, 10, 3, '3. rész', 1),
(289, 10, 4, '4. rész', 1),
(290, 10, 5, '5. rész', 1),
(291, 10, 6, '6. rész', 1),
(292, 10, 7, '7. rész', 1),
(293, 10, 8, '8. rész', 1),
(294, 10, 9, '9. rész', 1),
(295, 10, 10, '10. rész', 1),
(296, 10, 11, '11. rész', 1),
(297, 10, 12, '12. rész', 1),
(298, 10, 13, '13. rész', 1);

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
(820, '717 Animation Studio'),
(4, '7doc'),
(1, '81 Produce'),
(819, '8bit'),
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
(822, 'Akatsuki Media Studio'),
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
(823, 'Amuse Creative Studio'),
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
(824, 'Atelier Peuplier'),
(50, 'Atelier Pontdarc'),
(71, 'Atorie A.B.C.'),
(70, 'Atti Production'),
(49, 'Au Praxinoscope'),
(821, 'Aubeck'),
(825, 'Aura Studio'),
(66, 'Aurora Animation'),
(81, 'Aurum Production'),
(31, 'AXsiZ'),
(826, 'Azuki'),
(93, 'B.CMAY PICTURES'),
(828, 'B.COOL STUDIO'),
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
(827, 'BENTEN Film'),
(120, 'Bianyue Culture'),
(109, 'Bibury Animation CG'),
(94, 'Big Firebird Culture'),
(113, 'Big Pine Animation Studio'),
(108, 'Big Wing'),
(829, 'BIGBIGSUN'),
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
(830, 'bushes'),
(87, 'Bushiroad'),
(97, 'BYMENT'),
(154, 'C and R'),
(124, 'C-Station'),
(153, 'C&S Production'),
(139, 'Cafe de Jeilhouse'),
(137, 'CANON RECORDINGS'),
(132, 'CBS Sony Group'),
(125, 'CCTV Animation Group'),
(146, 'CD Projekt Red'),
(152, 'Chenghuang Yinghua'),
(141, 'Children\'s Corner'),
(156, 'Chimu Jika Hatsuden'),
(133, 'Chiptune'),
(127, 'CHOCOLATE'),
(145, 'Chongzhuo Animation'),
(151, 'CinePix'),
(149, 'Circle Tribute'),
(147, 'Circus Production'),
(129, 'CLAP'),
(130, 'Cloud Hearts'),
(131, 'CloverWorks'),
(135, 'Coastline Animation Studio'),
(142, 'Cocktail Media'),
(138, 'cogitoworks'),
(126, 'Collaboration Works'),
(155, 'Concept Films'),
(128, 'Craftar Studios'),
(143, 'Creative House Pocket'),
(134, 'Creative Power Entertaining'),
(140, 'Creators Dot Com'),
(122, 'Creators in Pack'),
(150, 'CREi'),
(123, 'Crunchyroll SC Anime Fund'),
(144, 'CUC Anima'),
(136, 'CUCURI'),
(148, 'Cutie Bee'),
(172, 'D.ROCK-ART'),
(183, 'D\'ART Shtajio'),
(189, 'Da Huoniao Donghua'),
(165, 'Daewon Media'),
(182, 'Dai-Ichi Douga'),
(174, 'Dancing CG Studio'),
(163, 'DandeLion Animation Studio'),
(168, 'Dangun Pictures'),
(173, 'Datama Film'),
(159, 'David Production'),
(188, 'Dawn Animation'),
(186, 'Days'),
(184, 'Daysview Animation'),
(176, 'Dazzling Star'),
(169, 'DC Impression Vision'),
(164, 'Decovocal'),
(185, 'Delpic'),
(171, 'Deregula'),
(170, 'DiC Entertainment'),
(175, 'Digital Network Animation'),
(157, 'Discotek Media'),
(160, 'Disney Platform Distribution'),
(180, 'Diwphalanx Records'),
(179, 'Djinn Power'),
(158, 'DLE'),
(161, 'DMM.futureworks'),
(162, 'Dongwoo A&E'),
(181, 'Dongyang Animation'),
(187, 'Drawing and Manual'),
(166, 'Dream Entertainment'),
(177, 'drop'),
(831, 'dugout'),
(178, 'Dyna Method'),
(167, 'Dynamo Pictures'),
(213, 'e-notion'),
(193, 'E&G Films'),
(197, 'Eallin'),
(195, 'East Fish Studio'),
(191, 'Echoes'),
(196, 'EDGE'),
(203, 'Egg'),
(190, 'Eiken'),
(202, 'EKACHI EPILKA'),
(211, 'Ekakiya'),
(200, 'Ekura Animal'),
(201, 'Elias'),
(199, 'Emon'),
(194, 'Encourage Films'),
(192, 'ENGI'),
(198, 'Enishiya'),
(205, 'Enjin Productions'),
(210, 'Enzo Animation'),
(204, 'Escape Velocity Animation'),
(208, 'Eshoya Honpo'),
(212, 'Ether Kitten'),
(209, 'evg'),
(207, 'Executive Decision'),
(214, 'Ezo Kobo'),
(206, 'Ezόla'),
(832, 'Fantawild Animation'),
(216, 'Fanworks'),
(215, 'feel.'),
(218, 'Felix Film'),
(219, 'Fenz'),
(225, 'Fever Creations'),
(224, 'flag Co.'),
(217, 'Flat Studio'),
(223, 'Flying Fish Studio'),
(221, 'Front Line'),
(220, 'Fuji Creative'),
(222, 'Fukushima Gaina'),
(239, 'G-angle'),
(242, 'G-Lam'),
(248, 'G.P Entertainment'),
(250, 'G&G Direction'),
(251, 'Ga-Crew'),
(238, 'Gaina'),
(230, 'Gainax'),
(249, 'Gainax Kyoto'),
(256, 'Gambit'),
(235, 'GANSIS'),
(246, 'GARDEN LODGE'),
(255, 'Garyuu Studio'),
(232, 'Gathering'),
(262, 'GAV Video'),
(236, 'Geek Toys'),
(229, 'Geidai Animation'),
(245, 'GEMBA'),
(226, 'Geneon Entertainment USA'),
(231, 'Geneon Universal Entertainment'),
(240, 'Geno Studio'),
(244, 'Gift-o’-Animation'),
(247, 'Giga Production'),
(254, 'Ginga Teikoku'),
(833, 'GoHands'),
(261, 'Gonzino'),
(227, 'Gonzo'),
(237, 'Good Smile Film'),
(263, 'Gosay Studio'),
(234, 'Graphinica'),
(243, 'Gravity Well'),
(233, 'Green Bunny'),
(257, 'Green Monster Team'),
(259, 'Griot Groove'),
(253, 'GRIZZLY'),
(264, 'Grom'),
(228, 'Group TAC'),
(241, 'Grouper Productions'),
(258, 'GUMBLAB'),
(260, 'Gunners'),
(252, 'Guton Animation Studio'),
(283, 'Hai An Xian Donghua Gongzuo Shi'),
(273, 'Hand to Mouse.'),
(285, 'Hanjin Animation'),
(265, 'Haoliners Animation League'),
(267, 'Happinet Phantom Studios'),
(277, 'Happy Toon'),
(280, 'happyproject'),
(270, 'Hayabusa Film'),
(282, 'Hei Chao Yinghua'),
(284, 'helo.inc'),
(269, 'Hifumi'),
(279, 'Hifumi Shobo'),
(268, 'High Energy Studio'),
(276, 'HM Heros'),
(834, 'Hololive Production'),
(281, 'Honoo'),
(266, 'Hoods Entertainment'),
(272, 'Horannabi'),
(271, 'Horgos Coloroom Pictures'),
(274, 'HS Pictures Studio'),
(278, 'Hu Po Donghua'),
(275, 'Husio Studio'),
(293, 'I.Gzwei'),
(288, 'Iconix Entertainment'),
(300, 'iDRAGONS Creative Studio'),
(298, 'iDreamSky'),
(289, 'Ijigen Tokyo'),
(305, 'IKK Room'),
(287, 'ILCA'),
(295, 'Image House'),
(302, 'Imagestone Inc.'),
(303, 'Imagica Digitalscape'),
(306, 'Imagica Imageworks'),
(290, 'Imagica Infos'),
(292, 'IMAGICA Lab.'),
(291, 'Imagin'),
(294, 'Imagineer'),
(297, 'Infinity Vision'),
(299, 'Inugoya'),
(286, 'iQIYI'),
(304, 'Ishibashi Planning'),
(301, 'Ishimori Entertainment'),
(296, 'Issen'),
(312, 'J.C.F.'),
(314, 'J.K.I'),
(309, 'J.T.P.P.'),
(313, 'Japan Taps'),
(310, 'JCF'),
(316, 'Jichitai Anime'),
(317, 'JJJOY Animation Studios'),
(315, 'JOF'),
(311, 'Joker Films'),
(307, 'Jumondou'),
(308, 'Jumonji'),
(343, 'K contents'),
(349, 'Kaca Entertainment'),
(319, 'Kachidoki Studio'),
(342, 'Kachigarasu'),
(340, 'Kagome Company'),
(341, 'KaKa Technology Studio'),
(344, 'Kami Kukan'),
(321, 'Kamikaze Douga'),
(325, 'Kanaban Graphics'),
(350, 'Karasfilms'),
(323, 'Kate Arrow'),
(339, 'Keica'),
(346, 'Kent House'),
(336, 'Kid+Kid Animation Studio'),
(347, 'Kigumi'),
(334, 'Kill Time Communication'),
(351, 'Kinematics'),
(337, 'Kitchen Ltd.'),
(324, 'Kitty Film Mitaka Studio'),
(348, 'KKC Animation Production'),
(326, 'Koei'),
(327, 'Koinrush Studio'),
(333, 'Konami animation'),
(329, 'Konami Cross Media NY'),
(331, 'Korean Academy of Film Arts'),
(320, 'KSS'),
(332, 'Kuaikan Manhua'),
(330, 'Kung Fu Frog Animation'),
(322, 'Kuri Jikken Manga Koubou'),
(338, 'Kusama Art'),
(318, 'Kyoto Animation'),
(328, 'Kyoto Broadcasting System'),
(335, 'Kyoto University of the Arts'),
(345, 'Kyushu Network Animation'),
(364, 'l-a-unch・BOX'),
(355, 'L²Studio'),
(368, 'Lan Ying Yingshi'),
(356, 'Lapin Track'),
(359, 'Larx Entertainment'),
(354, 'Lay-duce'),
(367, 'LB Commerce'),
(370, 'Lead'),
(353, 'Lerche'),
(371, 'LEVELS'),
(357, 'Light Chaser Animation Studios'),
(366, 'Lingsanwu Animation'),
(360, 'Liu Cong Animation'),
(369, 'Liu Lin Yi Dongman'),
(365, 'Live2D Creative Studio'),
(361, 'Liyu Culture'),
(362, 'Locus Corporation'),
(352, 'Lune-Pictures'),
(363, 'LX Animation Studio'),
(358, 'Lyrics'),
(413, 'M&M'),
(393, 'Maboroshi Koubou'),
(373, 'Madhouse'),
(405, 'Magia Doraglier'),
(377, 'Magic Bus'),
(374, 'Magic Capsule'),
(417, 'Magma Studio'),
(388, 'Maho Film'),
(379, 'Maiden Japan'),
(389, 'Making Animation'),
(401, 'Manga Productions'),
(381, 'Manglobe'),
(376, 'MAPPA'),
(404, 'Maro Studio'),
(418, 'Marone'),
(410, 'maroyaka'),
(408, 'Maru Animation'),
(383, 'Marvelous AQL'),
(386, 'Marza Animation Planet'),
(406, 'MASTER LIGHTS'),
(419, 'MAT'),
(385, 'Maxilla'),
(399, 'MB planning'),
(375, 'Mediabank'),
(394, 'MediaNet Pictures'),
(400, 'Melissa'),
(390, 'Meltdown'),
(416, 'MI'),
(396, 'Micro House'),
(380, 'miHoYoAnime'),
(411, 'Miki Production'),
(412, 'Mikimoto Production'),
(391, 'Mili Pictures'),
(382, 'Millepensee'),
(387, 'Mimoid'),
(392, 'Minakata Laboratory'),
(398, 'Miota'),
(384, 'Mirai Film'),
(421, 'Mirai Fusion'),
(415, 'Miyuki Production'),
(403, 'MMT Technology'),
(414, 'MoMo Production'),
(402, 'Momoi Planning'),
(395, 'monofilmo'),
(420, 'Mook DLE'),
(407, 'Moss Design Unit'),
(397, 'Mousou Senka'),
(372, 'Movic'),
(409, 'Multi Access Company'),
(378, 'Mushi Production'),
(433, 'NADA Holdings'),
(425, 'Nagoya Broadcasting Network'),
(439, 'Nagoya University of Arts and Sciences'),
(441, 'Namu Animation'),
(440, 'NANON CREATIVE'),
(437, 'Natural High'),
(835, 'NAZ'),
(442, 'Neft Film'),
(445, 'Nekonigashi Inc.'),
(426, 'NetEase'),
(428, 'Netflix'),
(436, 'Netmarble'),
(447, 'Network Kouenji Studio'),
(430, 'New Generation'),
(444, 'NEWON'),
(450, 'Next'),
(432, 'Nexus'),
(435, 'NHK Art'),
(423, 'NHK Enterprises'),
(836, 'Nice Boat Animation'),
(431, 'Niceboat Animation'),
(443, 'Nichicaline'),
(429, 'NichiNare'),
(422, 'Nihon Ad Systems'),
(448, 'Nippon Ramayana Film'),
(438, 'Nippon TV Douga'),
(449, 'Nishiki Studio'),
(446, 'nobishiro lab'),
(427, 'Nomad'),
(434, 'Noovo'),
(424, 'NuTech Digital'),
(462, 'October Media'),
(455, 'Oddjob'),
(470, 'Odolttogi'),
(460, 'Office AO'),
(471, 'Office DCI'),
(457, 'Office No. 8'),
(452, 'Office TakeOut'),
(461, 'Okumaza'),
(458, 'Okuruto Noboru'),
(451, 'OLM'),
(454, 'OLM Digital'),
(463, 'Onion Studio'),
(456, 'Onionskin'),
(467, 'ONIRO'),
(459, 'ORADA COMPANY'),
(453, 'Orange'),
(465, 'ORCEN'),
(469, 'ORENDA'),
(472, 'Original Dream'),
(464, 'Outline'),
(466, 'Oyster'),
(468, 'OZ'),
(498, 'P core'),
(483, 'Painting Dream'),
(511, 'Pak Production'),
(489, 'Palm Studio'),
(507, 'Pancake'),
(506, 'Paper Animation'),
(500, 'Paper Plane Animation Studio'),
(494, 'Passion Paint Animation'),
(490, 'Pb Animation'),
(481, 'Peak Hunt'),
(508, 'Penta Show Studios'),
(482, 'pH Studio'),
(515, 'Picona'),
(478, 'Picture Magic'),
(477, 'Pie in the sky'),
(516, 'Piko Studio'),
(510, 'Pink Cat'),
(484, 'Pinkfong'),
(487, 'Piso Studio'),
(503, 'Planet Cartoon'),
(513, 'Planet Nemo Animation'),
(485, 'Platinum Vision'),
(488, 'Plum'),
(493, 'Pmats9 studio'),
(501, 'Point Pictures'),
(496, 'Pollyanna Graphics'),
(514, 'Poly Animation'),
(504, 'Polygon Magic'),
(474, 'Polygon Pictures'),
(476, 'Pony Canyon Enterprises'),
(517, 'PoPoCo'),
(492, 'Pops Inc.'),
(512, 'Potato House'),
(480, 'PP Project'),
(486, 'PRA'),
(491, 'PrimeTime'),
(499, 'Production D.M.H'),
(502, 'production doA'),
(473, 'Production I.G'),
(479, 'Production Reed'),
(505, 'Production Wave'),
(475, 'Project No.9'),
(497, 'Project Studio Q'),
(509, 'Project Team Muu'),
(495, 'Project Team Sarah'),
(522, 'Qianqi Animation'),
(521, 'Qingxiang Culture'),
(524, 'Qiying Animation'),
(519, 'qmotri'),
(520, 'Quad'),
(523, 'Qualia Animation'),
(526, 'QualiArts'),
(525, 'Quebico'),
(518, 'Qzil.la'),
(532, 'R11R'),
(535, 'Rabbit Machine'),
(527, 'Radix'),
(537, 'Raiose'),
(544, 'Rankin/Bass Productions'),
(541, 'Ranzai Studio'),
(542, 'REALTHING'),
(529, 'Red Dog Culture House'),
(543, 'Reiki Eyes Animation'),
(539, 'Reirs'),
(531, 'Revoroot'),
(528, 'RG Animation Studios'),
(538, 'Rhythmos'),
(536, 'Ripromo'),
(530, 'Rising Force'),
(540, 'Rock\'n Roll Mountain'),
(534, 'ROLL2'),
(533, 'Ryuu M\'s'),
(676, 'Saber Works'),
(610, 'Saetta'),
(574, 'Saigo no Shudan'),
(656, 'Sakura Eiga-sha'),
(555, 'Sammy'),
(645, 'Samsara Animation Studio'),
(657, 'Sankaku'),
(558, 'SANZIGEN'),
(678, 'Sasayuri'),
(643, 'Scarlett'),
(569, 'Science SARU'),
(579, 'Scooter Films'),
(598, 'SEK Studios'),
(580, 'SELFISH'),
(553, 'Seven'),
(564, 'Seven Arcs'),
(611, 'Shanghai Hippo Animation'),
(607, 'Sharefun Studio'),
(684, 'Shenfan Animation'),
(578, 'Shengying Animation'),
(592, 'Shenman Entertainment'),
(589, 'Shimogumi'),
(549, 'Shin-Ei Animation'),
(601, 'Shindeban Film'),
(618, 'Shinjukuza'),
(581, 'Shion'),
(566, 'Shirogumi'),
(613, 'Shochiku Animation Institute'),
(552, 'Showgate'),
(546, 'Shueisha'),
(571, 'Shuka'),
(606, 'Shura'),
(614, 'Shykeumo Animation Studio'),
(627, 'SIDO LIMITED'),
(565, 'Signal.MD'),
(629, 'SIGNIF'),
(594, 'Silver'),
(551, 'SILVER LINK.'),
(693, 'SJYNEXCUS'),
(675, 'Skydance'),
(588, 'SMIRAL Animation'),
(572, 'Sogo Vision'),
(653, 'Soigne'),
(677, 'soket'),
(583, 'Sola Digital Arts'),
(603, 'Sola Entertainment'),
(633, 'Sonsan Kikaku'),
(622, 'Sony Interactive Entertainment'),
(561, 'Sony Pictures Entertainment'),
(661, 'Space-X'),
(649, 'Sprite Animation Studios'),
(624, 'Square Enix Visual Works'),
(658, 'Square Pictures'),
(600, 'Staple Entertainment'),
(682, 'Starlight Entertainment'),
(660, 'StarLink'),
(616, 'Stay Luck'),
(605, 'Stereotype'),
(648, 'Stingray'),
(692, 'Story Effect'),
(567, 'Streamline Pictures'),
(559, 'Studio 1st'),
(638, 'STUDIO 8 DOGS'),
(557, 'Studio 9 Maiami'),
(573, 'Studio A-CAT'),
(639, 'Studio A. Craft'),
(679, 'Studio Add'),
(666, 'Studio AWAKE'),
(686, 'Studio B&M'),
(570, 'Studio BAZOOKA'),
(628, 'Studio Bingo'),
(590, 'Studio Blanc.'),
(651, 'Studio Bogey'),
(619, 'Studio Boogie Nights'),
(697, 'Studio CA'),
(609, 'Studio CANDY BOX'),
(699, 'Studio Carbuncle'),
(685, 'Studio Cats'),
(599, 'Studio Chizu'),
(672, 'Studio Clutch'),
(556, 'Studio Comet'),
(647, 'Studio Core'),
(593, 'Studio Crocodile'),
(681, 'Studio D-Volt'),
(621, 'Studio Daisy'),
(547, 'Studio Deen'),
(659, 'Studio Dolphin Night'),
(673, 'Studio Dotou'),
(640, 'Studio Easter'),
(654, 'Studio Eight Color'),
(595, 'Studio Elle'),
(568, 'Studio Eromatick'),
(562, 'Studio Fantasia'),
(625, 'Studio Flad'),
(680, 'Studio Fusion'),
(690, 'Studio Gadget'),
(641, 'Studio Gazelle'),
(560, 'Studio Ghibli'),
(694, 'Studio Guts'),
(696, 'Studio Hakk'),
(674, 'Studio Harutonari'),
(691, 'studio hb'),
(554, 'Studio Hibari'),
(683, 'Studio Himalaya'),
(577, 'Studio Hokiboshi'),
(668, 'Studio Izena'),
(585, 'Studio Jemi'),
(687, 'Studio Jin'),
(604, 'Studio Kaab'),
(634, 'Studio Kafka'),
(698, 'Studio Khronos'),
(620, 'Studio Kingyoiro'),
(655, 'Studio Lemon'),
(637, 'Studio LEO'),
(575, 'Studio Live'),
(667, 'Studio Lotus'),
(612, 'Studio M2'),
(671, 'studio maf'),
(646, 'Studio March'),
(550, 'Studio Mausu'),
(670, 'Studio Maybe'),
(664, 'Studio Mir'),
(576, 'Studio Moriken'),
(587, 'studio MOTHER'),
(650, 'Studio NOIX'),
(597, 'Studio OX'),
(608, 'Studio Palette'),
(548, 'Studio Pierrot'),
(584, 'Studio Placebo'),
(626, 'Studio Ponoc'),
(663, 'Studio Ppuri'),
(632, 'Studio Prokion'),
(631, 'Studio Ranmaru'),
(602, 'Studio RE:Map'),
(591, 'Studio Rikka'),
(662, 'Studio Shelter'),
(617, 'Studio Soul'),
(642, 'Studio Ten'),
(635, 'Studio Ten Carat'),
(665, 'Studio UGOKI'),
(582, 'Studio VOLN'),
(695, 'Studio W.Baba'),
(702, 'Studio WHO'),
(700, 'Studio World'),
(630, 'studio YOG'),
(701, 'Studio Z5'),
(688, 'STUDIO6\'oN'),
(669, 'studioDOT'),
(623, 'Sublimation'),
(636, 'Sugar Boy'),
(689, 'Sumomo Film'),
(615, 'Sunflowers'),
(652, 'Sunny Gapen'),
(545, 'Sunrise'),
(586, 'Sunrise Beyond'),
(596, 'Super Normal Studio'),
(644, 'Suspenders'),
(563, 'Suzuki Mirano'),
(709, 'T-Rex'),
(737, 'Taikong Works'),
(732, 'Takahashi Studio'),
(740, 'TAKI Corporation'),
(715, 'Takun Manga Box'),
(714, 'Tamabi'),
(751, 'Tang Cai Zhaopin'),
(753, 'TanKong Pictures'),
(750, 'TANOsim'),
(739, 'Taomee'),
(743, 'TAP'),
(705, 'TBS'),
(718, 'TCJ'),
(748, 'Team OneOne'),
(762, 'Team TillDawn'),
(741, 'team Yamahitsuji'),
(733, 'Team YokkyuFuman'),
(729, 'Teatro Nishi Tokyo Studio'),
(758, 'TEC'),
(837, 'Telescreen'),
(761, 'Ten Tails Animation'),
(706, 'Tencent Video'),
(742, 'Tengu Kobo'),
(713, 'The Answer Studio'),
(752, 'The Gate Studio'),
(760, 'The Monk Studios'),
(728, 'Thundray'),
(736, 'Tianshi Wenhua'),
(759, 'TiMi Studio Group'),
(704, 'TMS Entertainment'),
(710, 'TNK'),
(765, 'TOCSIS'),
(703, 'Toei Animation'),
(749, 'Tohjak'),
(707, 'TOHO'),
(708, 'TOHO animation'),
(722, 'TOHO animation STUDIO'),
(730, 'Tokyo Movie'),
(735, 'Tokyo Polytechnic University'),
(738, 'Tokyo TV Douga'),
(720, 'Tokyu Agency'),
(747, 'Tomason'),
(731, 'Tomovies'),
(746, 'Tonko House'),
(725, 'Topcraft'),
(716, 'Toranoana'),
(719, 'Toshiba EMI'),
(723, 'Transcendence Picture'),
(724, 'Trash Studio'),
(712, 'Triangle Staff'),
(726, 'TriF Studio'),
(711, 'Trigger'),
(727, 'TrioPen Studio'),
(838, 'TROYCA'),
(744, 'Tryforce'),
(756, 'Tsubo Production'),
(717, 'Tsuburaya Productions'),
(721, 'Tsuchida Productions'),
(764, 'Tsukimidou'),
(745, 'TthunDer Animation'),
(734, 'TV Douga'),
(755, 'TV Tokyo Communications'),
(757, 'Twenty First'),
(763, 'Twilight Studio'),
(754, 'TypeZero'),
(773, 'UchuPeople'),
(766, 'ufotable'),
(770, 'UKA'),
(767, 'Ultra Super Pictures'),
(772, 'Unend'),
(771, 'Urban Product'),
(768, 'Urban Vision'),
(769, 'UWAN Pictures'),
(777, 'V-sign'),
(839, 'Vasoon Animation'),
(775, 'Viewworks'),
(776, 'Visual Flight'),
(774, 'Voil'),
(781, 'W-Toon Studio'),
(787, 'Wanda Media'),
(789, 'Wang Film Productions'),
(779, 'WAO World'),
(778, 'Warner Bros. Japan'),
(790, 'Watanabe Promotion'),
(785, 'Wave Master'),
(784, 'Windy Studio'),
(791, 'Winfuture Media'),
(786, 'Wolf Smoke Studio'),
(780, 'Wonder Cat Animation'),
(788, 'WonderLand'),
(782, 'WOWMAX'),
(783, 'Wright Staff'),
(794, 'Xanthus Media'),
(793, 'Xiaoming Taiji'),
(792, 'Xing Yi Kai Chen'),
(806, 'Y&N Brothers'),
(798, 'Yaoyorozu'),
(802, 'yell'),
(800, 'YHKT Entertainment'),
(801, 'Yi Chen Animation'),
(812, 'Yili Animation Studio'),
(805, 'Yinhe Changxing Culture'),
(840, 'YNUO'),
(797, 'Yokohama Animation Laboratory'),
(795, 'Yomiuri TV Enterprise'),
(811, 'Yonago Gainax'),
(807, 'Yoon\'s Color'),
(809, 'York Animation'),
(796, 'Youku'),
(810, 'Youth Film Studio'),
(804, 'Yoyogi Animation Gakuin'),
(799, 'Yuewen Animation & Comics'),
(808, 'Yumao Wenhua'),
(803, 'YURUPPE Inc.'),
(813, 'Zero-G Room'),
(815, 'Zhou Ling Wenhua'),
(816, 'Zhou Shen Studio'),
(814, 'Ziine Studio'),
(817, 'Zoland Animation'),
(818, 'ZOOM ENTERPRISE');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT a táblához `anime_cimke`
--
ALTER TABLE `anime_cimke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT a táblához `studio_lista`
--
ALTER TABLE `studio_lista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=841;

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
