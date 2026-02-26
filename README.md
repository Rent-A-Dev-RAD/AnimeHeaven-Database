# AnimeHeaven-Database

Ez a projekt egy **MySQL adatbázist** tartalmaz az *AnimeHeaven* alkalmazáshoz. A repository tartalmazza az adatbázis struktúráját, valamint mintaadatokat a gyors teszteléshez és fejlesztéshez.

## Követelmények

* **XAMPP** (Apache + MySQL)
* MySQL / MariaDB
* phpMyAdmin (XAMPP része)

## Telepítés

Az adatbázis telepítése két egyszerű lépésből áll:

1. **Adatbázis és táblák létrehozása**
   Futtasd le a `setup.sql` fájlt. Ez létrehozza az adatbázist és a szükséges táblákat.

2. **Mintaadatok importálása**
   A struktúra létrehozása után futtasd le az `sample-data-full.sql` fájlt, amely sample adatokat tölt fel a táblákba.

> ⚠️ Fontos: Először mindig a `setup.sql`-t futtasd le, csak utána az `sample-data-full.sql`-t.

## Importálás XAMPP-ban (phpMyAdmin)

1. Indítsd el az **Apache** és **MySQL** szolgáltatásokat XAMPP-ban
2. Nyisd meg a **phpMyAdmin** felületet
3. Válaszd az **Importálás** menüpontot
4. Importáld a `Full_animeheaven_database.sql` fájlt

## Tartalom

* `setup.sql` – adatbázis és táblák létrehozása
* `sample-data-full.sql` – minta (sample) adatok


Email cím adott a táblázatban; Jelszó, a felhasználó név minden kicsivel és a végén `123`
---

*Készítette: Rent-A-Dev*
