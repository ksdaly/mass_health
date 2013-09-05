# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order('age_65_plus DESC').limit(3)
# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order('age_0_19 DESC').limit(3)
# What 5 towns have the lowest per capita income?
TownHealthRecord.order(:per_capita_income).limit(5)
# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.where.not(geography: ['Boston', 'Becket','Beverly']).where.not(p_teen_births: nil).order('p_teen_births DESC').limit(1)
# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.where.not(geography: ['Boston']).where.not(number_of_infant_deaths: nil).order('number_of_infant_deaths DESC').limit(1)
