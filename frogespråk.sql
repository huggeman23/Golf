SELECT Namn,Alder FROM spelare where Namn='JohanAnderson';

SELECT  jacka.Matreal, jacka.Storlek, jacka.Initiliser
FROM spelare
INNER JOIN jacka ON spelare.PersonNr=jacka.Person
WHERE spelare.Namn='JohanAnderson';

SELECT  klubba.Matrial
FROM spelare
INNER JOIN klubba ON spelare.PersonNr=klubba.Person
WHERE spelare.Namn='JohanAnderson';

SELECT Namn,Alder FROM spelare where Alder < 30;

SELECT avg(Alder) from spelare;

DELETE jacka FROM jacka
INNER JOIN spelare ON spelare.PersonNr=jacka.Person
WHERE spelare.Namn='JohanAnderson';

DELETE FROM spelare WHERE Namn='NiklasJanson';

SELECT Datum FROM tavling WHERE TavlingNamn='BigGolfCupSkövde';

SELECT spelare.Namn
FROM tavling
INNER JOIN deltog ON tavling.TavlingNamn=deltog.T_ID
INNER JOIN spelare ON deltog.Person=spelare.PersonNr
WHERE tavling.TavlingNamn='BigGolfCupSkövde';

SELECT regn.Styrka
FROM har
INNER JOIN regn ON har.R_ID=regn.RegnID
WHERE har.T_ID='BigGolfCupSkövde';

