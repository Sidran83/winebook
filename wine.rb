class Wine
  attr_reader :name, :grape_variety, :year, :impressions

  def initialize(name, grape_variety, year, impressions)
    @name = name
    @grape_variety = grape_variety
    @year = year
    @impressions = impressions
  end
end
