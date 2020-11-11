require_relative 'cellar'
require_relative 'controller'
require_relative 'router'

csv_file = File.join(__dir__, "wines.csv")
cellar = Cellar.new(csv_file)
controller = Controller.new(cellar)
router = Router.new(controller)

router.run
