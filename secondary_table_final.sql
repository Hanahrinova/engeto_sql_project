CREATE OR REPLACE TABLE t_Hana_Hrinova_project_sql_secondary_final AS
    SELECT 
    	e.country,
    	e.year,
    	e.GDP,
    	thhpspf.payroll,
    	thhpspf.price
	FROM economies e
	JOIN t_hana_hrinova_project_sql_primary_final thhpspf 
		ON e.YEAR = thhpspf.payroll_year
	WHERE e.country = 'Czech Republic'
	ORDER BY e.country, e.year;
