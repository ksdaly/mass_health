# What 3 towns have the highest population of citizens that are 65 years and older?
SELECT * FROM town_health_records ORDER BY age_65_plus DESC  LIMIT(3);
# What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT * FROM town_health_records ORDER BY age_0_19 DESC  LIMIT(3);
# What 5 towns have the lowest per capita income?
SELECT * FROM town_health_records ORDER BY per_capita_income LIMIT(5);
# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT * FROM town_health_records WHERE geography NOT IN ('Boston', 'Becket','Beverly') ORDER BY p_teen_births DESC LIMIT(1);
# Omitting Boston, what town has the highest number of infant mortalities?
SELECT * FROM town_health_records WHERE geography NOT IN ('Boston') ORDER BY number_of_infant_deaths DESC LIMIT(1);
