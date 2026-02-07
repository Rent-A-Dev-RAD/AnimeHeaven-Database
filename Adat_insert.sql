-- Forrás típusok beszúrása (AUTO_INCREMENT generálja az id-t)
INSERT INTO `forras_tipus` (`nev`) VALUES
('Indavideo'),
('Videa');

-- Profil adatok beszúrása
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

-- Anime adatlap beszúrása (AUTO_INCREMENT generálja az id-t)
INSERT INTO `anime_adatlap` (`mal_id`, `borito`, `hatter`, `japan_cim`, `angol_cim`, `leiras`, `megjelenes`, `besorolas`, `statusz`, `tipus`, `szezon`, `keszito`, `ertekeles`, `feltoltes_ido`, `lathatosag`, `osszes_epizod`, `jelenlegi_epizod`, `trailer`) VALUES
('44511', 'https://cdn.myanimelist.net/images/anime/1806/126216l.webp', 'https://image.tmdb.org/t/p/original/onn6JPGNwqcOUkp73ADq0PEpuLv.jpg', 'Chainsaw Man', 'Chainsaw Man', 'Denji a szülei halála után hatalmas tartozást örököl. Hogy kifizesse, démonokra vadászik Pochita nevű démon-láncfűrész-kutyája segítségével. Nem vágynak másra, csak egy normális életre. Viszont a jakuza elárulja őket, így feldarabolva végzik egy szemetesben. Itt egyezséget kötnek, amelynek hála egy erősebb testen osztoznak majd. Ezután egy professzionális démonvadász csapat befogadja őket. Így a harc a normális életért tovább folyik.', '2022-10-12', 'R-17+', 'Befejezett', 'TV', '2022 ŐSZ', 'Naruto-Kun', 9.0, '2022-10-12', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/jk7QSGwupPA?enablejsapi=1&wmode=opaque&autoplay=0'),
('50346', 'https://cdn.myanimelist.net/images/anime/1045/123711l.webp', 'https://image.tmdb.org/t/p/original/veh7M4ho0vgqkW0n0hx1Up42elV.jpg', 'Yofukashi no Uta', 'Call Of The Night', 'Ko Yamori éjszakánként bolyong az utcákon, mert nem tud aludni. Egy éjszaka találkozik Nazuna Nanakusával, egy titokzatos lánnyal, aki felfedi, hogy vámpír. Nazuna megmutatja Ko-nak az éjszakai élet varázsát és szabadságát, miközben különös kapcsolat alakul ki közöttük.', '2022-07-08', 'R-17+', 'Befejezett', 'TV', '2022 Nyár', 'Black Ryuu Team', 8.9, '2022-07-08', 1, '13', 13, 'https://www.youtube-nocookie.com/embed/a4bSbmqwhso?enablejsapi=1&wmode=opaque&autoplay=0'),
('40748', 'https://cdn.myanimelist.net/images/anime/1171/109222l.webp', 'https://image.tmdb.org/t/p/original/j0gsESaBzFmYVhnBTXzIE9PsgY8.jpg', 'Jujutsu Kaisen', 'Jujutsu Kaisen', 'Yuuji Itadori egy rendkívüli fizikai képességekkel rendelkező középiskolás. Egyik napja azzal kezdődik, hogy találkozik egy jujutsu varázslóval, aki elátkozott tárgyakat kutat. Amikor barátai veszélybe kerülnek, Yuuji lenyeli egy erős átok ujját, hogy megmentse őket.', '2020-10-03', 'R-17+', 'Folyamatban', 'TV', '2020 Ősz', 'Naruto-Kun', 8.8, '2020-10-03', 1, '24', 24, 'https://www.youtube-nocookie.com/embed/4A_X-Dvl0ws?enablejsapi=1&wmode=opaque&autoplay=0'),
('48736', 'https://cdn.myanimelist.net/images/anime/1179/119897l.webp', 'https://image.tmdb.org/t/p/original/lt6iImp0S1cFOUs8i0hr1ycqyCu.jpg', 'Sono Bisque Doll wa Koi wo Suru', 'My Dress-Up Darling', 'Wakana Gojou egy középiskolás fiú, aki hina babák készítésével foglalkozik. Egy nap osztálytársa, Marin Kitagawa felfedezi Wakana tehetségét, és megkéri, hogy segítsen neki cosplay jelmezek készítésében. Így kezdődik kettejük különleges barátsága.', '2022-01-09', 'PG-13', 'Befejezett', 'TV', '2022 Tél', 'AnimeCenter', 8.7, '2022-01-09', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/tFKDKd8z-NU?enablejsapi=1&wmode=opaque&autoplay=0'),
('1535', 'https://cdn.myanimelist.net/images/anime/9/9453l.webp', 'https://image.tmdb.org/t/p/original/mOlEbXcb6ufRJKogI35KqsSlCfB.jpg', 'Death Note', 'Death Note', 'Light Yagami egy kiváló tanuló, aki egy különleges noteszre bukkan, a Death Note-ra. Bárki neve, akit a noteszba írnak, meghal. Light úgy dönt, hogy megtisztítja a világot a gonosztól, de hamarosan egy titokzatos nyomozó, L nyomába ered.', '2006-10-04', 'R-17+', 'Befejezett', 'TV', '2006 Ősz', 'Hidden Leaf Team', 8.6, '2006-10-04', 1, '37', 37, 'https://www.youtube-nocookie.com/embed/Vt_3c8BgxV4?enablejsapi=1&wmode=opaque&autoplay=0'),
('50739', 'https://cdn.myanimelist.net/images/anime/1240/133638l.webp', 'https://image.tmdb.org/t/p/original/eusdD22WIeV27BVQPSJz6YONtqf.jpg', 'Otonari no Tenshi-sama ni Itsunomanika Dame Ningen ni Sareteita Ken', 'The Angel Next Door Spoils Me Rotten', 'Amane Fujimiya egy magányos középiskolás fiú, aki egy napon találkozik szomszédjával, Mahiru Shiinával, akit az iskolában angyalnak hívnak. Amikor Mahiru észreveszi Amane rendetlen életmódját, eldönti, hogy gondoskodik róla.', '2023-01-07', 'PG-13', 'Befejezett', 'TV', '2023 Tél', 'Muteki Fansub', 9.0, '2023-01-07', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/IUq59ARXtdg?enablejsapi=1&wmode=opaque&autoplay=0'),
('61773', 'https://cdn.myanimelist.net/images/anime/1148/150376l.webp', 'https://image.tmdb.org/t/p/original/kARAcjWmKnb9mnDPRTU9zxs5Ad2.jpg', 'Let''s Play: Quest-darake no My Life', 'Let''s Play', 'Főiskolai évei alatt Sam Young órákat töltött kaland-logikai játékának, a Ruminate-nek a fejlesztésével. Annak ellenére, hogy gyerekként nagyon beteg volt, Sam igazi játékfejlesztő szeretne lenni. De amikor kedvenc játékstreamere, Marshall Law kipróbálja a játékot, szörnyen félreérti, és kijelenti, hogy ez a legrosszabb játék, amit valaha játszott. Ennek eredményeként rajongói negatív értékelésekkel bombázzák Sam játékát, veszélybe sodorva ezzel az álmait.<br><br>A helyzetet tovább rontja, hogy Marshall Sam új szomszédja lesz, nem tudva, hogy ő az a fejlesztő, akit olyan keményen kritizált. Bár Marshall gondoskodónak és kedvesnek tűnik, Samnek nehézséget okoz, hogy barátságot kötjön vele. Mielőtt második játékát, az Evermake-et kifejlesztheti, Samnek először ki kell találnia, hogyan hozhatja helyre tönkrement hírnevét.', '2025-10-02', 'PG-13', 'Befejezett', 'TV', '2025 ŐSZ', 'Rudolfskysub', 1, '2025-10-02', 6.76, '12', 12, 'https://www.youtube-nocookie.com/embed/ZmvyXUE_t_k?enablejsapi=1&wmode=opaque&autoplay=0'),
('57555', 'https://cdn.myanimelist.net/images/anime/1763/150638l.webp', 'https://image.tmdb.org/t/p/original/xVlpyPgAjZiCcFYnKu87CNj55cu.jpg', 'Chainsaw Man Movie: Reze-hen', 'Chainsaw Man – The Movie: Reze Arc', 'A Chainsaw Man 1. évada után való folytatás.', '2025-09-19', '17+', 'Befejezett', 'Movie', '2025 ŐSZ', 'Muteki Fansub', 9.10, '2025-09-19', 1, '1', 1, 'https://www.youtube-nocookie.com/embed/VfoZp7CmOkE?enablejsapi=1&wmode=opaque&autoplay=0'),
('50695', 'https://www.themoviedb.org/t/p/original/yuelUbcko5B25UgUKe30B3al2Z9.jpg', 'https://www.themoviedb.org/t/p/original/stEMpPdy4wRoHyNN7KmiLuOE0S0.jpg', 'MF Ghost', 'MF Ghost', 'A nagyon is közeli jövőben az elektromos önvezető autók már elterjedtnek számítanak Japán szerte. Kanata Livington, aki kivételes tehetségnek számít az autóversenyzés terén, éppen befejezte angliai tanulmányait, és hazatér a belső égésű benzinmotorral felszerelt kocsijával az immáron sofőr nélkül száguldó, elektromos autók hazájába.', '2023-10-02', 'PG-13', 'Befejezett', 'TV', '2023 ŐSZ', 'Akio-Fansub, AnimeDrive', 7.56, '2023-10-02', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/zNWZjjkKfXs?enablejsapi=1&wmode=opaque&autoplay=0'),
('57559', 'https://cdn.myanimelist.net/images/anime/1037/145338l.webp', 'https://image.tmdb.org/t/p/original/qEqLerjgjX9BL1fsqRc4MoWzqIU.jpg', 'MF Ghost 2nd Season', 'MF Ghost Season 2', 'Az MF Ghost 2. évadja', '2024-10-07', '13+', 'Befejezett', 'TV', '2024 ŐSZ', 'Lordminator', 7.81, '2024-10-07', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/zn_3RAMZj9E?enablejsapi=1&wmode=opaque&autoplay=0'),
('60602', 'https://cdn.myanimelist.net/images/anime/1419/154458l.webp', 'https://image.tmdb.org/t/p/original/stEMpPdy4wRoHyNN7KmiLuOE0S0.jpg', 'MF Ghost 3rd Season', 'MF Ghost Season 3', 'MF Ghost 3. évadja.', '2026-01-01', '13+', 'Fut', 'TV', '2026 TÉL', 'Lordminator', 8.03, '2026-01-01', 1, '?', 5, 'https://www.youtube-nocookie.com/embed/hUcDI5hSBPo?enablejsapi=1&wmode=opaque&autoplay=0');

-- Anime-stúdió kapcsolatok beszúrása (a studio_lista táblából ID alapján)
INSERT INTO `anime_studio` (`anime_id`, `studio_id`) 
SELECT a.id, s.id 
FROM anime_adatlap a
JOIN studio_lista s
WHERE (a.angol_cim = 'Chainsaw Man' AND s.studio_nev = 'MAPPA')
   OR (a.angol_cim = 'Call Of The Night' AND s.studio_nev = 'Lidenfilms')
   OR (a.angol_cim = 'Jujutsu Kaisen' AND s.studio_nev = 'MAPPA')
   OR (a.angol_cim = 'My Dress-Up Darling' AND s.studio_nev = 'CloverWorks')
   OR (a.angol_cim = 'Death Note' AND s.studio_nev = 'Madhouse')
   OR (a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND s.studio_nev = 'Project No.9')
   OR (a.angol_cim = 'Let''s Play' AND s.studio_nev = 'OLM')
   OR (a.angol_cim = 'Chainsaw Man – The Movie: Reze Arc' AND s.studio_nev = 'MAPPA')
   OR (a.angol_cim = 'MF Ghost' AND s.studio_nev = 'Felix Film')
   OR (a.angol_cim = 'MF Ghost Season 2' AND s.studio_nev = 'Felix Film')
   OR (a.angol_cim = 'MF Ghost Season 3' AND s.studio_nev = 'Felix Film');

-- Anime-címke kapcsolatok beszúrása (a cimke_lista táblából ID alapján)
INSERT INTO `anime_cimke` (`anime_id`, `cimke_id`)
SELECT a.id, c.id
FROM anime_adatlap a
JOIN cimke_lista c
WHERE (a.angol_cim = 'Chainsaw Man' AND c.cimke_nev = 'Action')
   OR (a.angol_cim = 'Chainsaw Man' AND c.cimke_nev = 'Fantasy')
   OR (a.angol_cim = 'Call Of The Night' AND c.cimke_nev = 'Supernatural')
   OR (a.angol_cim = 'Call Of The Night' AND c.cimke_nev = 'Romance')
   OR (a.angol_cim = 'Jujutsu Kaisen' AND c.cimke_nev = 'Action')
   OR (a.angol_cim = 'Jujutsu Kaisen' AND c.cimke_nev = 'Fantasy')
   OR (a.angol_cim = 'Jujutsu Kaisen' AND c.cimke_nev = 'Shounen')
   OR (a.angol_cim = 'My Dress-Up Darling' AND c.cimke_nev = 'Romance')
   OR (a.angol_cim = 'My Dress-Up Darling' AND c.cimke_nev = 'Slice of Life')
   OR (a.angol_cim = 'Death Note' AND c.cimke_nev = 'Suspense')
   OR (a.angol_cim = 'Death Note' AND c.cimke_nev = 'Supernatural')
   OR (a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND c.cimke_nev = 'Romance')
   OR (a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND c.cimke_nev = 'Slice of Life')
   OR (a.angol_cim = 'Let''s Play' AND c.cimke_nev = 'Drama')
   OR (a.angol_cim = 'Let''s Play' AND c.cimke_nev = 'Romance')
   OR (a.angol_cim = 'Chainsaw Man – The Movie: Reze Arc' AND c.cimke_nev = 'Action')
   OR (a.angol_cim = 'Chainsaw Man – The Movie: Reze Arc' AND c.cimke_nev = 'Fantasy')
   OR (a.angol_cim = 'Chainsaw Man – The Movie: Reze Arc' AND c.cimke_nev = 'Shounen')
   OR (a.angol_cim = 'MF Ghost' AND c.cimke_nev = 'Seinen')
   OR (a.angol_cim = 'MF Ghost' AND c.cimke_nev = 'Sports')
   OR (a.angol_cim = 'MF Ghost' AND c.cimke_nev = 'Drama')
   OR (a.angol_cim = 'MF Ghost Season 2' AND c.cimke_nev = 'Seinen')
   OR (a.angol_cim = 'MF Ghost Season 2' AND c.cimke_nev = 'Sports')
   OR (a.angol_cim = 'MF Ghost Season 2' AND c.cimke_nev = 'Drama')
   OR (a.angol_cim = 'MF Ghost Season 3' AND c.cimke_nev = 'Drama')
   OR (a.angol_cim = 'MF Ghost Season 3' AND c.cimke_nev = 'Seinen')
   OR (a.angol_cim = 'MF Ghost Season 3' AND c.cimke_nev = 'Sports');


-- Részek beszúrása - Chainsaw Man (12 rész)
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

-- Részek beszúrása - Call of the Night (13 rész)
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

-- Részek beszúrása - Jujutsu Kaisen (24 rész)
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

-- Részek beszúrása - My Dress-Up Darling (12 rész)
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

-- Részek beszúrása - Death Note (37 rész)
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

-- Részek beszúrása - The Angel Next Door Spoils Me Rotten (12 rész)
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

-- Részek beszúrása - Let's Play (12 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Let''s Play';

-- Részek beszúrása - Chainsaw Man Movie: Reze Arc (1 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, 'Film', 1 FROM anime_adatlap WHERE angol_cim = 'Chainsaw Man – The Movie: Reze Arc';

-- Részek beszúrása - MF Ghost (12 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost';

-- Részek beszúrása - MF Ghost Season 2 (12 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 2';

-- Részek beszúrása - MF Ghost Season 3 (5 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 3' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 3' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 3' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 3' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'MF Ghost Season 3';



-- Forrás elemek - Chainsaw Man (Videa linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2115862.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2122583.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2128854.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2172886.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2180532.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2186899.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2191775.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2198591.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2203161.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2218117.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2219917.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2231170.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man' AND r.sorrend = 12;

-- Forrás elemek - Call of the Night (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1504c218d3' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/17bab4906e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d4318f45b7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/00c5c20d53' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1363d8f66f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/a4c4bfa4bf' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f84f2721bd' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/10a1901a40' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/4793124702' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c3abea8c53' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9bf6fea98e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/5023d038ca' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 12 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/04177bca42' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Call Of The Night' AND r.sorrend = 13;

-- Forrás elemek - Jujutsu Kaisen (Videa linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://videa.hu/player?v=2dSQaZt8ARheeksS' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=JY5hTJzRyJ3YvKD6' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=DDyMVmFaaUodAeo2' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=OdmF3xxnYYNXbsxZ' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=AMQvwmCCGiHqIBWo' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=5f0riFjIUCjkttkT' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=k9WZbCuGpAx32Fd0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=i7xrLt8awWerbNUS' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=eYgdFf3XE0ksP8ic' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=e4jdYSIPrekNZTQK' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=dBua0mH5UU0unazY' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=BJ6hZBfsDpET0kjj' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 12 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=Iz5yIuuy8GNU55yb' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 13 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=q4suAuWjY5AHFYi1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 14 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=XVKv7OQgZzRuTPo7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 15 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=5tapvxcG48D7hsRD' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 16 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=BpzweDplCKeCWPL0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 17 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=se2P3vcU4YWnQk7Q' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 18 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=DbXitw1vutjBnz8L' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 19 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=C7OiOIp7RVYO8zb8' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 20 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=MjVA6PMDXQtgJzJv' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 21 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=7ESfXTiAYWyvi2KI' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 22 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=I1APXGB0HqBolMJr' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 23 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?v=TtnCaifof9WxiXRc' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Jujutsu Kaisen' AND r.sorrend = 24;

-- Forrás elemek - My Dress-Up Darling (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/86dd4bef6d' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/14ec055ca2' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f9ee121743' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/85537f7dda' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/58c17a1a16' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/74406e2eb8' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/be7f1a793c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9a35c1f226' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9c44d85d15' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/8f9bda6fb2' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9a9df5b775' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/745e52f031' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'My Dress-Up Darling' AND r.sorrend = 12;

-- Forrás elemek - Death Note (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/80bb6b6714' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/984bfc889d' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/dcc8125f9f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/dcefc47071' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/6fa8ba8e9a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/42ed4c1054' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c2b3ffc5d0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/63231b7a3b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/0689ded9a7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/5c51714948' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1ee64d64cf' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1384c87c5e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 12 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/e46712c7fc' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 13 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/bfac23292a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 14 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/92ed6af747' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 15 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/95538b94c9' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 16 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/583658e9fa' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 17 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f06a35010f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 18 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/46967b8a86' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 19 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/5312a55760' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 20 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/84828cf5b5' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 21 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7da260787d' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 22 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c54c0b32c5' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 23 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d2667c65b2' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 24 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/6c6366c214' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 25 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/0fb10f877a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 26 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f675e1942b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 27 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/4fd84456b2' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 28 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/365b5ceb9d' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 29 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d5708805f1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 30 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/dd919614b6' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 31 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/8fa4d39fb6' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 32 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/6aac26007e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 33 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/2891b1c309' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 34 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/e90bb11d49' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 35 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7d43b7cdb7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 36 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/8bd41eaa94' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Death Note' AND r.sorrend = 37;

-- Forrás elemek - The Angel Next Door Spoils Me Rotten (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/daf32ea189' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c41f1abc8e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/16a0969e8c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/37d001e9e6' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/5002520ad9' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/97d4e442e4' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/5e1d8bb270' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/767a12f315' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7a02260740' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f8d54e22e4' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/60eb4cbc94' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/891dc7228d' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND r.sorrend = 12;

-- Forrás elemek - Let's Play (Videa linkek - Link2)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560746.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560748.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560751.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560754.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560755.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560757.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560758.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560759.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560762.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560764.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560765.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3560766.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 12;

-- Forrás elemek - Let's Play (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d66d262168' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/3d3d9f0d8c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/8a95a56701' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c56c8cc6d1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/3dbeb8f44b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d7c24a0cd4' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/12ede6d57a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/143b05de62' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/5e48f94d15' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/58112899a6' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/4275627db7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d86eccd741' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Let''s Play' AND r.sorrend = 12;

-- Forrás elemek - Chainsaw Man Movie: Reze Arc (Videa link)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3543680.2511611.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Chainsaw Man – The Movie: Reze Arc' AND r.sorrend = 1;

-- Forrás elemek - MF Ghost (Videa linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2489879.2293168.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.2525235.2293168.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 2;

-- Forrás elemek - MF Ghost (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/099e58472f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/877fd5e4b5' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/405a5cebf1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/bb06183bbf' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/6599cfb69c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1e082510f9' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/af306d4f8e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/5eee4bc5ba' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/683a075798' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/ed3d032401' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost' AND r.sorrend = 12;

-- Forrás elemek - MF Ghost Season 2 (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/cd39c718c9' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/37c2335883' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/b5be7f0eee' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/79764fadac' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d6e1f0b654' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c527b28370' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/2698ffec65' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d7d43aac94' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/6509501c6b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/af0574a569' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/74c9ea28db' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/bb560cd230' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 2' AND r.sorrend = 12;

-- Forrás elemek - MF Ghost Season 3 (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f9d74d0f4e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 3' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9d669499ea' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 3' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/baae22e48c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 3' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/21c3df38eb' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 3' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/a5171b76a4' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'MF Ghost Season 3' AND r.sorrend = 5;

