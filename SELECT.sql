-- ZOO ma problem z dostawami po�ywienia X, 
-- dlatego zaczyna poszukiwania aleterntywy dla niego, pierwszym krokiem b�dzie sprawdzenie jakie gatunki s� karmione tym po�ywieniem. 
SELECT [Gatunek] AS GatunkiKarmioneJablkami
	FROM [dbo].[Zwierzeta] 
	JOIN [dbo].[Dawki] ON [IDzwierzecia] = [Zwierze] 
	WHERE [Pokarm] = 'jab�ka' 
	GROUP BY [Gatunek];

-- Jedna z opiekunek zachorowa�a i nie mo�e przyj�� do pracy, inny opiekun ma zaj�� si� karmieniami, kt�re mia�a przeprowadzi� chora kole�anka w danej strefie,
-- dlatego musi sprawdzi� kiedy maj� si� one odby�.
SELECT DISTINCT [DataPodania] AS DataKarmienia, [Zwierze] AS IDZwierzecia
	FROM [dbo].[Karmienia] JOIN [dbo].[Opiekunowie] ON [Opiekun] = [PESEL], [dbo].[Zwierzeta]
	WHERE [dbo].[Opiekunowie].[Imie] = 'Agnieszka' AND [DataPodania] > '2024.01.01' AND [dbo].[Zwierzeta].[Strefa] = '�ukczyn';

-- Opiekun chce zaplanowa� nowe pokazy, ale jedno ze zwierz�t jest w trakcie leczenia, 
-- dlatego chce sprawdzi� do kiedy lecznie b�dzie trwa�o, aby wiedzie� na kiedy najwcze�niej mo�e zaplanowa� pokaz.
SELECT [DataBadania]
	FROM [dbo].[BadaniaKontrolne] 
	WHERE [Zwierze] = 7 AND [DataBadania] > GETDATE()
	ORDER BY [DataBadania] DESC;

-- ZOO ma szans� na dostanie dofinansowania, jednym ze sposob�w jego wykorzystania jest budowa nowej strefy, lub modernizcja obecnej, 
-- dlatego potrzebne jest sprawdzenie kiedy strefy by�y wybudowane i ile zwierz�t si� w nich znajduje, aby potencjalnie rozbi� przeludnion� stref� na dwie.
SELECT [NazwaStrefy], [DataPowstnia], COUNT([IDzwierzecia]) AS LiczbaZwierzat
	FROM [dbo].[Strefy] JOIN [dbo].[Zwierzeta] ON [NazwaStrefy] = [Strefa]
	WHERE [DataOpuszczenia] IS NULL
	GROUP BY [NazwaStrefy], [DataPowstnia]
	ORDER BY LiczbaZwierzat DESC;

-- ZOO chce przyzna� nagrody za sta� pracy, dlatego potrzeba sprawdzi�, kt�rzy opiekunowie pracuj� w zoo ponad 5 lat.
SELECT [PESEL], [Imie], [Nazwisko]
	FROM [dbo].[Opiekunowie]
	WHERE [DataKoncaPracy] IS NULL AND YEAR(GETDATE()) - YEAR([DataZatrudnienia]) > 5;

-- Wchodz� nowe przepisy i osoby powy�ej 60 roku �ycia nie mog� przeprowadza� sprz�ta�, 
-- w celu przekazania sprz�ta� innym osobom potrzeba sprawdzi� kiedy i ile takich sprz�ta� jest zaplanowanych.
SELECT * 
FROM [dbo].[Sprzatania]
WHERE [Zakonczone] IS NULL AND [Opiekun] IN 
	(SELECT [PESEL]
		FROM [dbo].[Opiekunowie]
		WHERE [DataKoncaPracy] IS NULL AND DATEDIFF(YEAR, RokUrodzenia, GETDATE()) > 60);

-- ZOO potrzebuje informacji o tym ile danego pokarmu musi zam�wi�
SELECT [Pokarm], CAST(SUM([Ilosc]) AS decimal(10, 2)) AS IleZam�wi�
	FROM [dbo].[Dawki]
	GROUP BY [Pokarm];

-- Do ZOO ma przyby� nowe zwierze i trzeba podj�� decyzj� o tym komu przydzieli� opiek� nad nim,
-- dlatego potrzeba sprawdzi� iloma zwierz�tami zajmuje si� ka�dy opiekun.
SELECT [PESEL], [Imie], [Nazwisko],
    (SELECT COUNT(*) FROM [dbo].[Zwierzeta] WHERE [Opiekun] = [PESEL] AND [DataOpuszczenia] IS NULL) AS IloscZwierzat
FROM [dbo].[Opiekunowie]
WHERE [DataKoncaPracy] IS NULL AND [Stanowisko] <> 'G��wny Opiekun';

-- Opiekun chce zaplanowa� sprz�tnia, aby dobrze je rozplanowa� potrzebuje informacji, kiedy ka�dy zwierzak mia� ostatnie sprz�tanie.
SELECT [NazwaStrefy], [TypStrefy], [IDzwierzecia], [Gatunek], [OstatnieSprzatania]
FROM [dbo].[Strefy]
JOIN [dbo].[Zwierzeta] ON [Strefa] = [NazwaStrefy]
LEFT JOIN (
    SELECT [Zwierze], MAX([DataSprzatania]) AS OstatnieSprzatania
    FROM [dbo].[Sprzatania]
    GROUP BY [Zwierze]
) AS OstatnieSprzatania ON [IDzwierzecia] = [Zwierze]
WHERE [DataOpuszczenia] IS NULL AND [OstatnieSprzatania] < GETDATE();

-- ZOO planuje uaktualni� swoj� stron� internetow� o informacje o tym kto jest opiekunem danego zwierz�cia i kiedy odb�dzie si� najbli�szy pokaz tego zwierz�cia.
CREATE VIEW OpiekunIPodopieczny AS 
SELECT [dbo].[Opiekunowie].[Imie] AS ImieOpiekuna,
		[dbo].[Opiekunowie].[Nazwisko] AS NazwiskoOpiekuna, 
		[dbo].[Zwierzeta].[Gatunek],
		[dbo].[Zwierzeta].[Imie] AS ImieZwierzaka,
		MIN([dbo].[Pokazy].[DataPokazu]) AS NajblizszyPokaz
FROM [dbo].[Opiekunowie]
JOIN [dbo].[Zwierzeta] ON [dbo].[Opiekunowie].[PESEL] = [dbo].[Zwierzeta].[Opiekun]
LEFT JOIN [dbo].[Pokazy] ON [dbo].[Zwierzeta].[IDZwierzecia] = [dbo].[Pokazy].[Zwierze]
WHERE[dbo].[Pokazy].[DataPokazu] >= GETDATE() 
		OR [dbo].[Pokazy].[DataPokazu] IS NULL 
		AND [dbo].[Zwierzeta].[DataOpuszczenia] IS NULL
GROUP BY[dbo].[Opiekunowie].[Imie],
		[dbo].[Opiekunowie].[Nazwisko],
		[dbo].[Zwierzeta].[Gatunek],
		[dbo].[Zwierzeta].[Imie];

SELECT * FROM [dbo].[OpiekunIPodopieczny]

DROP VIEW [dbo].[OpiekunIPodopieczny]




