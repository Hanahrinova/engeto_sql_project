WITH second_question AS (
	SELECT 
	payroll_year,
	product_name,
	price,
	AVG (payroll) AS avg_payroll
FROM t_hana_hrinova_project_sql_primary_final thhpspf 
WHERE product_name IN ('Chléb konzumní kmínový' , 'Mléko polotučné pasterované')
AND payroll_year IN (2006, 2018)
GROUP BY payroll_year, product_name 
)
SELECT 
	*,
	round(avg_payroll / price) AS quantity
FROM second_question
ORDER BY quantity;
