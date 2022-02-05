SELECT 
	count(product_id) products
FROM PRODUCTS;


SELECT 
	type,
	count(product_id) products
FROM PRODUCTS
GROUP BY type
ORDER BY products desc;


SELECT 
		PRODUCT_ID,
        NAME,
        PRICE_USD
FROM	PRODUCTS
ORDER BY PRICE_USD DESC
LIMIT 1;

SELECT 
		PRODUCT_ID,
        NAME,
        PRICE_USD
FROM	PRODUCTS
ORDER BY PRICE_USD ASC
LIMIT 1;

SELECT
	gender,
	count(user_id) users
FROM USERS
GROUP BY gender
ORDER BY users desc;

SELECT
	state,
	count(user_id) AS num_users
FROM USERS
GROUP BY state
ORDER BY num_users asc
LIMIT 5;



SELECT 
	min(date) as min_date,
    max(date) as max_date
FROM  _SALES;

SELECT	
	date,
	SUM(AMOUNT) AS AMOUNT,
    SUM(UNITS) AS UNITS
 FROM  _SALES
 GROUP BY date
 ORDER BY AMOUNT DESC
LIMIT 1;   

SELECT
    p.name,
	SUM(UNITS) AS UNITS
 FROM  _SALES S
 LEFT JOIN PRODUCTS P ON s.product_id_fk=p.product_id
 GROUP BY  p.name
 ORDER BY units DESC;   
 
 SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.gender,
    u.zip_code,
    u.address,
    u.state,
    u.city,
    u.phone,
	SUM(AMOUNT) AS AMOUNT
 FROM  _SALES S
 LEFT JOIN USERS U ON s.user_id_fk=u.user_id
 GROUP BY 
	u.user_id,
    u.first_name,
    u.last_name,
    u.gender,
    u.zip_code,
    u.address,
    u.state,
    u.city,
    u.phone
 ORDER BY amount DESC
 LIMIT 1;   