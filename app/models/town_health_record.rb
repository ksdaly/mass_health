class TownHealthRecord < ActiveRecord::Base

  searchable do
    text :geography
  end
end
