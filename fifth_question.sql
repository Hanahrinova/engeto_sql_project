CREATE OR REPLACE VIEW v_fifth_question AS (
	SELECT
		year,
		round(GDP) AS round_GDP,
		round(avg(payroll)) AS avg_payroll,
		round(avg(price)) AS avg_price,
		round(LAG(avg(payroll)) OVER (ORDER BY year)) AS previous_payroll,
		round(LAG(avg(price)) OVER (ORDER BY year)) AS previous_price,
		round(LAG(round(GDP)) OVER (ORDER BY year)) AS previous_GDP
	FROM t_hana_hrinova_project_sql_secondary_final thhpssf
	GROUP BY year 
);

WITH fifth_question AS (
	SELECT 
	*,
	((avg_price - previous_price) / previous_price) * 100 AS difference_price,
	((avg_payroll - previous_payroll) / previous_payroll) * 100 AS difference_payroll,
	((round_GDP - previous_GDP) / previous_GDP) * 100 AS difference_GDP
	FROM v_fifth_question 
)
SELECT 
	*,
	CASE
		WHEN difference_GDP > 5 THEN 'high_growth'
		WHEN difference_GDP > 0 THEN 'growth'
		WHEN difference_GDP < 0 THEN 'not_growth'
	END AS GDP_growth,
	CASE
		WHEN difference_payroll > 5 THEN 'high_growth'
		WHEN difference_payroll > 0 THEN 'growth'
		WHEN difference_payroll < 0 THEN 'not_growth'
	END AS payroll_growth,
	CASE
		WHEN difference_price > 5 THEN 'high_growth'
		WHEN difference_price > 0 THEN 'growth'
		WHEN difference_price < 0 THEN 'not_growth'
	END AS price_growth
FROM fifth_question
;
