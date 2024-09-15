SELECT * FROM dbo.reviews;

SELECT COUNT(*) AS Total
FROM dbo.reviews ;

/*Calcular el promedio de valoraciones (para tener una idea de cuál es el nivel general de satisfacción*/
SELECT AVG(score) AS PromedioSatisfaccion
FROM dbo.reviews;

SELECT * FROM dbo.reviews
WHERE Rating_Category = 'Excelente';

SELECT TOP 1 *
FROM dbo.reviews
ORDER BY thumbsUpCount DESC;


SELECT *
FROM dbo.reviews
WHERE content LIKE '%bueno%' OR content LIKE '%excelente%' OR content LIKE '%good%';


SELECT *
FROM dbo.reviews
WHERE content LIKE '%mal%' OR content LIKE '%bad%' OR content LIKE '%error%';

