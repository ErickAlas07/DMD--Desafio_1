 Select count(*) as total
 FROM [db_cebollita].[dbo].[players];

  
select * from dbo.players;

SELECT * FROM dbo.players
WHERE Age_Category = 'Adulto Joven';

/*Visualizar el rating por edad (Ver en que edad los jugadores tienen un mejor rating)*/
SELECT Age_Number, ROUND(AVG(Rating_Number),2) AS Avg_Rating
FROM dbo.players
GROUP BY Age_Number
ORDER BY Age_Number;

SELECT Age_Number, ROUND(AVG(CAST(Rating_Number AS FLOAT)),2) AS Avg_Rating
FROM dbo.players
GROUP BY Age_Number
ORDER BY Age_Number;

/*Visualizar la posicion preferida por los jugadores a través de la edad*/
SELECT Age_Number, Preffered_Position, COUNT(*) AS Total_Jugadores
FROM dbo.players
GROUP BY Age_Number, Preffered_Position
ORDER BY Age_Number, Total_Jugadores DESC;

/*Analizar el perfil físico de los jugadores de fútbol agrupándolos por su posición preferida, y calcular el promedio de su peso y altura.*/
SELECT Preffered_Position, 
       ROUND(AVG(CAST(SUBSTRING(Weight, 1, CHARINDEX(' ', Weight) - 1) AS FLOAT)), 2) AS Avg_Weight, 
       ROUND(AVG(CAST(SUBSTRING(Height, 1, CHARINDEX(' ', Height) - 1) AS FLOAT)), 2) AS Avg_Height
FROM dbo.players
GROUP BY Preffered_Position
ORDER BY Avg_Height DESC;


