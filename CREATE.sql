create table Strefy
(NazwaStrefy	VARCHAR(50)	PRIMARY KEY	NOT	NULL ,
DataPowstnia	DATE,
TypStrefy	VARCHAR(50));

create table Opiekunowie
(PESEL	CHAR(11)	PRIMARY KEY CHECK (PESEL NOT LIKE '%[^0-9]%') NOT NULL,
Imie	VARCHAR(50)	CHECK (LEFT(Imie, 1) = UPPER(LEFT(Imie, 1))) NOT NULL,
Nazwisko	VARCHAR(50) CHECK (LEFT(Nazwisko, 1) = UPPER(LEFT(Nazwisko, 1))) NOT NULL,
RokUrodzenia	DATE	NOT NULL,
Wyksztalcenie	VARCHAR(50)	CHECK (Wyksztalcenie IN ('Podstawowe', 'Gimnazjalne', 'Zawodowe', 'Bran¿owe', 'Œrednie', 'Wy¿sze', 'Brak') ) NOT NULL,
Stanowisko	VARCHAR(50)	CHECK (Stanowisko IN ('Opiekun','Starszy Opiekun','G³ówny Opiekun')) NOT NULL ,
DataZatrudnienia	DATE	NOT NULL,
DataKoncaPracy	DATE);

create table Zwierzeta
(IDzwierzecia	INT	PRIMARY KEY NOT NULL,
Opiekun	CHAR(11) REFERENCES Opiekunowie NOT NULL,
Strefa	VARCHAR(50) REFERENCES Strefy ON UPDATE CASCADE ON DELETE SET NULL,
Gatunek	VARCHAR(50),
Imie	VARCHAR(50) CHECK (LEFT(Imie, 1) = UPPER(LEFT(Imie, 1))),
DataUrodzenia	DATE,
KrajPochodzenia	VARCHAR(50),
Plec	CHAR(1)	CHECK( Plec IN ('F', 'M', 'O')),
DataPrzybycia	DATE,
DataOpuszczenia	DATE);

create table Sprzatania
(Zwierze INT REFERENCES Zwierzeta ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Opiekun	CHAR(11)	REFERENCES Opiekunowie NOT NULL,
DataSprzatania	DATE	NOT NULL,
GodzinaRozpoczeciaSprzatania	TIME(0),
Zakonczone	CHAR(3) CHECK( Zakonczone IN ('TAK', 'NIE')),
PRIMARY KEY(Zwierze, DataSprzatania));

create table BadaniaKontrolne
(Zwierze INT REFERENCES Zwierzeta ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
DataBadania	DATE	NOT NULL,
Waga	FLOAT(3),
StanUzembienia CHAR(16),
Komentarz VARCHAR(MAX)
PRIMARY KEY(Zwierze, DataBadania));

create table Pokazy
(Zwierze	INT REFERENCES Zwierzeta ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Prowadzacy	CHAR(11) REFERENCES Opiekunowie NOT NULL,
DataPokazu	DATE	NOT NULL,
GodzinaRozpoczeciaPokazu	TIME(0),
Zakonczone	CHAR(3) CHECK( Zakonczone IN ('TAK', 'NIE')),
PRIMARY KEY(Zwierze, DataPokazu));

create table Treningi
(Zwierze	INT	REFERENCES Zwierzeta ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Prowadzacy	CHAR(11) REFERENCES Opiekunowie NOT NULL,
DataTreningu	Date	NOT NULL,
GodzinaRozpoczeciaTreningu	TIME(0),
Rodzaj	VARCHAR(50),
PRIMARY KEY(Zwierze, DataTreningu));

create table Pokarmy 
(NazwaPokarmu	VARCHAR(50)	PRIMARY KEY NOT NULL,
Kalorycznosc	FLOAT(3),
Bialko	FLOAT(3),
Tluszcze	FLOAT(3),
Weglowodny	FLOAT(3));

create table Suplementy
(NazwaSuplementu	VARCHAR(50)	REFERENCES Pokarmy(NazwaPokarmu) ON UPDATE CASCADE ON DELETE CASCADE PRIMARY KEY NOT NULL,
SubstancjaAktywna	VARCHAR(50),
Zastosowanie	VARCHAR(50));

create table Dawki
(Pokarm	VARCHAR(50)	REFERENCES Pokarmy ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Zwierze	INT	REFERENCES Zwierzeta ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Ilosc	FLOAT(3)	NOT NULL,
PRIMARY KEY(Pokarm, Zwierze));

create table Karmienia
(Zwierze	INT	REFERENCES Zwierzeta ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Opiekun	CHAR(11)	REFERENCES Opiekunowie NOT NULL,
DataPodania	DATE	NOT NULL,
Podana CHAR(3) CHECK( Podana IN ('TAK', 'NIE')),
PRIMARY KEY(Zwierze, DataPodania));

create table PokarmNiedozwolony
(PokarmNiedozwolony	VARCHAR(50)	REFERENCES Pokarmy ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Zwierze	INT	REFERENCES Zwierzeta ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
Przyczyna	VARCHAR(MAX),
PRIMARY KEY(PokarmNiedozwolony, Zwierze));