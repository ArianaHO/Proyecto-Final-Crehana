/*UPDATE*/

SELECT * FROM PRODUCTS;

UPDATE PRODUCTS
SET price_usd = price_usd*1.05
WHERE type='Tech' or type='Phones' or type='Videogames';

UPDATE PRODUCTS
SET price_usd = price_usd*0.9
WHERE type='Healt';