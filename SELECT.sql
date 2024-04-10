-- ZOO ma problem z dostawami po¿ywienia X, 
-- dlatego zaczyna poszukiwania aleterntywy dla niego, pierwszym krokiem bêdzie sprawdzenie jakie gatunki s¹ karmione tym po¿ywieniem. 
SELECT [Gatunek] AS GatunkiKarmioneJablkami
	FROM [dbo].[Zwierzeta] 
	JOIN [dbo].[Dawki] ON [IDzwierzecia] = [Zwierze] 
	WHERE [Pokarm] = 'jab³ka' 
	GROUP BY [Gatunek];

-- Jedna z opiekunek zachorowa³a i nie mo¿e przyjœæ do pracy, inny opiekun ma zaj¹æ siê karmieniami, które mia³a przeprowadziæ chora kole¿anka w danej strefie,
-- dlatego musi sprawdziæ kiedy maj¹ siê one odbyæ.
SELECT DISTINCT [DataPodania] AS DataKarmienia, [Zwierze] AS IDZwierzecia
	FROM [dbo].[Karmienia] JOIN [dbo].[Opiekunowie] ON [Opiekun] = [PESEL], [dbo].[Zwierzeta]
	WHERE [dbo].[Opiekunowie].[Imie] = 'Agnieszka' AND [DataPodania] > '2024.01.01' AND [dbo].[Zwierzeta].[Strefa] = '¯ukczyn';

-- Opiekun chce zaplanowaæ nowe pokazy, ale jedno ze zwierz¹t jest w trakcie leczenia, 
-- dlatego chce sprawdziæ do kiedy lecznie bêdzie trwa³o, aby wiedzieæ na kiedy najwczeœniej mo¿e zaplanowaæ pokaz.
SELECT [DataBadania]
	FROM [dbo].[BadaniaKontrolne] 
	WHERE [Zwierze] = 7 AND [DataBadania] > GETDATE()
	ORDER BY [DataBadania] DESC;

-- ZOO ma szansê na dostanie dofinansowania, jednym ze sposobów jego wykorzystania jest budowa nowej strefy, lub modernizcja obecnej, 
-- dlatego potrzebne jest sprawdzenie kiedy strefy by³y wybudowane i ile zwierz¹t siê w nich znajduje, aby potencjalnie rozbiæ przeludnion¹ strefê na dwie.
SELECT [NazwaStrefy], [DataPowstnia], COUNT([IDzwierzecia]) AS LiczbaZwierzat
	FROM [dbo].[Strefy] JOIN [dbo].[Zwierzeta] ON [NazwaStrefy] = [Strefa]
	WHERE [DataOpuszczenia] IS NULL
	GROUP BY [NazwaStrefy], [DataPowstnia]
	ORDER BY LiczbaZwierzat DESC;

-- ZOO chce przyznaæ nagrody za sta¿ pracy, dlatego potrzeba sprawdziæ, którzy opiekunowie pracuj¹ w zoo ponad 5 lat.
SELECT [PESEL], [Imie], [Nazwisko]
	FROM [dbo].[Opiekunowie]
	WHERE [DataKoncaPracy] IS NULL AND YEAR(GETDATE()) - YEAR([DataZatrudnienia]) > 5;

-- Wchodz¹ nowe przepisy i osoby powy¿ej 60 roku ¿ycia nie mog¹ przeprowadzaæ sprz¹tañ, 
-- w celu przekazania sprz¹tañ innym osobom potrzeba sprawdziæ kiedy i ile takich sprz¹tañ jest zaplanowanych.
SELECT * 
FROM [dbo].[Sprzatania]
WHERE [Zakonczone] IS NULL AND [Opiekun] IN 
	(SELECT [PESEL]
		FROM [dbo].[Opiekunowie]
		WHERE [DataKoncaPracy] IS NULL AND DATEDIFF(YEAR, RokUrodzenia, GETDATE()) > 60);

-- ZOO potrzebuje informacji o tym ile danego pokarmu musi zamówiæ
SELECT [Pokarm], CAST(SUM([Ilosc]) AS decimal(10, 2)) AS IleZamówiæ
	FROM [dbo].[Dawki]
	GROUP BY [Pokarm];

-- Do ZOO ma przybyæ nowe zwierze i trzeba podj¹æ decyzjê o tym komu przydzieliæ opiekê nad nim,
-- dlatego potrzeba sprawdziæ iloma zwierzêtami zajmuje siê ka¿dy opiekun.
SELECT [PESEL], [Imie], [Nazwisko],
    (SELECT COUNT(*) FROM [dbo].[Zwierzeta] WHERE [Opiekun] = [PESEL] AND [DataOpuszczenia] IS NULL) AS IloscZwierzat
FROM [dbo].[Opiekunowie]
WHERE [DataKoncaPracy] IS NULL AND [Stanowisko] <> 'G³ówny Opiekun';

-- Opiekun chce zaplanowaæ sprz¹tnia, aby dobrze je rozplanowaæ potrzebuje informacji, kiedy ka¿dy zwierzak mia³ ostatnie sprz¹tanie.
SELECT [NazwaStrefy], [TypStrefy], [IDzwierzecia], [Gatunek], [OstatnieSprzatania]
FROM [dbo].[Strefy]
JOIN [dbo].[Zwierzeta] ON [Strefa] = [NazwaStrefy]
LEFT JOIN (
    SELECT [Zwierze], MAX([DataSprzatania]) AS OstatnieSprzatania
    FROM [dbo].[Sprzatania]
    GROUP BY [Zwierze]
) AS OstatnieSprzatania ON [IDzwierzecia] = [Zwierze]
WHERE [DataOpuszczenia] IS NULL AND [OstatnieSprzatania] < GETDATE();

-- ZOO planuje uaktualniæ swoj¹ stronê internetow¹ o informacje o tym kto jest opiekunem danego zwierzêcia i kiedy odbêdzie siê najbli¿szy pokaz tego zwierzêcia.
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




