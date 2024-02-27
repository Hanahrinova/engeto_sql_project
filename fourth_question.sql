CREATE OR REPLACE VIEW v_fourth_question AS (
	SELECT
	price_year,
	avg(payroll)  AS avg_payroll,
	avg(price) AS avg_price
	FROM t_hana_hrinova_project_sql_primary_final thhpspf 
	GROUP BY price_year
);

WITH fourth_question AS (
	SELECT 
	*,
	round(LAG(avg_price) OVER (ORDER BY price_year), 2) AS previous_price,
	LAG(avg_payroll) OVER (ORDER BY price_year) AS previous_payroll
	FROM v_fourth_question 
)
SELECT 
	*,
	(((avg_price - previous_price) / previous_price) * 100) - (((avg_payroll - previous_payroll) / previous_payroll) * 100) AS difference
FROM fourth_question
ORDER BY difference DESC ;
