USE thebelgianbrewerydb;

SELECT b.Id,
b.Name as Beer,
r.Name as Brewery,
c.Category as Category,
b.Price,
b.Stock,
b.Alcohol,
b.Version,
b.Image
FROM thebelgianbrewerydb.beers b
INNER JOIN brewers r on b.BrewerId = r.Id
INNER JOIN categories c on b.CategoryId = c.Id;