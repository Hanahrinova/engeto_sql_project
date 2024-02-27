WITH first_question AS (
	SELECT 
	payroll_year,
	name,
	payroll,
	LAG(payroll) OVER (PARTITION BY name ORDER BY payroll_year) AS previous_year
	FROM t_hana_hrinova_project_sql_primary_final thhpspf 
	GROUP BY name, payroll_year
	ORDER BY name, payroll_year
	) 
SELECT *
FROM first_question
WHERE 
	payroll_year BETWEEN 2007 AND 2018
	AND payroll < previous_year;
