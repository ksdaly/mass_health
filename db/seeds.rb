require 'pry'
require 'csv'

CSV.foreach("#{Rails.root}/db/data/mass_chip_data.csv", :headers => true) do |row|
  row.each do |entry|
    if !entry[1].nil?
      entry[1] = entry[1].gsub(/[,|$]/,"").strip
      if entry[1].match(/NA/)
        entry[1] = nil
      end
    end
  end

  data = {
    geography: row[0],
    total_pop: row[1],
    age_0_19: row[2],
    age_65_plus: row[3],
    per_capita_income: row[4],
    persons_living_below_200p_poverty: row[5],
    p_all_persons_living_below_200p_poverty_level: row[6],
    p_adequacy_prenatal_care: row[7],
    p_c_section_deliveries: row[8],
    number_of_infant_deaths: row[9],
    infant_mortality_rate: row[10],
    p_low_birthweight: row[11],
    p_multiple_births: row[12],
    p_publicly_financed_prenatal_care: row[13],
    p_teen_births: row[14]
  }

  health_record = TownHealthRecord.where(data).first
  if health_record.nil?
    health_record = TownHealthRecord.new(data)
  else
    health_record.update_attributes(data)
  end
  health_record.save!
end
