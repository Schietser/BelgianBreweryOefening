USE thebelgianbrewerydb;

SELECT beers.Id, Name, BrewerId, c.Category,
       Price, Stock, Alcohol, Version, Image
FROM beers
INNER JOIN categories c on beers.CategoryId = c.Id
WHERE (Category LIKE 'Alcoholvrij' OR Category LIKE 'Light')
AND (Name LIKE '%j%' OR Name LIKE'St%')
AND (Alcohol <= 2);