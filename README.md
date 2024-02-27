# engeto_sql_project
V našem analytickém oddělení nezávislé společnosti, která se zabývá životní úrovní občanů, jsme se dohodli, že se pokusíme odpovědět na pár definovaných výzkumných otázek, které adresují dostupnost základních potravin široké veřejnosti. Kolegové vydefinovali základní otázky, na které se pokusí odpovědět a poskytnout tuto informaci tiskovému oddělení. Toto oddělení bude výsledky prezentovat na následující konferenci zaměřené na tuto oblast.
Úkolem projektu bylo vytvoření dvou tabulek - primární tabulku pro data cen a mezd v České republice a sekundární tabulku pro dodatečná data o státech a jejich HDP. Na základě těchto tabulek bylo třeba vytvořit datové podklady k zodpovězení výzkumných otázek.
Výzkumné otázky: 
Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?
Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo násdujícím roce výraznějším růstem?
Datové sady, které bylo možné použít pro získání vhodného datového podkladu
Primární tabulky:
czechia_payroll – Informace o mzdách v různých odvětvích za několikaleté období. Datová sada pochází z Portálu otevřených dat ČR.
czechia_payroll_calculation – Číselník kalkulací v tabulce mezd.
czechia_payroll_industry_branch – Číselník odvětví v tabulce mezd.
czechia_payroll_unit – Číselník jednotek hodnot v tabulce mezd.
czechia_payroll_value_type – Číselník typů hodnot v tabulce mezd.
czechia_price – Informace o cenách vybraných potravin za několikaleté období. Datová sada pochází z Portálu otevřených dat ČR.
czechia_price_category – Číselník kategorií potravin, které se vyskytují v našem přehledu.
Číselníky sdílených informací o ČR:
czechia_region – Číselník krajů České republiky dle normy CZ-NUTS 2.
czechia_district – Číselník okresů České republiky dle normy LAU.
Dodatečné tabulky:
countries - Všemožné informace o zemích na světě, například hlavní město, měna, národní jídlo nebo průměrná výška populace.
economies - HDP, GINI, daňová zátěž, atd. pro daný stát a rok.

Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
Ve sledovaném období byl skoro ve všech odvětvích zaznamenán meziroční pokles mezd. Celkem se jednalo o 35 případů, nejvíce v roce 2013. Nejvíce poklesů (čtyři) bylo u dvou odvětví: Peněžnictví a pojišťovnictví a Výroba a rozvod elektřiny, plynu, tepla a klimatiz. vzduchu. Jedinou výjimkou byl zpracovatelský průmysl, ve kterém byla průměrná mzda každý rok vyšší než ten předchozí.

Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
V prvním sledovaném období, tedy v roce 2006 je možné si za průměrnou mzdu koupit 1287 chlebů, nebo 1437 litrů mléka.
V posledním sledovaném období, tedy v roce 2018 je možné si za průměrnou mzdu koupit 1342 chlebů, nebo 1642 litrů mléka.

Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?
Nejpomaleji ve sledovaném období zdražují potraviny, které zlevnily. Zde jsou tři procentuálně nejvýraznější poklesy cen:
Rajská jablka červená kulatá - pokles o 30,27 % z 57,82 Kč na 40,31 Kč (rok 2007)
				   - pokles o 28,20 % z 42,20 Kč na 30,30 Kč (rok 2011)
Pečivo pšeničné bílé - pokles o 28,5% z 54,31 Kč na 38,83 Kč (rok 2009)
Konzumní brambory - pokles o 23,53 % z 14,10 Kč na 10,78 Kč (rok 2008)

Co se týče celkového vývoje ceny, tedy rozdílu mezi prvním a posledním sledovaným obdobím (2006-2018), zlevnily tyto potraviny:
Cukr krystalový - pokles z 21,76 Kč na 15,75 Kč, zlevnil o 27,5 %.
Rajská jablka červená kulatá - pokles z 57,82 Kč na 44,48 Kč, zlevnila o 23,07 %. 

Potravinou, která zdražila o nejmenší částku, jsou banány žluté, které v roce 2006 stály 27,30 Kč a v roce 2018 29,32 Kč, zdražily za celé období tedy jen o 7,38 %.

Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
Ve sledovaném období nebyl žádný rok, kdy by nárůst cen byl o více než 10 % vyšší než nárůst mezd. Nejvyšší rozdíl byl 6,66 % v roce 2013, kdy potraviny rostly o 5,1 % a mzdy klesaly o 1,56 %. 

Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?
Ve sledovaném období byl v České republice nárůst HDP nejvyšší v letech 2007 (o 5,57 %), 2015 (o 5,38 %) a 2017 (o 5,16 %). V roce 2008 můžeme vidět zvýšení mezd i cen potravin o více než 5 %, roce 2016 menší mírný nárůst mezd (3,64 %), ale žádný nárůst cen potravin, a v roce 2018 vysoký nárůst mezd (o 7,62 %) a mírný nárůst cen potravin (2,05 %). Z toho vyplývá, že výrazný růst HDP v jednom roce, nejspíše způsobí i vyšší nárůst mezd v následujícím roce, ale cenu potravin ovlivnit nemusí. 
