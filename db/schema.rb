# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130904202251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "town_health_records", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "geography"
    t.integer  "total_pop"
    t.integer  "age_0_19"
    t.integer  "age_65_plus"
    t.integer  "per_capita_income"
    t.integer  "persons_living_below_200p_poverty"
    t.decimal  "p_all_persons_living_below_200p_poverty_level", precision: 4, scale: 2
    t.decimal  "p_adequacy_prenatal_care",                      precision: 4, scale: 2
    t.decimal  "p_c_section_deliveries",                        precision: 4, scale: 2
    t.integer  "number_of_infant_deaths"
    t.decimal  "infant_mortality_rate",                         precision: 4, scale: 2
    t.decimal  "p_low_birthweight",                             precision: 4, scale: 2
    t.decimal  "p_multiple_births",                             precision: 4, scale: 2
    t.decimal  "p_publicly_financed_prenatal_care",             precision: 4, scale: 2
    t.decimal  "p_teen_births",                                 precision: 4, scale: 2
  end

end
