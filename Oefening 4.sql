USE thebelgianbrewerydb;

SELECT beers.Id AS BeerID,
       beers.Name AS BeerName,
       b.Name AS BrewerName,
       c.Category AS CategoryName,
       beers.Price AS BeerPrice
       FROM beers
LEFT JOIN brewers b on b.Id = beers.BrewerId
LEFT JOIN categories c on beers.CategoryId = c.Id
WHERE b.Name LIKE 'Boon';