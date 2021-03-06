﻿SELECT * FROM Håndværker
SELECT   Håndværker.HåndværkerId, Håndværker.Ansættelsedato, Håndværker.Efternavn, Håndværker.Fagområde, Håndværker.Fornavn, Værktøjskasse.VKasseId, Værktøjskasse.Anskaffet, Værktøjskasse.Fabrikat, Værktøjskasse.Håndværker, 
                Værktøjskasse.Model, Værktøjskasse.Serienummer, Værktøjskasse.Farve, Værktøj.VærktøjsId, Værktøj.Anskaffet AS VTAnskaffet, Værktøj.Fabrikat AS VTFabrikat, Værktøj.Model AS VTModel, Værktøj.Serienr, Værktøj.Type, 
                Værktøj.Værktøjskasse
FROM      Håndværker INNER JOIN
                Værktøjskasse ON Håndværker.HåndværkerId = Værktøjskasse.Håndværker INNER JOIN
                Værktøj ON Værktøjskasse.VKasseId = Værktøj.Værktøjskasse
WHERE   (Håndværker.HåndværkerId = 1)

SELECT        Håndværker.HåndværkerId, Håndværker.Ansættelsedato, Håndværker.Efternavn, Håndværker.Fagområde, Håndværker.Fornavn, Værktøjskasse.VKasseId, Værktøjskasse.Anskaffet, Værktøjskasse.Fabrikat, Værktøj.VærktøjsId, 
                       Værktøj.Anskaffet AS Expr1, Værktøj.Fabrikat AS Expr2, Værktøj.Model, Værktøj.Serienr, Værktøj.Type
         FROM            Håndværker LEFT OUTER JOIN
                         Værktøjskasse ON Håndværker.HåndværkerId = Værktøjskasse.Håndværker LEFT OUTER JOIN
                         Værktøj ON Værktøjskasse.VKasseId = Værktøj.Værktøjskasse