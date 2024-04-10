--Strefy
INSERT INTO [dbo].[Strefy]	VALUES ('Zwierz�ta wodne', '1985.01.01', 'Akwaria')
INSERT INTO [dbo].[Strefy]	VALUES ('Zwierz�ta Afryki', '1985.01.01','Otwarte wybiegi')
INSERT INTO [dbo].[Strefy]	VALUES ('Zwierz�ta Azji', '1995.03.01','Zamkni�te wybiegi')
INSERT INTO [dbo].[Strefy]	VALUES ('Dzika d�ungla', '2000.06.01', 'Otwarte wybiegi')
INSERT INTO [dbo].[Strefy]	VALUES ('Ptaki �wiata', '1985.01.01', 'Woliery')
INSERT INTO [dbo].[Strefy]	VALUES ('Nordycka dzicz', '2010.07.01', 'Otwarte wybiegi')
INSERT INTO [dbo].[Strefy]	VALUES ('�ukczyn', '1997.08.01', 'Zmkni�te wybiegi')
INSERT INTO [dbo].[Strefy]	VALUES ('P�azy', '1997.08.01', 'Terarria i paludaria')
INSERT INTO [dbo].[Strefy]	VALUES ('Zwierz�ta Ameryki', '1995.03.01', 'Otwarte wybiegi' )
INSERT INTO [dbo].[Strefy]	VALUES ('S�owia�skie cuda', '1985.01.01', 'Otwrte wybiegi')

--Opiekunowie
INSERT INTO [dbo].[Opiekunowie] VALUES ('82011689353','Andrzej','Kowalski','1982.01.16','Wy�sze','Starszy Opiekun','1998.01.01',NULL)
INSERT INTO [dbo].[Opiekunowie] VALUES ('79112596129','Anna', 'Rakiewska', '1997.01.25', 'Zawodowe', 'Starszy opiekun', '2005.05.01', '2009.05.01')
INSERT INTO [dbo].[Opiekunowie] VALUES ('94102242916', 'Szymon', 'Dachowski', '1994.10.22', '�rednie', 'Opiekun', '2020.08.01', NULL)
INSERT INTO [dbo].[Opiekunowie] VALUES ('03321485152', 'Micha�', 'Migda�owski', '2003.02.14', '�rednie', 'Opiekun', '2021.09.01', NULL )
INSERT INTO [dbo].[Opiekunowie] VALUES ('79012665994', 'Szczepan', 'Ma�kowski', '1979.01.26', 'Wy�sze', 'G��wny opiekun', '1997.03.01', NULL)
INSERT INTO [dbo].[Opiekunowie] VALUES ('77011371135', 'Anastazja', 'Arnikowa', '1977.01.13', 'Wy�sze', 'G��wny opiekun', '1999.09.01', NULL)
INSERT INTO [dbo].[Opiekunowie] VALUES ('87060791882', 'Wiktoria', 'Bogusz', '1963.06.07', '�rednie', 'Starszy opiekun', '2001.08.03', NULL)
INSERT INTO [dbo].[Opiekunowie] VALUES ('00222646471', 'Agnieszka', 'Biernacka', '2000.02.02', 'Gimnazjalne', 'Opiekun', '2022.05.04', NULL )
INSERT INTO [dbo].[Opiekunowie] VALUES ('75032829154', 'Marek', 'Mieczkowski', '1975.03.28', 'Wy�sze', 'G��wny opiekun', '1999.03.01', NULL)
INSERT INTO [dbo].[Opiekunowie] VALUES ('52031498219', 'Augustyn', 'Stefanowski', '1952.03.14', '�rednie', 'G��wny opiekun', '1987.09.01', '2000.01.01')

