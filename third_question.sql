WITH third_question_a AS (
	SELECT
	product_name,
	price_year,
	price,
	LAG(price) OVER (PARTITION BY product_name ORDER BY price_year) AS previous_year_price
FROM t_hana_hrinova_project_sql_primary_final thhpspf 
GROUP BY product_name, price_year
)
SELECT 
	*,
	((price - previous_year_price) / previous_year_price) * 100 AS difference
FROM third_question_a
WHERE 
	price_year BETWEEN 2007 AND 2018
ORDER BY difference ;
	
WITH third_question_b AS (
	SELECT
	product_name,
	price_year,
	price,
	LAG(price) OVER (PARTITION BY product_name ORDER BY price_year) AS previous_year_price
FROM t_hana_hrinova_project_sql_primary_final thhpspf 
WHERE price_year IN (2006, 2018)
GROUP BY product_name, price_year
)
SELECT 
	*,
	((price - previous_year_price) / previous_year_price) * 100 AS difference
FROM third_question_b
WHERE 
	price_year = 2018
ORDER BY difference ;
