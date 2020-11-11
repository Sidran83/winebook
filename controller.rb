require_relative 'view'
require_relative 'wine'
class Controller

  def initialize(cellar)
    @cellar = cellar
    @view = View.new
  end

  def list
    display_list
  end

  def create
    name = @view.ask_user_for("name")
    grape_variety = @view.ask_user_for("grape variety")
    year = @view.ask_user_for("year")
    impressions = @view.ask_user_for("impression")

    wine = Wine.new(name, grape_variety, year, impressions)
    @cellar.add_wine(wine)
  end

  def destroy
    display_list
    index = @view.ask_user_for_index
    @cellar.remove_wine(index)
  end

  private

  def display_list
    wines = @cellar.all
    @view.display_wines(wines)
  end
end