--Zwierzeta
INSERT INTO [dbo].[Zwierzeta] VALUES (1,'00222646471', 'Zwierz�ta wodne', 'B�azenek', 'Nemo', '2005.09.02', 'Nowa Gwinea', 'M', '2006.08.02', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (2,'00222646471', 'Zwierz�ta wodne', 'P�aszczka', 'Herb', '2003.09.02', 'Stany Zjednoczone', 'M', '2005.04.03', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (3,'87060791882', 'Zwierz�ta Afryki', 'Zebra', 'Stefan', '2010.10.01', 'Republika Po�udnowej Afryki', 'M', '2011.04.17', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (4,'87060791882', 'Zwierz�ta Afryki', '�yrafa', 'Gienia', '2009.09.02', 'Kenia', 'F', '2015.11.07', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (5,'87060791882', 'Zwierz�ta Afryki',  'Lew', 'Simba', '2015.09.02', 'Kenia', 'M', '2020.01.03', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (6,'94102242916', 'Zwierz�ta Azji',  'Panda czerwona', 'Marko', '2019.10.02', 'Nepal', 'M', '2019.10.02', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (7,'94102242916','Zwierz�ta Azji',  'Tygrys amurski', 'Sardynka', '1999.08.17', 'Chiny', 'F', '2001.09.26', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (8,'82011689353', 'Dzika d�ungla',  'Szympans', 'Julius', '2003.08.24', 'Gwinea', 'M', '2001.09.26', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (9,'82011689353','Dzika d�ungla',  'Lemur katta', 'Julian', '2023.06.07', 'Madagaskar', 'M', '2023.09.26', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (10,'03321485152', 'Ptaki �wiata',  'Ara', 'Kraczek', '2009.12.04', 'Brazylia', 'M', '2012.10.21', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (11,'03321485152','Ptaki �wiata',  'Stru�', 'P�kacz', '1999.05.12', 'Syria', 'M', '2007.01.26', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (12,'82011689353', 'Nordycka dzicz',  '�o�', '�amaga', '2001.09.26', 'Norwegia', 'M', '2006.07.12', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (13,'82011689353','Nordycka dzicz',  'Wilk', 'Gerlad', '2019.04.20', 'Norwegia', 'M', '2022.12.06', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (14,'82011689353','Nordycka dzicz',  'Rosomak', 'Gregory', '2005.05.05', 'Norwegia', 'M', '2007.06.17', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (15,'00222646471','�ukczyn', '�winia', 'Helga', '1998.06.27', 'Polska', 'F', '2002.09.24', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (26,'00222646471','�ukczyn', '�winia', 'Jadwiga', '1999.08.03', 'Polska', 'F', '2002.09.24', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (16,'00222646471','�ukczyn', 'Ko�', 'Lucek', '2005.03.30', 'Polska', 'M', '2018.11.08', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (17,'87060791882','P�azy', 'Pyton', 'Harry', '1989.07.28', 'Tajlandia', 'O', '1999.05.28', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (18,'87060791882','P�azy', 'Boa', 'Paris', '2007.09.04', 'Meksyk', 'O', '2018.09.15', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (19,'94102242916', 'Zwierz�ta Ameryki', 'Nied�wied� szary', 'Grizzy', '2010.04.29', 'Kanada', 'F', '2015.12.18', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (20,'94102242916','Zwierz�ta Ameryki', 'Puma ameryka�ska', 'Pandora', '2014.02.24', 'Kanada', 'F', '2019.11.23', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (21,'03321485152','S�owia�skie cuda', 'Daniel', 'Danieleczek', '2023.04.25', 'Polska', 'M', '2023.11.26', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (27,'03321485152','S�owia�skie cuda', 'Daniel', 'Mareczek', '2022.02.20', 'Polska', 'M', '2023.11.26', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (22,'03321485152','S�owia�skie cuda', '�ubr', 'Stanis�aw', '2001.05.01', 'Polska', 'M', '2004.07.14', NULL)
INSERT INTO [dbo].[Zwierzeta] VALUES (23,'79012665994','Zwierz�ta Afryki', 'Hipopotam', 'Hydra', '1989.08.13', 'Kenia', 'F', '1995.09.22','2012.09.01')
INSERT INTO [dbo].[Zwierzeta] VALUES (24,'79012665994','Ptaki �wiata', 'Paw', 'Augustyn', '2007.03.13', 'Indonezja', 'M', '2009.05.13','2017.11.04')
INSERT INTO [dbo].[Zwierzeta] VALUES (25,'79012665994','Zwierz�ta Ameryki', '��w Promienisty', 'Marcelina', '1993.04.23', 'Stany Zjednoczone', 'F', '2005.03.28','2018.06.15')

--Sprz�tanie
INSERT INTO [dbo].[Sprzatania] VALUES (1, '00222646471', '2023.10.20', '20:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (2, '00222646471', '2023.10.21', '20:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (3, '87060791882', '2023.09.03', '9:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (3, '87060791882', '2023.11.13', '8:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (4, '87060791882', '2023.08.01', '11:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (4, '87060791882', '2023.09.15', '10:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (5, '87060791882', '2023.10.23', '8:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (5, '87060791882', '2023.12.01', '9:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (6, '94102242916', '2023.06.20', '16:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (6, '94102242916', '2023.08.26', '10:00', 'NIE')
INSERT INTO [dbo].[Sprzatania] VALUES (7, '94102242916', '2023.05.18', '17:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (8, '82011689353', '2023.12.12', '19:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (8, '82011689353', '2024.01.20', '15:00', NULL)
INSERT INTO [dbo].[Sprzatania] VALUES (9, '82011689353', '2024.01.15', '19:00', NULL)
INSERT INTO [dbo].[Sprzatania] VALUES (10, '03321485152', '2023.07.19', '9:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (11, '03321485152', '2023.08.15', '13:00', 'NIE')
INSERT INTO [dbo].[Sprzatania] VALUES (12, '82011689353', '2023.04.09', '10:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (13, '82011689353', '2023.04.15', '14:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (14, '82011689353', '2023.01.25', '15:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (15, '00222646471', '2023.12.23', '19:00', 'NIE')
INSERT INTO [dbo].[Sprzatania] VALUES (15, '00222646471', '2024.01.02', '10:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (15, '00222646471', '2023.11.24', '18:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (16, '00222646471', '2023.09.27', '9:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (16, '00222646471', '2023.10.05', '8:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (17, '87060791882', '2023.11.14', '10:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (18, '87060791882', '2023.11.16', '11:00', 'NIE')
INSERT INTO [dbo].[Sprzatania] VALUES (19, '94102242916', '2023.10.20', '8:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (20, '94102242916', '2023.08.20', '21:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (21, '94102242916', '2023.08.20', '21:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (22, '94102242916', '2023.08.20', '21:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (26, '94102242916', '2023.08.20', '21:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (27, '94102242916', '2023.08.20', '21:00', 'TAK')
INSERT INTO [dbo].[Sprzatania] VALUES (19, '87060791882', '2024.06.21', '15:00', NULL)
INSERT INTO [dbo].[Sprzatania] VALUES (5, '87060791882', '2024.04.17', '18:00', NULL)

--Badania kontrolne
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(1, '2023.12.31', 0.3, NULL, 'Brak wykrytych chor�b')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(12, '2023.12.12', 750, 'bardzo dobry', 'Zmniejszy� ilo�� pokarmu')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(10, '2023.09.12', 1.2, NULL, 'Ponowna wizyta dnia 2023.10.12, bo mia�a z�amane skryd�o')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(10, '2023.10.12', 1.2, NULL, 'Skrzyd�o w porz�dku, wiztya kontrolna 2023.12.12')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(10, '2023.12.12', 1.2, NULL, 'Skrzyd�o zdrowe')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(21, '2023.04.20', 70, 'z�y', 'Zacz�� podawa� leki na zapalenie w jamie ustnej, zmiana diety, kolejna wizyta 2023.06.20')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(21, '2023.06.20', 65, 'dobry', 'Zapalenie wyleczone, zwi�kszy� dawan� ilo�� pokarm�w, poniewa� niedowaga, wizyta kontrolna 2023.09.20') 
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(21, '2023.09.20', 71, 'dobry', 'Zapalenie nie powr�ci�o, waga dobra')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(13, '2023.07.15', 40, 'bardzo dobry', 'Du�a niedowaga, zwi�kszy� ilo�� pokarmu, kolejna wizyta 2023.08.15')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(13, '2023.08.15', 45, 'bardzo dobry', 'Waga zwi�ksza si� prawid�owo, kolejna wiyta 2023.10.15')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(13, '2023.10.15', 55, 'bardzo dobry', 'Waga w miar� dobra, zmniejszy� troch� ilo�� pokarmu, wizyta kontrolna 2023.12.15')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(13, '2023.12.15', 65, 'bardzo dobry', 'Waga prawid�owa, podawa� pokarm w normalnych porcjach')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(7, '2023.01.08',250, 'bardzo dobry', 'Wykryto ci��e, kontrolna wizyta 2023.02.08')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(7, '2023.02.08', 260, 'bardzo dobry', 'Ci��a przebiega prawid�owo, �adnych odchyle� od normy, kolejna wizyta 2023.03.08')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(7, '2023.03.18', 270, 'bardzo dobry', 'Matka urodzi�a cztery maluchy, wszystkie zosta�y przebadane ich stan jest bardzo dobry')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(3, '2023.05.13', 350, 'bardzo dobry', 'Brak wykrytych chor�b')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(3, '2023.11.13', 350, 'bardzo dobry', 'Brak wykrytych chor�b')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(9, '2023.03.24', 2.4, 'dobry', 'Zapalenie w jamie ustnej, kolejna wizyta 2023.04.24')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(9, '2023.04.24', 2.2, 'dobry', 'Brak zapalenia w jamie, uz�bienie poprawione')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(18, '2023.09.10', 13, NULL, 'Brak wykrytych chor�b')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(5, '2023.11.10', 200, 'dobry', 'Brak wykrytych chor�b')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(7, '2024.01.10', 250, 'bardzo dobry', 'Choroba')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(7, '2024.01.14', 250, 'bardzo dobry', 'Choroba')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(7, '2024.01.18', 250, 'bardzo dobry', 'Choroba')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(7, '2024.01.22', 250, 'bardzo dobry', 'Choroba')
INSERT INTO [dbo].[BadaniaKontrolne] VALUES(7, '2024.01.28', 250, 'bardzo dobry', 'Choroba')


--Pokazy
INSERT INTO [dbo].[Pokazy] VALUES (5, '79012665994', '2023.06.20', '11:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (5, '79012665994', '2023.07.15', '10:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (5, '79012665994', '2023.08.21', '9:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (5, '79012665994', '2023.09.02', '12:00', 'NIE')
INSERT INTO [dbo].[Pokazy] VALUES (8, '79012665994', '2023.02.15', '12:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (8, '79012665994', '2023.03.20', '11:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (8, '79012665994', '2023.04.13', '13:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (8, '79012665994', '2023.05.19', '9:00', 'NIE')
INSERT INTO [dbo].[Pokazy] VALUES (10, '77011371135', '2023.02.20', '14:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (10, '77011371135', '2023.03.15', '10:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (10, '77011371135', '2023.04.23', '12:00', 'NIE')
INSERT INTO [dbo].[Pokazy] VALUES (10, '77011371135', '2023.05.10', '9:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (13, '77011371135', '2023.06.10', '12:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (13, '77011371135', '2023.07.20', '13:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (13, '77011371135', '2023.08.17', '11:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (13, '77011371135', '2023.09.20', '10:00', 'NIE')
INSERT INTO [dbo].[Pokazy] VALUES (22, '75032829154', '2023.05.20', '11:00', 'NIE')
INSERT INTO [dbo].[Pokazy] VALUES (22, '75032829154', '2023.06.12', '12:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (22, '75032829154', '2023.07.13', '9:00', 'NIE')
INSERT INTO [dbo].[Pokazy] VALUES (22, '75032829154', '2023.08.13', '15:00', 'TAK')
INSERT INTO [dbo].[Pokazy] VALUES (10, '77011371135', '2024.02.09', NULL, NULL)
INSERT INTO [dbo].[Pokazy] VALUES (8, '79012665994', '2024.02.25', NULL, NULL)
INSERT INTO [dbo].[Pokazy] VALUES (13, '77011371135', '2024.06.15', NULL, NULL)
INSERT INTO [dbo].[Pokazy] VALUES (5, '79012665994', '2024.06.23', NULL, NULL)
INSERT INTO [dbo].[Pokazy] VALUES (22, '75032829154', '2024.06.20', NULL, NULL)

--Treningi
INSERT INTO [dbo].[Treningi] VALUES (3,'87060791882', '2023.04.20', '16:00', 'Okresowe sprawdzenie')
INSERT INTO [dbo].[Treningi] VALUES (4,'87060791882', '2023.06.05', '6:00', 'Rehabilitacja')
INSERT INTO [dbo].[Treningi] VALUES (4,'87060791882', '2023.07.15', '9:00', 'Rehabilitacja')
INSERT INTO [dbo].[Treningi] VALUES (4,'87060791882', '2023.08.23', '19:00', 'Rehabilitacja')
INSERT INTO [dbo].[Treningi] VALUES (5,'87060791882', '2023.07.15', '8:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (5,'87060791882', '2023.08.09', '9:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (5,'87060791882', '2023.09.02', '11:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (6,'94102242916', '2023.03.16', '10:00', 'Okresowe sprawdzenie')
INSERT INTO [dbo].[Treningi] VALUES (7,'94102242916', '2023.09.10', '19:00', 'Okresowe sprawdzenie')
INSERT INTO [dbo].[Treningi] VALUES (8,'79012665994', '2023.09.20', '12:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (8,'79012665994', '2023.10.05', '9:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (8,'79012665994', '2023.11.17', '8:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (9,'79012665994', '2023.05.26', '10:00', 'Okresowe sprawdzenie')
INSERT INTO [dbo].[Treningi] VALUES (10,'77011371135','2023.03.13', '14:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (10,'77011371135','2023.04.23', '13:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (10,'77011371135','2023.05.12', '14:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (11,'77011371135', '2023.04.19', '20:00', 'Okresowe sprawdzenie')
INSERT INTO [dbo].[Treningi] VALUES (12,'82011689353', '2023.10.16', '8:00', 'Rehabilitacja')
INSERT INTO [dbo].[Treningi] VALUES (13,'82011689353', '2023.08.17', '12:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (13,'82011689353', '2023.09.23', '9:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (13,'82011689353', '2023.10.15', '10:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (16,'75032829154', '2023.10.20', '11:00', 'Okresowe sprawdzenie')
INSERT INTO [dbo].[Treningi] VALUES (22,'77011371135', '2023.07.01', '10:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (22,'77011371135', '2023.02.03', '8:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (22,'77011371135', '2023.04.08', '11:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (19,'75032829154', '2023.02.10', '12:00', 'Okresowe sprawdzenie')
INSERT INTO [dbo].[Treningi] VALUES (20,'79012665994', '2023.12.10', '8:00', 'Okresowe sprawdzenie')
INSERT INTO [dbo].[Treningi] VALUES (22,'77011371135', '2024.02.05', '7:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (13,'82011689353', '2024.03.14', '8:00', 'Pokaz')
INSERT INTO [dbo].[Treningi] VALUES (10,'77011371135','2024.04.26', '19:00', 'Pokaz')

--Pokarm
INSERT INTO [dbo].[Pokarmy] VALUES ('karma dla dzikich ptak�w', NULL, 11.7, 8.3, 5.6)
INSERT INTO [dbo].[Pokarmy] VALUES ('karma dla ryb', NULL, 48, 9, 3)
INSERT INTO [dbo].[Pokarmy] VALUES ('trawa', 286, 22.8, NULL, 37.1)
INSERT INTO [dbo].[Pokarmy] VALUES ('mi�so bia�e', 158, 18.6, 9.3, 0)
INSERT INTO [dbo].[Pokarmy] VALUES ('mi�so czerwone', 152, 21.5, 7.3, 0)
INSERT INTO [dbo].[Pokarmy] VALUES ('bambus', 47, 2.6, 0.3, 5)
INSERT INTO [dbo].[Pokarmy] VALUES ('jab�ka', 52, 0.3, 0.2, 14)
INSERT INTO [dbo].[Pokarmy] VALUES ('pasza dla zwierz�t gospodarczych', NULL, 40, 1.76, 3.91)
INSERT INTO [dbo].[Pokarmy] VALUES ('mango', 59, 0.8, 0.4, 15)
INSERT INTO [dbo].[Pokarmy] VALUES ('kr�lik', 638.8, 20, 6.2, 0)
INSERT INTO [dbo].[Pokarmy] VALUES ('banany', 90, 1.1, 0.3, 23)
INSERT INTO [dbo].[Pokarmy] VALUES ('marchew', 41.3, 0.9, 0.2, 10.0)
INSERT INTO [dbo].[Pokarmy] VALUES ('jagody', 57, 0.74, 0.33, 14.5)
INSERT INTO [dbo].[Pokarmy] VALUES ('kukurydza', 62, 2.39, 0.98, 13.7)
INSERT INTO [dbo].[Pokarmy] VALUES ('suszona �urawina', 308, 0, 1, 82)
INSERT INTO [dbo].[Pokarmy] VALUES ('kasztany', 131, 2.0, 1.38, 27.76)
INSERT INTO [dbo].[Pokarmy] VALUES ('tamaryndowiec', 239, 2.8, 0.6, 62.7)
INSERT INTO [dbo].[Pokarmy] VALUES ('ryby', 264, 24.6, 17.9, 4.0)
INSERT INTO [dbo].[Pokarmy] VALUES ('winogrona', 67, 0.63, 0.35, 17.2)

--Pokarmy/Suplementy
INSERT INTO [dbo].[Pokarmy] VALUES ('siemie lniane', 534, 18.3, 42.2, 28.9)
INSERT INTO [dbo].[Pokarmy] VALUES ('nasiona chia', 486, 16.54, 30.74, 42.12)
INSERT INTO [dbo].[Pokarmy] VALUES ('olej z �ososia', 902, 0, 100, 0)
INSERT INTO [dbo].[Pokarmy] VALUES ('komosa ry�owa', 331, 12.7, 5.5, 57.8)
INSERT INTO [dbo].[Pokarmy] VALUES ('spirulina', 290, 58, 8, 20)
INSERT INTO [dbo].[Pokarmy] VALUES ('dro�d�e piwne', 325, 40.4, 7.61, 41.2)
INSERT INTO [dbo].[Pokarmy] VALUES ('rokitnik', 52, 0.9, 5, 2.5)
INSERT INTO [dbo].[Pokarmy] VALUES ('wodorosty morskie', 396, 66, 0, 33)
INSERT INTO [dbo].[Pokarmy] VALUES ('omu�ki nowozelandzkie', 365, 52, 8, 14.4)
INSERT INTO [dbo].[Pokarmy] VALUES ('cykoria', 23, 1.43, 0.25, 4.48)

--Suplementy
INSERT INTO [dbo].[Suplementy] VALUES ('siemie lniane', 'B�onnik', 'Wspomganie pracy uk�adu pokarmowego')
INSERT INTO [dbo].[Suplementy] VALUES ('nasiona chia' , 'Kwasy grupy Omega', 'Dzia�ani antynowotworowe i przeciwzapalne')
INSERT INTO [dbo].[Suplementy] VALUES ('olej z �ososia', 'Kwasy grupy Omega', 'Wspieranie stanu sk�ry i sier�ci') 
INSERT INTO [dbo].[Suplementy] VALUES ('komosa ry�owa', 'Bia�ka', 'Uzupe�nienie bia�ek i substancji mineralnych')
INSERT INTO [dbo].[Suplementy] VALUES ('spirulina', 'Bia�ka i �elazo', 'Wspomagnie uk�adu immunologicznego')
INSERT INTO [dbo].[Suplementy] VALUES ('dro�d�e piwne', 'Witaminy z grupy B', 'Wzocnienie systemu odporno�ciowego')
INSERT INTO [dbo].[Suplementy] VALUES ('rokitnik', 'Witaminy', 'Dzia�anie przeciwzpalne')
INSERT INTO [dbo].[Suplementy] VALUES ('wodorosty morskie', 'Jod', 'Wspomgnie przemiany materii')
INSERT INTO [dbo].[Suplementy] VALUES ('omu�ki nowozelandzkie', 'Krzem', 'Wspomagnie regeneracji staw�w i sk�ry')
INSERT INTO [dbo].[Suplementy] VALUES ('cykoria', 'Wap� i potas', 'Wspomaganie prcy w�troby')

--Dawki
INSERT INTO [dbo].[Dawki] VALUES ('ryby', 1, 4) 
INSERT INTO [dbo].[Dawki] VALUES ('karma dla ryb', 2, 0.2)
INSERT INTO [dbo].[Dawki] VALUES ('trawa', 3, 7)
INSERT INTO [dbo].[Dawki] VALUES ('trawa', 4, 7)
INSERT INTO [dbo].[Dawki] VALUES ('mi�so czerwone', 5, 10)
INSERT INTO [dbo].[Dawki] VALUES ('banany', 6, 0.5)
INSERT INTO [dbo].[Dawki] VALUES ('jab�ka', 6, 1)
INSERT INTO [dbo].[Dawki] VALUES ('winogrona', 6, 0.5)
INSERT INTO [dbo].[Dawki] VALUES ('mi�so czerwone', 7, 10)
INSERT INTO [dbo].[Dawki] VALUES ('mango', 8, 0.5)
INSERT INTO [dbo].[Dawki] VALUES ('banany', 8, 0.5)
INSERT INTO [dbo].[Dawki] VALUES ('jagody', 8, 0.5)
INSERT INTO [dbo].[Dawki] VALUES ('winogrona', 8, 1)
INSERT INTO [dbo].[Dawki] VALUES ('tamaryndowiec', 9, 1)
INSERT INTO [dbo].[Dawki] VALUES ('jagody', 9, 0.2)
INSERT INTO [dbo].[Dawki] VALUES ('jab�ka', 9, 0.4)
INSERT INTO [dbo].[Dawki] VALUES ('karma dla dzikich ptak�w', 10, 0.8)
INSERT INTO [dbo].[Dawki] VALUES ('kukurydza', 11, 1.5)
INSERT INTO [dbo].[Dawki] VALUES ('kasztany', 11, 0.8)
INSERT INTO [dbo].[Dawki] VALUES ('trawa', 12, 9)
INSERT INTO [dbo].[Dawki] VALUES ('mi�so czerwone', 13, 8)
INSERT INTO [dbo].[Dawki] VALUES ('mi�so bia�e', 13, 3)
INSERT INTO [dbo].[Dawki] VALUES ('mi�so bia�e', 14, 5)
INSERT INTO [dbo].[Dawki] VALUES ('mi�so czerwone', 14, 3)
INSERT INTO [dbo].[Dawki] VALUES ('pasza dla zwierz�t gospodarczych', 15, 0.7)
INSERT INTO [dbo].[Dawki] VALUES ('jab�ka', 15, 1)
INSERT INTO [dbo].[Dawki] VALUES ('pasza dla zwierz�t gospodarczych', 16, 2)
INSERT INTO [dbo].[Dawki] VALUES ('trawa', 16, 3)
INSERT INTO [dbo].[Dawki] VALUES ('kr�lik', 17, 2.5)
INSERT INTO [dbo].[Dawki] VALUES ('kr�lik', 18, 2.5)
INSERT INTO [dbo].[Dawki] VALUES ('mi�so czerwone', 19, 8)
INSERT INTO [dbo].[Dawki] VALUES ('mi�so bia�e', 19, 3)
INSERT INTO [dbo].[Dawki] VALUES ('mi�so czerwone', 20, 7)
INSERT INTO [dbo].[Dawki] VALUES ('mi�so bia�e', 20, 3)
INSERT INTO [dbo].[Dawki] VALUES ('trawa', 21, 8)
INSERT INTO [dbo].[Dawki] VALUES ('kasztany', 21, 0.4)
INSERT INTO [dbo].[Dawki] VALUES ('jagody', 21, 0.2)
INSERT INTO [dbo].[Dawki] VALUES ('jab�ka', 21, 0.3)
INSERT INTO [dbo].[Dawki] VALUES ('trawa', 22, 8)
INSERT INTO [dbo].[Dawki] VALUES ('marchew', 4, 0.5)
INSERT INTO [dbo].[Dawki] VALUES ('marchew', 16, 0.5)
INSERT INTO [dbo].[Dawki] VALUES ('jab�ka', 26, 1)
INSERT INTO [dbo].[Dawki] VALUES ('jab�ka', 27, 0.3)

--Karmienia
INSERT INTO [dbo].[Karmienia] VALUES (1, '00222646471', '2023.09.14', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (2, '00222646471', '2023.08.20', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (3, '87060791882', '2023.05.03', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (3, '87060791882', '2023.08.26', 'NIE')
INSERT INTO [dbo].[Karmienia] VALUES (3, '87060791882', '2023.10.29', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (9, '82011689353', '2023.01.19', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (9, '82011689353', '2023.05.04', 'NIE')
INSERT INTO [dbo].[Karmienia] VALUES (14, '82011689353', '2023.03.24', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (14, '82011689353', '2023.06.18', 'NIE')
INSERT INTO [dbo].[Karmienia] VALUES (14, '82011689353', '2024.01.27', NULL)
INSERT INTO [dbo].[Karmienia] VALUES (18, '03321485152', '2023.10.23', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (22, '79012665994', '2023.06.10', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (22, '79012665994', '2023.04.29', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (22, '79012665994', '2024.02.25', NULL)
INSERT INTO [dbo].[Karmienia] VALUES (7, '94102242916', '2023.02.17', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (7, '94102242916', '2023.08.25', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (11, '03321485152', '2023.11.23', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (18, '03321485152', '2023.12.24', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (4, '87060791882', '2023.09.30', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (5, '87060791882', '2023.10.02', 'NIE')
INSERT INTO [dbo].[Karmienia] VALUES (5, '87060791882', '2023.11.28', 'TAK')
INSERT INTO [dbo].[Karmienia] VALUES (22, '79012665994', '2024.02.26', NULL)
INSERT INTO [dbo].[Karmienia] VALUES (22, '79012665994', '2024.02.27', NULL)
INSERT INTO [dbo].[Karmienia] VALUES (18, '00222646471', '2024.04.05', NULL)
INSERT INTO [dbo].[Karmienia] VALUES (10, '00222646471', '2024.04.07', NULL)

--Pokarm niedozwolony
INSERT INTO [dbo].[PokarmNiedozwolony] VALUES ('karma dla dzikich ptak�w', 11, 'Alergia')
INSERT INTO [dbo].[PokarmNiedozwolony] VALUES ('trawa', 7, NULL)
INSERT INTO [dbo].[PokarmNiedozwolony] VALUES ('mango', 6, 'Alergia')
INSERT INTO [dbo].[PokarmNiedozwolony] VALUES ('jab�ka', 8, 'Zbyt kaloryczne')
INSERT INTO [dbo].[PokarmNiedozwolony] VALUES ('mi�so czerwone', 18, 'Nie lubi')
INSERT INTO [dbo].[PokarmNiedozwolony] VALUES ('kr�lik', 13, 'Alergia')
INSERT INTO [dbo].[PokarmNiedozwolony] VALUES ('marchew', 11, 'Nie lubi')
INSERT INTO [dbo].[PokarmNiedozwolony] VALUES ('suszona �urawina', 9, 'Alergia')
INSERT INTO [dbo].[PokarmNiedozwolony] VALUES ('jab�ka', 21, 'Zbyt kaloryczne')
INSERT INTO [dbo].[PokarmNiedozwolony] VALUES ('ryby', 5, 'Nie lubi')
