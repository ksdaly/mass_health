class AddColumnsToTownHealthRecords < ActiveRecord::Migration
  def change
    add_column :town_health_records, :geography, :string
    add_column :town_health_records, :total_pop, :integer
    add_column :town_health_records, :age_0_19, :integer
    add_column :town_health_records, :age_65_plus, :integer
    add_column :town_health_records, :per_capita_income, :integer
    add_column :town_health_records, :persons_living_below_200p_poverty, :integer
    add_column :town_health_records, :p_all_persons_living_below_200p_poverty_level, :decimal, precision: 4, scale: 2
    add_column :town_health_records, :p_adequacy_prenatal_care, :decimal, precision: 4, scale: 2
    add_column :town_health_records, :p_c_section_deliveries, :decimal, precision: 4, scale: 2
    add_column :town_health_records, :number_of_infant_deaths, :integer
    add_column :town_health_records, :infant_mortality_rate, :decimal, precision: 4, scale: 2
    add_column :town_health_records, :p_low_birthweight, :decimal, precision: 4, scale: 2
    add_column :town_health_records, :p_multiple_births, :decimal, precision: 4, scale: 2
    add_column :town_health_records, :p_publicly_financed_prenatal_care, :decimal, precision: 4, scale: 2
    add_column :town_health_records, :p_teen_births, :decimal, precision: 4, scale: 2
  end
end
