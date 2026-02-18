-- ===============================================
-- AnimeHeaven Complete Sample Data
-- ===============================================
-- TELJES adatkészlet: Címkék + Stúdiók + Animék + Epizódok
-- Futtasd ezt CSAK a setup.sql után!
-- ===============================================

USE animeheaven_database;

-- =============================================
-- 1. CÍMKÉK BESZÚRÁSA (25 db)
-- =============================================
INSERT INTO cimke_lista (cimke_nev) VALUES 
('Action'), ('Adventure'), ('Avant Garde'), ('Award Winning'), ('Boys Love'),
('Comedy'), ('Drama'), ('Ecchi'), ('Erotica'), ('Fantasy'),
('Girls Love'), ('Gourmet'), ('Horror'), ('Josei'), ('Kids'),
('Mystery'), ('Romance'), ('Sci-Fi'), ('Seinen'), ('Shoujo'),
('Shounen'), ('Slice of Life'), ('Sports'), ('Supernatural'), ('Suspense');

-- =============================================
-- 2. FORRÁS TÍPUSOK
-- =============================================
INSERT INTO `forras_tipus` (`nev`) VALUES
('Indavideo'),
('Videa');

-- =============================================
-- 3. PROFIL ADATOK (10 felhasználó)
-- =============================================
INSERT INTO `profil_adatlap` (`email`, `felhasznalonev`, `jelszo`, `salt`, `profilkep`, `jogosultsag`) VALUES
('tulajdonos@animeheaven.hu', 'Tulaj', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '$2a$10$N9qo8uLOickgx2ZMRZoMye', '/profiles/tulaj.jpg', 5),
('admin@animeheaven.hu', 'Admin', '$2a$10$abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQ', '$2a$10$abcdefghijklmnopqrs', '/profiles/admin.jpg', 4),
('foszerkeszto@animeheaven.hu', 'FőSzerkesztő', '$2a$10$xyz123abc456def789ghi012jkl345mno678pqr901stu234vwx567', '$2a$10$xyz123abc456def789g', '/profiles/chief-editor.jpg', 3),
('szerkeszto1@animeheaven.hu', 'Szerkesztő_Akira', '$2a$10$pqr901stu234vwx567yzA012BCD345EFG678HIJ901KLM234NOP567', '$2a$10$pqr901stu234vwx567y', '/profiles/editor1.jpg', 2),
('szerkeszto2@animeheaven.hu', 'Szerkesztő_Rei', '$2a$10$QRS345TUV678WXY901ZAB234CDE567FGH890IJK123LMN456OPQ789', '$2a$10$QRS345TUV678WXY901Z', '/profiles/editor2.jpg', 2),
('felhasznalo1@gmail.com', 'AnimeFan2024', '$2a$10$STU678VWX901YZA234BCD567EFG890HIJ123KLM456NOP789QRS012', '$2a$10$STU678VWX901YZA234B', '/profiles/user1.jpg', 1),
('felhasznalo2@gmail.com', 'OtakuMaster', '$2a$10$TUV890WXY123ZAB456CDE789FGH012IJK345LMN678OPQ901RST234', '$2a$10$TUV890WXY123ZAB456C', '/profiles/user2.jpg', 1),
('felhasznalo3@gmail.com', 'MangaReader', '$2a$10$UVW012XYZ345ABC678DEF901GHI234JKL567MNO890PQR123STU456', '$2a$10$UVW012XYZ345ABC678D', '/profiles/user3.jpg', 1),
('inaktiv@example.com', 'InaktívUser', '$2a$10$VWX234YZA567BCD890EFG123HIJ456KLM789NOP012QRS345TUV678', '$2a$10$VWX234YZA567BCD890E', NULL, 0),
('tesztuser@animeheaven.hu', 'TesztUser', '$2a$10$WXY456ZAB789CDE012FGH345IJK678LMN901OPQ234RST567UVW890', '$2a$10$WXY456ZAB789CDE012F', '/profiles/test.jpg', 1);

