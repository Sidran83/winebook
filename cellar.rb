require 'csv'
require_relative 'wine'

class Cellar
  def initialize(csv_file)
    @csv_file = csv_file
    @wines = []
    load_csv
  end

  def all
    @wines
  end

  def add_wine(wine)
    @wines << wine
    save_to_csv
  end

  def remove_wine(index)
    @wines.delete_at(index)
    save_to_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @wines << Wine.new(row[0], row[1], row[2], row[3])
    end
  end

  def save_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @wines.each do |wine|
        csv << [wine.name, wine.grape_variety, wine.year, wine.impressions]
      end
    end
  end
end
