class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "            --        "
    puts "       WINE CELLAR"
    puts "            --        "

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all wines"
    puts "2 - Add a new wine"
    puts "3 - Delete a wine"
    puts "4 - Stop and exit the program"
    print "> "
  end

  def route_action(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then stop
    else
      puts "press 1, 2, 3 or 4"
    end
  end

  def stop
    @running = false
  end
end