-- =============================================
-- 4. STÚDIÓK (csak a használtak a példaadatokban)
-- =============================================
INSERT IGNORE INTO `studio_lista` (`studio_nev`) VALUES
('MAPPA'),
('Lidenfilms'),
('Madhouse'),
('CloverWorks'),
('Project No.9');

-- =============================================
-- 5. ANIME ADATLAP (6 anime)
-- =============================================
INSERT INTO `anime_adatlap` (`mal_link`, `borito`, `hatter`, `japan_cim`, `angol_cim`, `leiras`, `megjelenes`, `besorolas`, `statusz`, `tipus`, `szezon`, `keszito`, `ertekeles`, `feltoltes_ido`, `lathatosag`, `osszes_epizod`, `jelenlegi_epizod`, `trailer`) VALUES
('https://myanimelist.net/anime/44511', 'https://cdn.myanimelist.net/images/anime/1806/126216l.webp', 'https://image.tmdb.org/t/p/original/9x3TvkC3pZ1rH6j7A0Rzq1Z2VeB.jpg', 'Chainsaw Man', 'Chainsaw Man', 'Denji a szülei halála után hatalmas tartozást örököl. Hogy kifizesse, démonokra vadászik Pochita nevű démon-láncfűrész-kutyája segítségével. Nem vágynak másra, csak egy normális életre. Viszont a jakuza elárulja őket, így feldarabolva végzik egy szemetesben. Itt egyezséget kötnek, amelynek hála egy erősebb testen osztoznak majd. Ezután egy professzionális démonvadász csapat befogadja őket. Így a harc a normális életért tovább folyik.', '2022-10-12', 'R-17+', 'Befejezett', 'TV', '2022 ŐSZ', 'Naruto-Kun', 9.0, '2022-10-12', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/jk7QSGwupPA?enablejsapi=1&wmode=opaque&autoplay=0'),
('https://myanimelist.net/anime/50346', 'https://cdn.myanimelist.net/images/anime/1045/123711l.webp', 'https://image.tmdb.org/t/p/original/veh7M4ho0vgqkW0n0hx1Up42elV.jpg', 'Yofukashi no Uta', 'Call Of The Night', 'Ko Yamori éjszakánként bolyong az utcákon, mert nem tud aludni. Egy éjszaka találkozik Nazuna Nanakusával, egy titokzatos lánnyal, aki felfedi, hogy vámpír. Nazuna megmutatja Ko-nak az éjszakai élet varázsát és szabadságát, miközben különös kapcsolat alakul ki közöttük.', '2022-07-08', 'R-17+', 'Befejezett', 'TV', '2022 Nyár', 'Black Ryuu Team', 8.9, '2022-07-08', 1, '13', 13, 'https://www.youtube-nocookie.com/embed/a4bSbmqwhso?enablejsapi=1&wmode=opaque&autoplay=0'),
('https://myanimelist.net/anime/40748', 'https://cdn.myanimelist.net/images/anime/1171/109222l.webp', 'https://image.tmdb.org/t/p/original/20r6g0KfiAKZ3qBaFvBMvZ0Qbzz.jpg', 'Jujutsu Kaisen', 'Jujutsu Kaisen', 'Yuuji Itadori egy rendkívüli fizikai képességekkel rendelkező középiskolás. Egyik napja azzal kezdődik, hogy találkozik egy jujutsu varázslóval, aki elátkozott tárgyakat kutat. Amikor barátai veszélybe kerülnek, Yuuji lenyeli egy erős átok ujját, hogy megmentse őket.', '2020-10-03', 'R-17+', 'Fut', 'TV', '2020 Ősz', 'Naruto-Kun', 8.8, '2020-10-03', 1, '24', 24, 'https://www.youtube-nocookie.com/embed/4A_X-Dvl0ws?enablejsapi=1&wmode=opaque&autoplay=0'),
('https://myanimelist.net/anime/48736', 'https://cdn.myanimelist.net/images/anime/1179/119897l.webp', 'https://image.tmdb.org/t/p/original/c22TSmxhIuKEHhY7YKKBdaHnR61.jpg', 'Sono Bisque Doll wa Koi wo Suru', 'My Dress-Up Darling', 'Wakana Gojou egy középiskolás fiú, aki hina babák készítésével foglalkozik. Egy nap osztálytársa, Marin Kitagawa felfedezi Wakana tehetségét, és megkéri, hogy segítsen neki cosplay jelmezek készítésében. Így kezdődik kettejük különleges barátsága.', '2022-01-09', 'PG-13', 'Befejezett', 'TV', '2022 Tél', 'AnimeCenter', 8.7, '2022-01-09', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/tFKDKd8z-NU?enablejsapi=1&wmode=opaque&autoplay=0'),
('https://myanimelist.net/anime/1535', 'https://cdn.myanimelist.net/images/anime/9/9453l.webp', 'https://image.tmdb.org/t/p/original/mOlEbXcb6ufRJKogI35KqsSlCfB.jpg', 'Death Note', 'Death Note', 'Light Yagami egy kiváló tanuló, aki egy különleges noteszre bukkan, a Death Note-ra. Bárki neve, akit a noteszba írnak, meghal. Light úgy dönt, hogy megtisztítja a világot a gonosztól, de hamarosan egy titokzatos nyomozó, L nyomába ered.', '2006-10-04', 'R-17+', 'Befejezett', 'TV', '2006 Ősz', 'Hidden Leaf Team', 8.6, '2006-10-04', 1, '37', 37, 'https://www.youtube-nocookie.com/embed/Vt_3c8BgxV4?enablejsapi=1&wmode=opaque&autoplay=0'),
('https://myanimelist.net/anime/50739', 'https://image.tmdb.org/t/p/original/lt6iImp0S1cFOUs8i0hr1ycqyCu.jpg', 'Otonari no Tenshi-sama ni Itsunomanika Dame Ningen ni Sareteita Ken', 'The Angel Next Door Spoils Me Rotten', 'Amane Fujimiya egy magányos középiskolás fiú, aki egy napon találkozik szomszédjával, Mahiru Shiinával, akit az iskolában angyalnak hívnak. Amikor Mahiru észreveszi Amane rendetlen életmódját, eldönti, hogy gondoskodik róla.', '2023-01-07', 'PG-13', 'Befejezett', 'TV', '2023 Tél', 'Muteki Fansub', 9.0, '2023-01-07', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/IUq59ARXtdg?enablejsapi=1&wmode=opaque&autoplay=0');

-- =============================================
-- 6. ANIME-STÚDIÓ KAPCSOLATOK
-- =============================================
INSERT INTO `anime_studio` (`anime_id`, `studio_id`) 
SELECT a.id, s.id 
FROM anime_adatlap a
JOIN studio_lista s
WHERE (a.angol_cim = 'Chainsaw Man' AND s.studio_nev = 'MAPPA')
   OR (a.angol_cim = 'Call Of The Night' AND s.studio_nev = 'Lidenfilms')
   OR (a.angol_cim = 'Jujutsu Kaisen' AND s.studio_nev = 'MAPPA')
   OR (a.angol_cim = 'My Dress-Up Darling' AND s.studio_nev = 'CloverWorks')
   OR (a.angol_cim = 'Death Note' AND s.studio_nev = 'Madhouse')
   OR (a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND s.studio_nev = 'Project No.9');

-- =============================================
-- 7. ANIME-CÍMKE KAPCSOLATOK
-- =============================================
INSERT INTO `anime_cimke` (`anime_id`, `cimke_id`)
SELECT a.id, c.id
FROM anime_adatlap a
JOIN cimke_lista c
WHERE (a.angol_cim = 'Chainsaw Man' AND c.cimke_nev IN ('Action', 'Fantasy', 'Shounen'))
   OR (a.angol_cim = 'Call Of The Night' AND c.cimke_nev IN ('Romance', 'Supernatural', 'Seinen'))
   OR (a.angol_cim = 'Jujutsu Kaisen' AND c.cimke_nev IN ('Action', 'Fantasy', 'Shounen'))
   OR (a.angol_cim = 'My Dress-Up Darling' AND c.cimke_nev IN ('Romance', 'Comedy', 'Seinen', 'Slice of Life'))
   OR (a.angol_cim = 'Death Note' AND c.cimke_nev IN ('Mystery', 'Suspense', 'Supernatural', 'Shounen'))
   OR (a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND c.cimke_nev IN ('Romance', 'Slice of Life'));

-- =============================================
-- 8. RÉSZEK (EPIZÓDOK) - Chainsaw Man (12)
-- =============================================
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man';

-- =============================================
-- 9. RÉSZEK - Call of the Night (13)
-- =============================================
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night' UNION ALL
SELECT id, 13, '13. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Call Of The Night';

-- =============================================
-- 10. RÉSZEK - Jujutsu Kaisen (24)
-- =============================================
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 13, '13. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 14, '14. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 15, '15. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 16, '16. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 17, '17. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 18, '18. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 19, '19. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 20, '20. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 21, '21. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 22, '22. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 23, '23. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen' UNION ALL
SELECT id, 24, '24. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Jujutsu Kaisen';

-- =============================================
-- 11. RÉSZEK - My Dress-Up Darling (12)
-- =============================================
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'My Dress-Up Darling';

-- =============================================
-- 12. RÉSZEK - Death Note (37)
-- =============================================
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 13, '13. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 14, '14. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 15, '15. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 16, '16. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 17, '17. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 18, '18. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 19, '19. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 20, '20. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 21, '21. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 22, '22. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 23, '23. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 24, '24. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 25, '25. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 26, '26. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 27, '27. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 28, '28. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 29, '29. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 30, '30. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 31, '31. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 32, '32. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 33, '33. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 34, '34. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 35, '35. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 36, '36. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note' UNION ALL
SELECT id, 37, '37. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Death Note';

-- =============================================
-- 13. RÉSZEK - The Angel Next Door Spoils Me Rotten (12)
-- =============================================
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'The Angel Next Door Spoils Me Rotten';

-- =============================================
-- ELLENŐRZÉS
-- =============================================
SELECT '✅ Adatok sikeresen beszúrva!' AS Status;
SELECT COUNT(*) AS 'Anime darabszám' FROM anime_adatlap;
SELECT COUNT(*) AS 'Címkék száma' FROM cimke_lista;
SELECT COUNT(*) AS 'Stúdiók száma' FROM studio_lista;
SELECT COUNT(*) AS 'Epizódok száma' FROM reszek;
SELECT COUNT(*) AS 'Felhasználók száma' FROM profil_adatlap;

-- Részletes összegzés
SELECT 
    a.angol_cim AS 'Anime',
    a.ertekeles AS 'Értékelés',
    COUNT(DISTINCT r.id) AS 'Epizódok',
    GROUP_CONCAT(DISTINCT c.cimke_nev ORDER BY c.cimke_nev SEPARATOR ', ') AS 'Címkék',
    GROUP_CONCAT(DISTINCT s.studio_nev ORDER BY s.studio_nev SEPARATOR ', ') AS 'Stúdió'
FROM anime_adatlap a
LEFT JOIN reszek r ON a.id = r.anime_id
LEFT JOIN anime_cimke ac ON a.id = ac.anime_id
LEFT JOIN cimke_lista c ON ac.cimke_id = c.id
LEFT JOIN anime_studio ast ON a.id = ast.anime_id
LEFT JOIN studio_lista s ON ast.studio_id = s.id
GROUP BY a.id
ORDER BY a.ertekeles DESC;
