-- Forrás típusok beszúrása (AUTO_INCREMENT generálja az id-t)
INSERT INTO `forras_tipus` (`nev`) VALUES
('Indavideo'),
('Videa');

-- Lista típusok beszúrása
INSERT INTO `lista_tipus` (`tipus`) VALUES
('Kedvenc'),
('Megnézendő'),
('Tetszett'),
('Nem tetszett'),
('Droppolt');

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
('44511', 'https://cdn.myanimelist.net/images/anime/1806/126216l.webp', 'https://image.tmdb.org/t/p/original/onn6JPGNwqcOUkp73ADq0PEpuLv.jpg', 'Chainsaw Man', 'Chainsaw Man', 'Denji a szülei halála után hatalmas tartozást örököl. Hogy kifizesse, démonokra vadászik Pochita nevű démon-láncfűrész-kutyája segítségével. Nem vágynak másra, csak egy normális életre. Viszont a jakuza elárulja őket, így feldarabolva végzik egy szemetesben. Itt egyezséget kötnek, amelynek hála egy erősebb testen osztoznak majd. Ezután egy professzionális démonvadász csapat befogadja őket. Így a harc a normális életért tovább folyik.', '2022-10-12', 'R-17+', 'Befejezett', 'TV', '2022 ŐSZ', 'Naruto-Kun', 8.95, '2022-10-12', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/jk7QSGwupPA?enablejsapi=1&wmode=opaque&autoplay=0'),
('50346', 'https://cdn.myanimelist.net/images/anime/1045/123711l.webp', 'https://image.tmdb.org/t/p/original/veh7M4ho0vgqkW0n0hx1Up42elV.jpg', 'Yofukashi no Uta', 'Call Of The Night', 'Ko Yamori éjszakánként bolyong az utcákon, mert nem tud aludni. Egy éjszaka találkozik Nazuna Nanakusával, egy titokzatos lánnyal, aki felfedi, hogy vámpír. Nazuna megmutatja Ko-nak az éjszakai élet varázsát és szabadságát, miközben különös kapcsolat alakul ki közöttük.', '2022-07-08', 'R-17+', 'Befejezett', 'TV', '2022 Nyár', 'Black Ryuu Team', 8.90, '2022-07-08', 1, '13', 13, 'https://www.youtube-nocookie.com/embed/a4bSbmqwhso?enablejsapi=1&wmode=opaque&autoplay=0'),
('40748', 'https://cdn.myanimelist.net/images/anime/1171/109222l.webp', 'https://image.tmdb.org/t/p/original/j0gsESaBzFmYVhnBTXzIE9PsgY8.jpg', 'Jujutsu Kaisen', 'Jujutsu Kaisen', 'Yuuji Itadori egy rendkívüli fizikai képességekkel rendelkező középiskolás. Egyik napja azzal kezdődik, hogy találkozik egy jujutsu varázslóval, aki elátkozott tárgyakat kutat. Amikor barátai veszélybe kerülnek, Yuuji lenyeli egy erős átok ujját, hogy megmentse őket.', '2020-10-03', 'R-17+', 'Fut', 'TV', '2020 Ősz', 'Naruto-Kun', 8.83, '2020-10-03', 1, '24', 24, 'https://www.youtube-nocookie.com/embed/4A_X-Dvl0ws?enablejsapi=1&wmode=opaque&autoplay=0'),
('48736', 'https://cdn.myanimelist.net/images/anime/1179/119897l.webp', 'https://image.tmdb.org/t/p/original/lt6iImp0S1cFOUs8i0hr1ycqyCu.jpg', 'Sono Bisque Doll wa Koi wo Suru', 'My Dress-Up Darling', 'Wakana Gojou egy középiskolás fiú, aki hina babák készítésével foglalkozik. Egy nap osztálytársa, Marin Kitagawa felfedezi Wakana tehetségét, és megkéri, hogy segítsen neki cosplay jelmezek készítésében. Így kezdődik kettejük különleges barátsága.', '2022-01-09', 'PG-13', 'Befejezett', 'TV', '2022 Tél', 'AnimeCenter', 8.68, '2022-01-09', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/tFKDKd8z-NU?enablejsapi=1&wmode=opaque&autoplay=0'),
('1535', 'https://cdn.myanimelist.net/images/anime/9/9453l.webp', 'https://image.tmdb.org/t/p/original/mOlEbXcb6ufRJKogI35KqsSlCfB.jpg', 'Death Note', 'Death Note', 'Light Yagami egy kiváló tanuló, aki egy különleges noteszre bukkan, a Death Note-ra. Bárki neve, akit a noteszba írnak, meghal. Light úgy dönt, hogy megtisztítja a világot a gonosztól, de hamarosan egy titokzatos nyomozó, L nyomába ered.', '2006-10-04', 'R-17+', 'Befejezett', 'TV', '2006 Ősz', 'Hidden Leaf Team', 8.62, '2006-10-04', 1, '37', 37, 'https://www.youtube-nocookie.com/embed/Vt_3c8BgxV4?enablejsapi=1&wmode=opaque&autoplay=0'),
('50739', 'https://cdn.myanimelist.net/images/anime/1240/133638l.webp', 'https://image.tmdb.org/t/p/original/eusdD22WIeV27BVQPSJz6YONtqf.jpg', 'Otonari no Tenshi-sama ni Itsunomanika Dame Ningen ni Sareteita Ken', 'The Angel Next Door Spoils Me Rotten', 'Amane Fujimiya egy magányos középiskolás fiú, aki egy napon találkozik szomszédjával, Mahiru Shiinával, akit az iskolában angyalnak hívnak. Amikor Mahiru észreveszi Amane rendetlen életmódját, eldönti, hogy gondoskodik róla.', '2023-01-07', 'PG-13', 'Befejezett', 'TV', '2023 Tél', 'Muteki Fansub', 9.05, '2023-01-07', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/IUq59ARXtdg?enablejsapi=1&wmode=opaque&autoplay=0'),
('61773', 'https://cdn.myanimelist.net/images/anime/1148/150376l.webp', 'https://image.tmdb.org/t/p/original/kARAcjWmKnb9mnDPRTU9zxs5Ad2.jpg', 'Let''s Play: Quest-darake no My Life', 'Let''s Play', 'Főiskolai évei alatt Sam Young órákat töltött kaland-logikai játékának, a Ruminate-nek a fejlesztésével. Annak ellenére, hogy gyerekként nagyon beteg volt, Sam igazi játékfejlesztő szeretne lenni. De amikor kedvenc játékstreamere, Marshall Law kipróbálja a játékot, szörnyen félreérti, és kijelenti, hogy ez a legrosszabb játék, amit valaha játszott. Ennek eredményeként rajongói negatív értékelésekkel bombázzák Sam játékát, veszélybe sodorva ezzel az álmait. A helyzetet tovább rontja, hogy Marshall Sam új szomszédja lesz, nem tudva, hogy ő az a fejlesztő, akit olyan keményen kritizált. Bár Marshall gondoskodónak és kedvesnek tűnik, Samnek nehézséget okoz, hogy barátságot kötjön vele. Mielőtt második játékát, az Evermake-et kifejlesztheti, Samnek először ki kell találnia, hogyan hozhatja helyre tönkrement hírnevét.', '2025-10-02', 'PG-13', 'Befejezett', 'TV', '2025 ŐSZ', 'Rudolfskysub', 6.76, '2025-10-02', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/ZmvyXUE_t_k?enablejsapi=1&wmode=opaque&autoplay=0'),
('57555', 'https://cdn.myanimelist.net/images/anime/1763/150638l.webp', 'https://image.tmdb.org/t/p/original/xVlpyPgAjZiCcFYnKu87CNj55cu.jpg', 'Chainsaw Man Movie: Reze-hen', 'Chainsaw Man – The Movie: Reze Arc', 'A Chainsaw Man 1. évada után való folytatás.', '2025-09-19', 'R-17+', 'Befejezett', 'Film', '2025 ŐSZ', 'Muteki Fansub', 9.10, '2025-09-19', 1, '1', 1, 'https://www.youtube-nocookie.com/embed/VfoZp7CmOkE?enablejsapi=1&wmode=opaque&autoplay=0'),
('42897', 'https://cdn.myanimelist.net/images/anime/1695/111486l.jpg', 'https://www.themoviedb.org/t/p/original/xNd77OTbhuqp8nMZzv55USSRJDo.jpg', 'Horimiya', 'Horimiya', 'Hori Kyoko látszatra egy átlagos tizenéves lánynak tűnhet, ám ez koránt sem igaz. A munkamániás szülei távollétében vigyáznia kell kisöccsére, Sotára, emellett főznie és takarítania is kell magukra. Ennek következtében nincs ideje a szokásos tinik társadalmi életét élnie. Erős felelősségtudata mellett nem hogy a karaokét, de még egy fél órás fagyizást sem engedhet meg magának tanítás után. Bárhová hívják barátai, ügyesen kibújik a tényleges válasz alól. Ám egy nap véletlenül találkozik valakivel, aki mint később kiderült, nem is annyira idegen, a látszatra csendes, szemüveges, sötét jellemű, pletykák szerint otaku osztálytársával, Miyamura Izumival. Később maga Hori jön rá, hogy bármit, amit gondolt, bármit, amit hallott a fiúról, az mind ellentéte annak, amint jobban megismeri a másik oldalát.', '2021-01-10', 'PG-13', 'Befejezett', 'TV', '2021 TÉL', 'AnimeGun Subs & Dark-Subs', 8.18, '2021-01-10', 1, '13', 13, 'https://www.youtube-nocookie.com/embed/e4RCugyx5No?enablejsapi=1&wmode=opaque&autoplay=0'),
('54856', 'https://image.tmdb.org/t/p/original/uj83treg58OvYnAAV9VF9p9qron.jpg', 'https://www.themoviedb.org/t/p/original/mNFcBM82O0AG5pU9JwOcJqH98G9.jpg', 'Horimiya: Piece', 'Horimiya: The Missing Pieces', 'Hori Kyoko látszatra egy átlagos tizenéves lánynak tűnhet, ám ez koránt sem igaz. A munkamániás szülei távollétében vigyáznia kell kisöccsére, Sotára, emellett főznie és takarítania is kell magukra. Ennek következtében nincs ideje a szokásos tinik társadalmi életét élnie. Erős felelősségtudata mellett nem hogy a karaokét, de még egy fél órás fagyizást sem engedhet meg magának tanítás után. Bárhová hívják barátai, ügyesen kibújik a tényleges válasz alól. Ám egy nap véletlenül találkozik valakivel, aki mint később kiderült, nem is annyira idegen, a látszatra csendes, szemüveges, sötét jellemű, pletykák szerint otaku osztálytársával, Miyamura Izumival. Később maga Hori jön rá, hogy bármit, amit gondolt, bármit, amit hallott a fiúról, az mind ellentéte annak, amint jobban megismeri a másik oldalát.', '2023-07-01', 'PG-13', 'Befejezett', 'TV', '2023 NYÁR', 'AnimeTrix', 8.12, '2023-07-01', 1, '13', 13, 'https://www.youtube-nocookie.com/embed/MU-Vk5R0vVY?enablejsapi=1&wmode=opaque&autoplay=0'),
('50695', 'https://www.themoviedb.org/t/p/original/yuelUbcko5B25UgUKe30B3al2Z9.jpg', 'https://www.themoviedb.org/t/p/original/stEMpPdy4wRoHyNN7KmiLuOE0S0.jpg', 'MF Ghost', 'MF Ghost', 'A nagyon is közeli jövőben az elektromos önvezető autók már elterjedtnek számítanak Japán szerte. Kanata Livington, aki kivételes tehetségnek számít az autóversenyzés terén, éppen befejezte angliai tanulmányait, és hazatér a belső égésű benzinmotorral felszerelt kocsijával az immáron sofőr nélkül száguldó, elektromos autók hazájába.', '2023-10-02', 'PG-13', 'Befejezett', 'TV', '2023 ŐSZ', 'Akio-Fansub, AnimeDrive', 7.56, '2023-10-02', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/zNWZjjkKfXs?enablejsapi=1&wmode=opaque&autoplay=0'),
('57559', 'https://cdn.myanimelist.net/images/anime/1037/145338l.webp', 'https://image.tmdb.org/t/p/original/qEqLerjgjX9BL1fsqRc4MoWzqIU.jpg', 'MF Ghost 2nd Season', 'MF Ghost Season 2', 'Az MF Ghost 2. évadja', '2024-10-07', 'PG-13', 'Befejezett', 'TV', '2024 ŐSZ', 'Lordminator', 7.81, '2024-10-07', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/zn_3RAMZj9E?enablejsapi=1&wmode=opaque&autoplay=0'),
('60602', 'https://cdn.myanimelist.net/images/anime/1419/154458l.webp', 'https://image.tmdb.org/t/p/original/stEMpPdy4wRoHyNN7KmiLuOE0S0.jpg', 'MF Ghost 3rd Season', 'MF Ghost Season 3', 'MF Ghost 3. évadja.', '2026-01-01', 'PG-13', 'Fut', 'TV', '2026 TÉL', 'Lordminator', 8.03, '2026-01-01', 1, '?', 5, 'https://www.youtube-nocookie.com/embed/hUcDI5hSBPo?enablejsapi=1&wmode=opaque&autoplay=0'),
('877', 'https://cdn.myanimelist.net/images/anime/2/11232l.webp', 'https://image.tmdb.org/t/p/original/xqbimh1vOdiGAYnu0bz3y3TcIBj.jpg', 'Nana', 'Nana (Szinkronos)', 'Tartalmazza a Nana Soushuuhen: Junko no Heya epizódokat, azaz a 11,5., a 21,5. és a 36,5. részeket, ezek mindig az előttük játszódó egységeket dolgozzák fel. A narrálással (egy másik szereplő elbeszélésével) és a külsős megfigyeléssel lesz kicsit másabb. Így a sztori egyes részei kicsit más megvilágításba kerülnek. Történet: Két huszonéves lány tart Tokióba, hogy megvalósítsák nagyon különböző álmaikat, és mindkettőjüket Nanának hívják. Komatsu Nana egy vidéki polgári család lánya, naív, nyílt, és folyton szerelmes; Osaki Nana egy félárva punkzenész - határozott, kemény lány, aki önmagát és karrierjét keresni megy a fővárosba. A sors úgy hozza, hogy a két Nana először a vonaton, majd Tokióban is találkozik, végül lakótársak lesznek. Szerelmek és szakítások, siker és bukás, boldogság és tragédiák kísérik a felnőtté válásukat.', '2006-04-05', 'R-17+', 'Befejezett', 'TV', '2006 TAVASZ', 'Szinkronos', 8.57, '2006-04-05', 1, '50', 50, 'https://www.youtube-nocookie.com/embed/Tad-n4Xh3nI?enablejsapi=1&wmode=opaque&autoplay=0'),
('61142', 'https://cdn.myanimelist.net/images/anime/1025/150482l.webp', 'https://image.tmdb.org/t/p/original/vhF2LhGE0pGLtA7RHpACpP87H64.jpg', 'Sawaranaide Kotesashi-kun', 'Hands Off: Sawaranaide Kotesashi-kun', 'Kotesashi Kouyou, a kiemelkedően tehetséges masszőr sportorvos szeretne lenni, ezért a középiskolát a Seiwa Akadémián kezdi meg, remélve, hogy ösztöndíjjal felvételt nyer majd az intézet orvosi egyetemére is. Hogy fedezni tudja a megélhetését, elvállalja az iskola kollégiumának gondnokságát, majd hamarosan egy egész csapat, rendkívül tehetséges és különc sportoló lányról kell gondoskodnia.', '2025-10-06', 'R-17+', 'Befejezett', 'TV', '2025 ŐSZ', 'AsakuraTeam', 6.16, '2025-10-06', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/z5v3pIg35Lw?enablejsapi=1&wmode=opaque&autoplay=0'),
('22319', 'https://cdn.myanimelist.net/images/anime/1498/134443l.webp', 'https://image.tmdb.org/t/p/original/uQNMXlsim9jrsY9MdU6dqTlQbZD.jpg', 'Tokyo Ghoul', 'Tokyo Ghoul', 'Furcsa gyilkosságok történnek Tokyoban. Rémmesébe illő, maszkot viselő lények, ghoulok az elkövetők, akik teljesen beolvadnak a társadalomba. Egy átlagos, egyetemi diák, Kaneki megismerkedik egy hasonló érdeklődésű lánnyal, Rizével, de nem tudja, hogy ez a találkozás egy éjszaka alatt felforgatja az életét.', '2014-07-04', 'R-17+', 'Befejezett', 'TV', '2014 NYÁR', 'Zahuczky Sub Team', 7.79, '2014-07-04', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/vGuQeQsoRgU?enablejsapi=1&wmode=opaque&autoplay=0'),
('27899', 'https://cdn.myanimelist.net/images/anime/1889/123307l.webp', 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2020/04/tokyo-ghoul-re-season-2-poster.jpg', 'Tokyo Ghoul 2.évad', 'Tokyo Ghoul √A', 'Ken Kaneki végre elfogadta azt a szörnyeteg, húsevő részét, amitől oly sokáig félt és megvetett. Miután megszökött a fogságból és a kínzásokból, Kaneki csatlakozik az Aogiri Tree - ahhoz a harcias ghoul szervezethez, amely elrabolta őt, ami arra készteti barátait, hogy megkérdőjelezzék valódi indítékát és hűségét.Ahogy a kormány és a ghoulok közötti feszültség egyre nő, a Ghoulok Elleni Bizottság, a kormány ghoul-ellenes szakosított ügynöksége fokozza erőfeszítéseit, hogy teljesen megtisztítsa Tokiót a ghouloktól. Ez veszélyezteti Kaneki barátainak és egykori bajtársainak - az Anteiku kávézó ghouljainak - átmeneti békéjét. A veszélyes helyzet tudatában Kaneki számos csatával néz szembe, amelyek során értékes, múlandó emberségét teszi kockára.', '2015-01-09', 'R-17+', 'Befejezett', 'TV', '2015 TÉL', 'Naruto-Kun', 7.03, '2015-01-09', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/v9fgZUBfZjk?enablejsapi=1&wmode=opaque&autoplay=0'),
('36511', 'https://cdn.myanimelist.net/images/anime/1063/95086l.webp', 'https://image.tmdb.org/t/p/original/uQNMXlsim9jrsY9MdU6dqTlQbZD.jpg', 'Tokyo Ghoul:Re', 'Tokyo Ghoul:re', 'A Commission of Counter Ghoul az egyetlen szervezet, mely felveszi a harcot a ghoulokkal szemben, és képesek bármilyen eszközt bevetni a cél érdekében. A legújabb fegyverük ebben a rejtett háborúban még kísérleti fázisban van, és ghoul erővel ruházza fel a nyomozóikat. Sem az eljárás, sem a csapat nem volt még tesztelve, ezért Haise Sasaki kapja a feladatot, hogy kiképezze őket. Nehéz helyzetbe kerül, mert nem csak a saját maga bizonytalanságával kell megküzdenie, de a csapata valamennyi tagjának elég problémás személyisége van.', '2018-04-03', 'R-17+', 'Befejezett', 'TV', '2018 TAVASZ', 'Naruto-Kun', 6.37, '2018-04-03', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/dZ36ToJLHtA?enablejsapi=1&wmode=opaque&autoplay=0'),
('37799', 'https://cdn.myanimelist.net/images/anime/1545/121995l.webp', 'https://image.tmdb.org/t/p/original/uQNMXlsim9jrsY9MdU6dqTlQbZD.jpg', 'Tokyo Ghoul:Re 2 ', 'Tokyo Ghoul:Re 2', 'A Tsukiyama családi megsemmisítési művelet lezárása után a Commission of Counter Ghoul (röviden CCG) tagjai hatványozottan megnőttek hatalmukon, és továbbra is azt a célt követik, hogy Japánban minden ghoult megsemmisítsenek. Miután lemondott a Quinx Squadról,  a most érzelemmentesnek tűnő Haise Sasaki egyre több feladatot kezd el vállalni a CCG-től, a nehézségekre való tekintet nélkül.  Üres megnyilvánulásai ellenére Ken Kaneki emlékei felújulnak Haise-ban, belső konfliktusok állapotába kerülve.  Eközben új, hideg szívű viselkedése kihat a körülötte lévő emberekre. A Quinx Squad zavarban marad, és egyik tagjuk halálával kell megbirkózniuk korábbi mentoruk támogatása nélkül.', '2018-10-09', 'R-17+', 'Befejezett', 'TV', '2018 ŐSZ', 'Naruto-Kun', 6.47, '2018-10-09', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/UUeqpuZobBw?enablejsapi=1&wmode=opaque&autoplay=0'),
('59644', 'https://cdn.myanimelist.net/images/anime/1830/145051l.webp', 'https://image.tmdb.org/t/p/original/jHJtQvmraESA5GoK9oo2Plyzk2U.jpg', 'Yasei no Last Boss ga Arawareta!', 'A Wild Last Boss Appeared!', '2800-at írunk, és Lufas Maphaahl - a Fekete Szárnyú Zsarnok, a Nagy Hódító és a Tizenkét Égi Csillag vezetője - visszatért. Egy férfi az MMO-karaktere testében ébred fel 200 évvel azután, hogy legyőzték őt egy esemény során az Exgate Online játékban. Ez azonban nem játék többé, hanem egy másik világ, amiben Lufasnak boldogulnia kell.', '2025-10-04', 'PG-13', 'Befejezett', 'TV', '2025 ŐSZ', 'Slime-kun', 7.47, '2025-10-04', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/Y_G0A8ohFLo?enablejsapi=1&wmode=opaque&autoplay=0'),
('40211', 'https://cdn.myanimelist.net/images/anime/1583/108598l.webp', 'https://image.pmgstatic.com/cache/resized/w936/files/images/film/photos/165/774/165774104_4d5404.jpg', 'Luo Xiao Hei Zhan Ji', 'The Legend of Hei', 'A film egy magányos kis macskaszellem, Xiaohei történetét hivatott elmesélni. Elűzték erdejéből, így új otthont keresve vándorol, közben találkozik más szellemekkel, végül egy ember mellett találja magát, akit Wuxian-nak hívnak. Igaz, nem önszántából tart vele, viszont az út során sokat tanul tőle. Felébrednek alvó képességei, világnézete pedig sokat változik. Kettejük kapcsolatára és erre a fejlődésre fókuszál ez a kínai film. Kellemes történet, nem hiányzik belőle a komikum, sem a harc, mindenből tartalmaz egy kicsit.', '2019-09-07', 'G', 'Befejezett', 'Film', '2019 ŐSZ', 'AnimegunFansub', 7.98, '2019-09-07', 1, '1', 1, 'https://www.youtube-nocookie.com/embed/G9oTNGF1OZE?enablejsapi=1&wmode=opaque&autoplay=0'),
('59457', 'https://cdn.myanimelist.net/images/anime/1999/144601l.webp', 'https://image.tmdb.org/t/p/original/j32RT713AHcBfL4HWQPz0aBxI4H.jpg', 'Haite Kudasai, Takamine-san', 'Please Put Them On, Takamine-san', 'Takamine Takane a középiskola dívája, aki páratlan szépséggel, kiemelkedő tanulmányi és sporteredményekkel rendelkezik, ráadásul ő a diáktanács elnöknője. Egy nap azonban Shirota Koushi, a jelentéktelen társadalmi kitaszított tanuló rájön, hogy Takane sikerének a kulcsa nem máshol rejlik, mint a lány bugyijában. Ugyanis valahányszor lehúzza azt, Takane meg nem történtté tudja tenni a múltbéli hibáit. És most, hogy Koushi tudja a titkát, esélye sincs elmenekülni Takane elől.', '2025-04-02', 'R-17+', 'Fut', 'TV', '2025 TAVASZ', 'Anime Sekai Team & Muteki Fansub', 6.18, '2025-04-02', 1, '12', 8, 'https://www.youtube-nocookie.com/embed/XQABbjkXMB4?enablejsapi=1&wmode=opaque&autoplay=0'),
('7088', 'https://cdn.myanimelist.net/images/anime/11/75554l.webp', 'https://www.crunchyroll.com/imgsrv/display/thumbnail/1200x675/catalog/crunchyroll/be4bfc1bf10f3cf02302552b2d6c6acf.jpe', 'Ichiban Ushiro no Daimaou', 'Demon King Daimao', 'Akuto Sai arról álmodik, hogy jóra változtatja a világot, ezért átiratkozik a Constant Mágikus Akadémiára, ahol összeBarátkozik az erényes nindzsa klán egyik tagjával, Junko Hattori-val. Az akadémiára menet megfogadják, hogy együtt jobbá teszik a világot, azonban megérkezésekor a helyzet hirtelen rosszára fordul - megjósolták, hogy ő lesz a Démonkirály! Ahogy a végzetének híre elterjed, az iskola félni kezd tőle, és Junko bizalma is megingott benne. Miközben Akuto eltökélt szándéka, hogy nem hagyja, hogy a megjósolt jövője irányítsa a sorsát, úgy tűnik, hogy minden, amit mond és tesz, csak azt a tényt erősíti, hogy a végzete szerint ő lesz a Démonkirály. Ráadásul egy gyönyörű lányokból álló hárem veszi körül, akiknek mind saját tervei vannak vele, kezdve attól, hogy igazságot szolgáltatnak neki, egészen addig, hogy egyszerűen csak szerelemmel árasztják el. Újonnan felébredt erejével Akutónak meg kell birkóznia a szerencsétlenségek folyamatosan növekvő listájával, és harcolnia kell azért, hogy bebizonyítsa, sorsa nincs kőbe vésve.', '2010-04-03', 'R-17+', 'Befejezett', 'TV', '2010 TAVASZ', 'AnimeAddicts', 6.72, '2010-04-03', 1, '12', 12, 'https://www.youtube-nocookie.com/embed/jlhUNY_AFMA?enablejsapi=1&wmode=opaque&autoplay=0'),
('55995', 'https://cdn.myanimelist.net/images/anime/1577/147967l.webp', 'https://image.tmdb.org/t/p/original/2MKiO2NDEC6bGWC060OOs9yAvej.jpg', 'Your Forma', 'Your Forma', 'A Your Forma egy csodás okosfonal technológia, amit eredetileg egy vírusos agyvelőgyulladás járvány megfékezésére fejlesztettek ki, ám idővel a mindennapi élet szerves részévé vált. De ezek a kényelmes eszközöknek van egy nagy hátrányuk is, miszerint rögzítenek minden képet, hangot, sőt még a felhasználóik által tapasztalt érzelmeket is. Hieda Echika elektronikus nyomozó számára a napi munka része, hogy a Your Forma segítségével elmerül az emberek emlékeiben és még a legnehezebb bűncselekményekhez is felkutatja a bizonyítékokat. A probléma az, hogy olyan jól csinálja, hogy az asszisztensei szó szerint megsütik az  agyukat, mivel lépést akarnak tartani vele, ezért a felső vezetés végül egy vele egyenrangú társat ad Echikának: egy Harold Lucraft nevű, zseniális és pimasz androidot. Vajon ez a valószínűtlen duó képes lesz-e megfakadályozni, hogy egy halálos technológiai fertőzés végigsöpörjön az egész világon, még mielőtt túl késő lenne?', '2025-04-02', 'R-17+', 'Befejezett', 'TV', '2025 TAVASZ', 'Naruto-Kun', 6.26, '2025-04-02', 1, '13', 13, 'https://www.youtube-nocookie.com/embed/v2PU0EhV8uw?enablejsapi=1&wmode=opaque&autoplay=0'),
('60489', 'https://cdn.myanimelist.net/images/anime/1182/149879l.webp', 'https://image.tmdb.org/t/p/original/cdwldPawuTyVLJCzPfy2ZEXFAy8.jpg', 'Takopii no Genzai', 'Takopi''s Original Sin', 'Egy tintahalszerű lény, akit Happiannek hívnak, elhagyja szülőbolygóját azzal a céllal, hogy boldogságot terjesszen az univerzumban. A Földre érkezik, de hamarosan veszélybe kerül, mert a bolygó lakói fogságba ejtik. Szerencsére egy mosolytalan kislány, Shizuka Kuze talál rá, aki megeteti és Takopii névre kereszteli. Takopii hálából elhatározza, hogy mindent megtesz, hogy mosolyt csaljon a kislány arcára. A feladat azonban könnyebb mondani, mint megcsinálni. Shizukát osztálytársai zaklatják, nincs apja, és anyja soha nincs otthon – bár ezeknek a problémáknak a súlya elkerüli a naiv Takopii figyelmét. Ennek ellenére Shizukának van egy boldogságforrása: kutyája, Chappy. Shizuka és Chappy közötti kapcsolat csak tovább növeli Takopii vágyát, hogy mosolyt csaljon a kislány arcára. Bár Takopii kísérletei, hogy felvidítsa Shizukát, nem várt következményekkel járnak, ő elszántan veszi kezébe a dolgokat, teszteli az emberekről szerzett ismereteit, és eléri célját, hogy boldogságot terjesszen.', '2025-06-28', 'R-17+', 'Befejezett', 'TV', '2025 NYÁR', 'Sakura Guild', 8.76, '2025-06-28', 1, '6', 6, 'https://www.youtube-nocookie.com/embed/SUhYB0W7gM0?enablejsapi=1&wmode=opaque&autoplay=0');

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
   OR (a.angol_cim = 'MF Ghost Season 3' AND s.studio_nev = 'Felix Film')
   OR (a.angol_cim = 'Nana (Szinkronos)' AND s.studio_nev = 'Madhouse')
   OR (a.angol_cim = 'Horimiya' AND s.studio_nev = 'CloverWorks')
   OR (a.angol_cim = 'Horimiya: The Missing Pieces' AND s.studio_nev = 'CloverWorks')
   OR (a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND s.studio_nev = 'Quad')
   OR (a.angol_cim = 'Tokyo Ghoul' AND s.studio_nev = 'Studio Pierrot')
   OR (a.angol_cim = 'Tokyo Ghoul √A' AND s.studio_nev = 'Studio Pierrot')
   OR (a.angol_cim = 'Tokyo Ghoul:re' AND s.studio_nev = 'Studio Pierrot')
   OR (a.angol_cim = 'Tokyo Ghoul:Re 2' AND s.studio_nev = 'Studio Pierrot')
   OR (a.angol_cim = 'A Wild Last Boss Appeared!' AND s.studio_nev = 'WAO World')
   OR (a.angol_cim = 'The Legend of Hei' AND s.studio_nev = 'HMCH')
   OR (a.angol_cim = 'Please Put Them On, Takamine-san' AND s.studio_nev = 'Lidenfilms')
   OR (a.angol_cim = 'Demon King Daimao' AND s.studio_nev = 'Artland')
   OR (a.angol_cim = 'Your Forma' AND s.studio_nev = 'Geno Studio')
   OR (a.angol_cim = 'Takopi''s Original Sin' AND s.studio_nev = 'Enishiya');

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
   OR (a.angol_cim = 'MF Ghost Season 3' AND c.cimke_nev = 'Sports')
   OR (a.angol_cim = 'Nana (Szinkronos)' AND c.cimke_nev = 'Drama')
   OR (a.angol_cim = 'Nana (Szinkronos)' AND c.cimke_nev = 'Romance')
   OR (a.angol_cim = 'Nana (Szinkronos)' AND c.cimke_nev = 'Shoujo')
   OR (a.angol_cim = 'Horimiya' AND c.cimke_nev = 'Romance')
   OR (a.angol_cim = 'Horimiya' AND c.cimke_nev = 'Shounen')
   OR (a.angol_cim = 'Horimiya: The Missing Pieces' AND c.cimke_nev = 'Romance')
   OR (a.angol_cim = 'Horimiya: The Missing Pieces' AND c.cimke_nev = 'Shounen')
   OR (a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND c.cimke_nev = 'Sports')
   OR (a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND c.cimke_nev = 'Ecchi')
   OR (a.angol_cim = 'Tokyo Ghoul' AND c.cimke_nev = 'Action')
   OR (a.angol_cim = 'Tokyo Ghoul' AND c.cimke_nev = 'Mystery')
   OR (a.angol_cim = 'Tokyo Ghoul' AND c.cimke_nev = 'Horror')
   OR (a.angol_cim = 'Tokyo Ghoul' AND c.cimke_nev = 'Psychological')
   OR (a.angol_cim = 'Tokyo Ghoul' AND c.cimke_nev = 'Supernatural')
   OR (a.angol_cim = 'Tokyo Ghoul' AND c.cimke_nev = 'Drama')
   OR (a.angol_cim = 'Tokyo Ghoul' AND c.cimke_nev = 'Seinen')
   OR (a.angol_cim = 'Tokyo Ghoul √A' AND c.cimke_nev = 'Action')
   OR (a.angol_cim = 'Tokyo Ghoul √A' AND c.cimke_nev = 'Fantasy')
   OR (a.angol_cim = 'Tokyo Ghoul √A' AND c.cimke_nev = 'Horror')
   OR (a.angol_cim = 'Tokyo Ghoul √A' AND c.cimke_nev = 'Suspense')
   OR (a.angol_cim = 'Tokyo Ghoul √A' AND c.cimke_nev = 'Seinen')
   OR (a.angol_cim = 'Tokyo Ghoul:re' AND c.cimke_nev = 'Action')
   OR (a.angol_cim = 'Tokyo Ghoul:re' AND c.cimke_nev = 'Fantasy')
   OR (a.angol_cim = 'Tokyo Ghoul:re' AND c.cimke_nev = 'Horror')
   OR (a.angol_cim = 'Tokyo Ghoul:re' AND c.cimke_nev = 'Suspense')
   OR (a.angol_cim = 'Tokyo Ghoul:re' AND c.cimke_nev = 'Seinen')
   OR (a.angol_cim = 'Tokyo Ghoul:Re 2' AND c.cimke_nev = 'Action')
   OR (a.angol_cim = 'Tokyo Ghoul:Re 2' AND c.cimke_nev = 'Drama')
   OR (a.angol_cim = 'Tokyo Ghoul:Re 2' AND c.cimke_nev = 'Horror')
   OR (a.angol_cim = 'Tokyo Ghoul:Re 2' AND c.cimke_nev = 'Mystery')
   OR (a.angol_cim = 'Tokyo Ghoul:Re 2' AND c.cimke_nev = 'Psychological')
   OR (a.angol_cim = 'Tokyo Ghoul:Re 2' AND c.cimke_nev = 'Seinen')
   OR (a.angol_cim = 'Tokyo Ghoul:Re 2' AND c.cimke_nev = 'Supernatural')
   OR (a.angol_cim = 'A Wild Last Boss Appeared!' AND c.cimke_nev = 'Action')
   OR (a.angol_cim = 'A Wild Last Boss Appeared!' AND c.cimke_nev = 'Adventure')
   OR (a.angol_cim = 'A Wild Last Boss Appeared!' AND c.cimke_nev = 'Fantasy')
   OR (a.angol_cim = 'The Legend of Hei' AND c.cimke_nev = 'Adventure')
   OR (a.angol_cim = 'The Legend of Hei' AND c.cimke_nev = 'Drama')
   OR (a.angol_cim = 'The Legend of Hei' AND c.cimke_nev = 'Fantasy')
   OR (a.angol_cim = 'Please Put Them On, Takamine-san' AND c.cimke_nev = 'Comedy')
   OR (a.angol_cim = 'Please Put Them On, Takamine-san' AND c.cimke_nev = 'Romance')
   OR (a.angol_cim = 'Please Put Them On, Takamine-san' AND c.cimke_nev = 'Ecchi')
   OR (a.angol_cim = 'Please Put Them On, Takamine-san' AND c.cimke_nev = 'Shounen')
   OR (a.angol_cim = 'Demon King Daimao' AND c.cimke_nev = 'Action')
   OR (a.angol_cim = 'Demon King Daimao' AND c.cimke_nev = 'Comedy')
   OR (a.angol_cim = 'Demon King Daimao' AND c.cimke_nev = 'Fantasy')
   OR (a.angol_cim = 'Demon King Daimao' AND c.cimke_nev = 'Romance')
   OR (a.angol_cim = 'Demon King Daimao' AND c.cimke_nev = 'Ecchi')
   OR (a.angol_cim = 'Your Forma' AND c.cimke_nev = 'Mystery')
   OR (a.angol_cim = 'Your Forma' AND c.cimke_nev = 'Sci-Fi')
   OR (a.angol_cim = 'Takopi''s Original Sin' AND c.cimke_nev = 'Drama')
   OR (a.angol_cim = 'Takopi''s Original Sin' AND c.cimke_nev = 'Sci-Fi')
   OR (a.angol_cim = 'Takopi''s Original Sin' AND c.cimke_nev = 'Shounen');


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

-- Részek beszúrása - Nana (Szinkronos) (47 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 12, '11_5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 13, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 14, '13. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 15, '14. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 16, '15. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 17, '16. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 18, '17. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 19, '18. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 20, '19. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 21, '20. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 22, '21. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 23, '21_5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 24, '22. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 25, '23. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 26, '24. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 27, '25. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 28, '26. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 29, '27. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 30, '28. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 31, '29. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 32, '30. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 33, '31. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 34, '32. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 35, '33. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 36, '34. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 37, '35. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 38, '36. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 39, '36_5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 40, '37. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 41, '38. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 42, '39. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 43, '40. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 44, '41. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 45, '42. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 46, '43. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 47, '44. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 48, '45. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 49, '46. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)' UNION ALL
SELECT id, 50, '47. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Nana (Szinkronos)';

-- Részek beszúrása - Hands Off: Sawaranaide Kotesashi-kun (12 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun';

-- Részek beszúrása - Tokyo Ghoul (12 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul';

-- Részek beszúrása - Tokyo Ghoul √A (12 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul √A';

-- Részek beszúrása - Tokyo Ghoul:re (12 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:re';

-- Részek beszúrása - Tokyo Ghoul:Re 2 (12 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Tokyo Ghoul:Re 2';

-- Részek beszúrása - A Wild Last Boss Appeared! (12 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'A Wild Last Boss Appeared!';

-- Részek beszúrása - The Legend of Hei (Movie)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, 'Film', 1 FROM anime_adatlap WHERE angol_cim = 'The Legend of Hei';

-- Részek beszúrása - Please Put Them On, Takamine-san (8 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Please Put Them On, Takamine-san' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Please Put Them On, Takamine-san' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Please Put Them On, Takamine-san' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Please Put Them On, Takamine-san' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Please Put Them On, Takamine-san' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Please Put Them On, Takamine-san' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Please Put Them On, Takamine-san' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Please Put Them On, Takamine-san';

-- Részek beszúrása - Demon King Daimao (12 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Demon King Daimao';

-- Részek beszúrása - Your Forma (13 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma' UNION ALL
SELECT id, 13, '13. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Your Forma';

-- Részek beszúrása - Takopi's Original Sin (6 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Takopi''s Original Sin' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Takopi''s Original Sin' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Takopi''s Original Sin' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Takopi''s Original Sin' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Takopi''s Original Sin' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Takopi''s Original Sin';

-- Forrás elemek - Nana (Szinkronos) (Videa linkek - 50 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536427.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536425.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536423.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536422.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536421.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536420.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536419.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536418.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536417.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536416.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536415.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536414.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 12 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536414.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 13 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536411.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 14 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536409.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 15 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536407.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 16 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536406.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 17 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536405.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 18 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536403.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 19 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536402.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 20 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536401.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 21 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536399.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 22 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536397.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 23 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536395.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 24 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536394.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 25 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536393.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 26 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536391.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 27 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536387.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 28 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536387.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 29 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536385.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 30 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536383.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 31 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536381.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 32 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536376.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 33 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536372.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 34 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536377.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 35 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536368.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 36 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536366.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 37 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536363.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 38 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536361.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 39 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536361.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 40 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536356.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 41 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536351.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 42 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536349.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 43 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536357.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 44 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536344.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 45 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536342.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 46 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536340.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 47 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536338.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 48 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536335.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 49 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3536334.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 50;

-- Forrás elemek - Nana (Szinkronos) (Indavideo linkek - 50 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/07dd6eb06a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/dfd0caac6e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/030353e616' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/4266934166' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/833738234a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/3847a30c96' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/dc9a6251b6' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/8d0611fe4f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f3331069e1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/61fc5fe423' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/614f90ed1f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/64f92de31a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 12 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/5d27bfcaf3' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 13 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/3155e68a2c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 14 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/825b026723' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 15 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/8edf317d9c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 16 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/0e10ea2795' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 17 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d9d539e884' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 18 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1844ae5075' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 19 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/ea0f7fd6f1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 20 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/ddbadcd7d4' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 21 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/8ea1ea1f50' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 22 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f2517c1dc6' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 23 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/171fab6fb9' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 24 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9325fbf324' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 25 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9d93645425' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 26 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/29ff6bfb72' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 27 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9300102f11' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 28 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/29a2432cdd' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 29 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/23a012eca2' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 30 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7730e81554' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 31 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f7911b3745' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 32 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/ceb36b826b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 33 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f19ced3685' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 34 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/2d0c265eca' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 35 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/dc98ff260c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 36 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f256aca05c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 37 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/74525b729b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 38 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/181bb45eff' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 39 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/b361bd97b2' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 40 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c353b8dbe1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 41 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/cb9beb14e7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 42 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/edce7036f7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 43 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7737249d0d' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 44 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/da164ddc1a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 45 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7822df65fd' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 46 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/267483bdfd' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 47 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/79caf506d0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 48 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/2384fddd8d' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 49 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/bb39cbc4ef' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Nana (Szinkronos)' AND r.sorrend = 50;

-- Forrás elemek - A Wild Last Boss Appeared! (Videa linkek - 12 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3463073.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3463079.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3463087.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3463091.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3463098.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3509688.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3509690.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3509698.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3531701.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3531706.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3531633.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3544575.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'A Wild Last Boss Appeared!' AND r.sorrend = 12;

-- Forrás elemek - The Legend of Hei (Indavideo link - Movie)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/27c8d0b4e5' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'The Legend of Hei' AND r.sorrend = 1;

-- Forrás elemek - Please Put Them On, Takamine-san (Indavideo linkek - 8 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/604b19806a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Please Put Them On, Takamine-san' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c2bf45ac9f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Please Put Them On, Takamine-san' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d3a2be6777' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Please Put Them On, Takamine-san' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/137a696a06' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Please Put Them On, Takamine-san' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/11e7ff2257' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Please Put Them On, Takamine-san' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/aa9b89cb18' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Please Put Them On, Takamine-san' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/57f190b6ed' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Please Put Them On, Takamine-san' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c149ab2667' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Please Put Them On, Takamine-san' AND r.sorrend = 8;

-- Forrás elemek - Demon King Daimao (Indavideo linkek - 12 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/33a35a1f9f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/e2c7f949ae' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9dc0a11219' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/2f67982492' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1bf74d757c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1fed4ca201' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9457ffcc6d' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/aa697ddeb2' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/6f80a170c7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/daf0c4d416' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/35dd2cdfb0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/39d90ed426' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Demon King Daimao' AND r.sorrend = 12;

-- Forrás elemek - Your Forma (Videa linkek - 13 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3282157.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3287213.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3289588.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3428139.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3429839.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3434262.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3434269.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3435714.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3438163.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3438495.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3438521.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3440904.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 12 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3441030.1265416.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Your Forma' AND r.sorrend = 13;

-- Forrás elemek - Takopi's Original Sin (Indavideo linkek - 6 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/70a1f49a57' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Takopi''s Original Sin' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/40d7f8ea09' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Takopi''s Original Sin' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/e473f547c6' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Takopi''s Original Sin' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/527b203984' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Takopi''s Original Sin' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f5e5bdef54' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Takopi''s Original Sin' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1912c37299' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Takopi''s Original Sin' AND r.sorrend = 6;

-- Részek beszúrása - Horimiya (13 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya' UNION ALL
SELECT id, 13, '13. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya';

-- Forrás elemek - Horimiya (Videa linkek - 13 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512186.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512191.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512195.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512196.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512203.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512206.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512209.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512210.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512212.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512215.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512217.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512222.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 12 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3512226.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya' AND r.sorrend = 13;

-- Forrás elemek - Horimiya (Indavideo linkek - 13 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9573c794b9' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/785f2c2b7e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c296a70149' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/4cdb1b0d49' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/43b1d82580' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/5af48c15c8' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/661fe5f4f1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/12cc8e6ff1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/342f8a0df7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/4e5ef5c817' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/b25f90a4c8' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/432d24adbf' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 12 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1dbebe332f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya' AND r.sorrend = 13;

-- Részek beszúrása - Horimiya: The Missing Pieces (13 rész)
INSERT INTO `reszek` (`anime_id`, `sorrend`, `resz`, `lathatosag`)
SELECT id, 1, '1. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 2, '2. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 3, '3. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 4, '4. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 5, '5. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 6, '6. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 7, '7. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 8, '8. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 9, '9. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 10, '10. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 11, '11. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 12, '12. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces' UNION ALL
SELECT id, 13, '13. rész', 1 FROM anime_adatlap WHERE angol_cim = 'Horimiya: The Missing Pieces';

-- Forrás elemek - Horimiya: The Missing Pieces (Videa linkek - 13 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614726.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614728.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614729.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614731.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614734.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614736.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614740.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614742.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614744.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614746.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614749.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614750.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 12 UNION ALL
SELECT ft.id, r.id, 'https://videa.hu/player?f=8.3614770.2567651.0' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Videa' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 13;

-- Forrás elemek - Horimiya: The Missing Pieces (Indavideo linkek - 13 rész)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7fb82b04ab' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/a288885c84' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/6f0461de5a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7b5696b6af' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d485984132' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/53a3a132d7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/044d2b204c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/5cdb432c01' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/b780054ecf' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/de8efd45e6' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/414fad9d90' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1945c7ada8' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 12 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/a6dffb538f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Horimiya: The Missing Pieces' AND r.sorrend = 13;

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

-- Forrás elemek - Hands Off: Sawaranaide Kotesashi-kun (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/fdecea58b2' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/3a7aa7b0d9' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/719649f14e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/4edfc9b24e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/eccc761cfd' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/ddc111900b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/78bb18f4c5' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/55c124be67' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f3fb45b5fe' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c5f72abfe1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/e21d09f8f5' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/81f3049662' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Hands Off: Sawaranaide Kotesashi-kun' AND r.sorrend = 12;

-- Forrás elemek - Tokyo Ghoul (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/e0a35311da' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/cb180adcf2' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/eaf902bae9' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/fdf3bb29b7' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9b9d26ff1b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/fe1f07ca5c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1eaeeb3d3b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/cbd5652f21' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/4f86e0e159' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/200ce4a234' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/4e2a293fa1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/4769a2968f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul' AND r.sorrend = 12;

-- Forrás elemek - Tokyo Ghoul √A (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/77c4857cf5' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c3d74053df' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/c8bde6eba3' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/f95103e905' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7e7f79bbb9' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d1c8f93fde' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/058639ca3c' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/9d39e31003' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/6c0a256112' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/993ec1e931' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/bc74255731' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/29154c662b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul √A' AND r.sorrend = 12;

-- Forrás elemek - Tokyo Ghoul:re (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/ba85a94db1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7b10f94e0f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d3bcaf894e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7a530cfdfc' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/6ed57904e5' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/e3b1139564' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/33ac33ef44' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/ef8500308e' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/53737bbcc4' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/3e317068b3' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/ea0cd0857a' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/b5bf126dd6' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:re' AND r.sorrend = 12;

-- Forrás elemek - Tokyo Ghoul:Re 2 (Indavideo beágyazott linkek)
INSERT INTO `forras_elem` (`forras_id`, `resz_id`, `link`)
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/7c9da0082f' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 1 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/38b293e8c5' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 2 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/422b4f2708' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 3 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/a38623e2fe' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 4 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/b6afb8e625' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 5 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/d161653b28' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 6 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/3fbadf4fb1' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 7 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/1dbfbefa62' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 8 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/faf9388615' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 9 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/2f406ed6c9' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 10 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/cc543e8b80' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 11 UNION ALL
SELECT ft.id, r.id, 'https://embed.indavideo.hu/player/video/ff6fab7a0b' FROM forras_tipus ft, reszek r JOIN anime_adatlap a ON r.anime_id = a.id WHERE ft.nev = 'Indavideo' AND a.angol_cim = 'Tokyo Ghoul:Re 2' AND r.sorrend = 12;

-- Lista elemek beszúrása (Felhasználók listái)
-- AnimeFan2024 listaelemei
INSERT INTO `lista_elem` (`profil_id`, `anime_id`, `tipus_id`)
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND t.tipus = 'Kedvenc' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Jujutsu Kaisen' AND t.tipus = 'Tetszett' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND t.tipus = 'Kedvenc' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'MF Ghost Season 3' AND t.tipus = 'Megnézendő';

-- OtakuMaster listaelemei
INSERT INTO `lista_elem` (`profil_id`, `anime_id`, `tipus_id`)
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND t.tipus = 'Kedvenc' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'Call Of The Night' AND t.tipus = 'Tetszett' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'The Angel Next Door Spoils Me Rotten' AND t.tipus = 'Megnézendő' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'Let''s Play' AND t.tipus = 'Droppolt';

-- MangaReader listaelemei
INSERT INTO `lista_elem` (`profil_id`, `anime_id`, `tipus_id`)
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND t.tipus = 'Tetszett' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man – The Movie: Reze Arc' AND t.tipus = 'Megnézendő' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'MF Ghost' AND t.tipus = 'Nem tetszett' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND t.tipus = 'Kedvenc';

-- TesztUser listaelemei
INSERT INTO `lista_elem` (`profil_id`, `anime_id`, `tipus_id`)
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND t.tipus = 'Tetszett' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'MF Ghost Season 2' AND t.tipus = 'Megnézendő' UNION ALL
SELECT p.id, a.id, t.id FROM profil_adatlap p, anime_adatlap a, lista_tipus t WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'My Dress-Up Darling' AND t.tipus = 'Kedvenc';

-- Előzmények beszúrása (Nézési történet)
-- AnimeFan2024 előzményei - Chainsaw Man (12/12 rész) és Death Note (20/37 rész)
INSERT INTO `elozmeny` (`profil_id`, `anime_id`, `resz_id`, `megnezve`)
SELECT p.id, a.id, r.id, '2024-10-15 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 1 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-15 21:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 2 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-16 19:45:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 3 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-16 20:15:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 4 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-17 18:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 5 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-17 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 6 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-18 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 7 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-18 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 8 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-19 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 9 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-19 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 10 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-20 18:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 11 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-20 18:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 12 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-01 21:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 1 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-01 21:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 2 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-02 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 3 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-02 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 4 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-03 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 5 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-03 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 6 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-04 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 7 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-04 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 8 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-05 21:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 9 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-05 21:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 10 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-06 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 11 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-06 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 12 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-07 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 13 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-07 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 14 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-08 21:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 15 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-08 21:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 16 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-09 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 17 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-09 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 18 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-10 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 19 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-10 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'AnimeFan2024' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 20;

-- OtakuMaster előzményei - My Dress-Up Darling (teljes), Call Of The Night (8 rész)
INSERT INTO `elozmeny` (`profil_id`, `anime_id`, `resz_id`, `megnezve`)
SELECT p.id, a.id, r.id, '2024-09-01 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 1 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-01 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 2 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-02 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 3 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-02 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 4 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-03 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 5 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-03 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 6 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-04 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 7 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-04 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 8 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-05 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 9 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-05 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 10 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-06 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 11 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-06 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 12 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-01 21:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'Call Of The Night' AND r.anime_id = a.id AND r.sorrend = 1 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-01 21:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'Call Of The Night' AND r.anime_id = a.id AND r.sorrend = 2 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-02 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'Call Of The Night' AND r.anime_id = a.id AND r.sorrend = 3 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-02 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'Call Of The Night' AND r.anime_id = a.id AND r.sorrend = 4 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-03 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'Call Of The Night' AND r.anime_id = a.id AND r.sorrend = 5 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-03 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'Call Of The Night' AND r.anime_id = a.id AND r.sorrend = 6 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-04 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'Call Of The Night' AND r.anime_id = a.id AND r.sorrend = 7 UNION ALL
SELECT p.id, a.id, r.id, '2024-10-04 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'OtakuMaster' AND a.angol_cim = 'Call Of The Night' AND r.anime_id = a.id AND r.sorrend = 8;

-- MangaReader előzményei - Jujutsu Kaisen (15 rész), Chainsaw Man (12/12 rész)
INSERT INTO `elozmeny` (`profil_id`, `anime_id`, `resz_id`, `megnezve`)
SELECT p.id, a.id, r.id, '2024-08-01 18:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 1 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-01 18:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 2 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-02 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 3 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-02 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 4 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-03 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 5 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-03 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 6 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-04 18:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 7 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-04 18:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 8 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-05 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 9 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-05 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 10 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-06 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 11 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-06 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 12 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-07 18:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 13 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-07 18:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 14 UNION ALL
SELECT p.id, a.id, r.id, '2024-08-08 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Jujutsu Kaisen' AND r.anime_id = a.id AND r.sorrend = 15 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-15 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 1 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-15 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 2 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-16 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 3 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-16 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 4 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-17 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 5 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-17 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 6 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-18 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 7 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-18 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 8 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-19 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 9 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-19 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 10 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-20 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 11 UNION ALL
SELECT p.id, a.id, r.id, '2024-09-20 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'MangaReader' AND a.angol_cim = 'Chainsaw Man' AND r.anime_id = a.id AND r.sorrend = 12;

-- TesztUser előzményei - Death Note (10 rész), My Dress-Up Darling (6 rész)
INSERT INTO `elozmeny` (`profil_id`, `anime_id`, `resz_id`, `megnezve`)
SELECT p.id, a.id, r.id, '2024-11-15 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 1 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-15 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 2 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-16 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 3 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-16 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 4 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-17 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 5 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-17 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 6 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-18 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 7 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-18 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 8 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-19 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 9 UNION ALL
SELECT p.id, a.id, r.id, '2024-11-19 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'Death Note' AND r.anime_id = a.id AND r.sorrend = 10 UNION ALL
SELECT p.id, a.id, r.id, '2024-12-01 21:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 1 UNION ALL
SELECT p.id, a.id, r.id, '2024-12-01 21:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 2 UNION ALL
SELECT p.id, a.id, r.id, '2024-12-02 20:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 3 UNION ALL
SELECT p.id, a.id, r.id, '2024-12-02 20:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 4 UNION ALL
SELECT p.id, a.id, r.id, '2024-12-03 19:00:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 5 UNION ALL
SELECT p.id, a.id, r.id, '2024-12-03 19:30:00' FROM profil_adatlap p, anime_adatlap a, reszek r WHERE p.felhasznalonev = 'TesztUser' AND a.angol_cim = 'My Dress-Up Darling' AND r.anime_id = a.id AND r.sorrend = 6;


