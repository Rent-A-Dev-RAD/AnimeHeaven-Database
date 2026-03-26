# AnimeHeaven-Database

Ez a projekt egy **MySQL adatbázist** tartalmaz az *AnimeHeaven* weboldalhoz. A repository tartalmazza az adatbázis struktúráját, valamint mintaadatokat a gyors teszteléshez és fejlesztéshez.

## Követelmények

* **XAMPP** (Apache + MySQL)
* MySQL / MariaDB
* phpMyAdmin (XAMPP része)

## Telepítés

Az adatbázis telepítése két féle módon lehetséges egy egylépses és egy több lépéses:

### Felkészkészülés

1. Indítsd el az **Apache** és **MySQL** szolgáltatásokat XAMPP-ban
2. Nyisd meg a **phpMyAdmin** felületet
3. Válaszd az **Importálás** menüpontot

### Importálás

1. **Egylépéses**

   Futtasd le a `Full_animeheaven_database.sql` fájlt. Ez létrehozza az adatbázist, szükséges táblákat és importálja az adatokat is ezzel kész is vagyunk.

3. **Több lépéses**

   A) Az adatbázis és a táblák létrehozásához először futtasd le az `Animeheaven_database.sql`-t.

   B) A `Basic_cimke_angol.sql`, `Osszes_studio.sql` és `Adat_insert.sql` sql fájl futattásának sorrendje már szabadon választott. 

## Tartalom

Email cím adott a táblázatban; Jelszó, a felhasználó név minden kicsivel és a végén `123`
---

*Készítette: Rent-A-Dev*
