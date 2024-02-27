CREATE OR REPLACE TABLE t_Hana_Hrinova_1 AS
    SELECT 
    	cp.value AS payroll,
    	cp.payroll_year AS payroll_year,
    	cpib.name AS name,
    	cp.calculation_code AS cp_code,
    	cp.value_type_code AS cp_value_type_code,
    	cp.unit_code AS cp_unit_code,
    	cp.calculation_code AS cp_calculation_code, 
    	cp.industry_branch_code AS cp_industry_branch_code,
    	cp.payroll_quarter AS cp_payroll_quarter,
    	cpc.code AS cpc_code,
    	cpc.name AS cpc_name,
    	cpib.code AS cpib_code,
    	cpu.code AS cpu_code,
    	cpu.name AS cpu_name,
    	cpvt.code AS cpvt_code,
    	cpvt.name AS cpvt_name
	FROM czechia_payroll cp
	JOIN czechia_payroll_calculation cpc
   		ON cp.calculation_code = cpc.code
	JOIN czechia_payroll_industry_branch cpib
    	ON cp.industry_branch_code = cpib.code
	JOIN czechia_payroll_unit cpu
    	ON cp.unit_code = cpu.code
	JOIN czechia_payroll_value_type cpvt
    	ON cp.value_type_code = cpvt.code 
	WHERE cp.value_type_code = 5958;
    
CREATE OR REPLACE TABLE t_Hana_Hrinova_2 AS
	SELECT cpc.name AS product_name,
		YEAR(cp.date_from) AS price_year,
		AVG(cp.value) AS price
	FROM czechia_price cp 
	JOIN czechia_price_category cpc  
		ON cp.category_code = cpc.code
	GROUP BY cpc.name, YEAR(cp.date_from);
	
CREATE OR REPLACE TABLE t_Hana_Hrinova_project_SQL_primary_final AS
SELECT *
FROM t_hana_hrinova_1 thh 
JOIN t_hana_hrinova_2 thh2 
   ON thh.payroll_year = thh2.price_year;
