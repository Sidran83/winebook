class View

  def display_wines(wines)
    wines.each_with_index do |wine, index|
      puts "#{index + 1}. Wine's name: #{wine.name} | Grape Variety: #{wine.grape_variety} | Year: #{wine.year} | Impressions? #{wine.impressions}"
    end
  end

  def ask_user_for(stuff)
    puts "#{stuff.capitalize} of the wine?"
    print "> "
    gets.chomp
  end

  def ask_user_for_index
    puts "N° of the wine?"
    print "> "
    gets.chomp.to_i - 1
  end
end
