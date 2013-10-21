class TownHealthRecordsController < ApplicationController

  def index
    @search = TownHealthRecord.search do
    fulltext params[:search]
  end
    @town_health_records = @search.results
  end

end
