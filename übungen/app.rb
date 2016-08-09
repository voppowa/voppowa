require_relative 'addressbook'    # You need to create this file!
require_relative 'controller'  # You need to create this file!
require_relative 'router'

csv_file   = File.join(__dir__, 'address.csv')
addressbook   = AddressBook.new(csv_file)
controller = Controller.new(addressbook)

router = Router.new(controller)

# Start the app
router.run
