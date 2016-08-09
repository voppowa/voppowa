require_relative "view"
require_relative "contact"

class Controller
  attr_accessor :csv_file, :addressbook
  def initialize(addressbook)
    @addressbook = addressbook
    @view = View.new
  end

  def create
    name = @view.new_name
    street = @view.new_street
    telephone = @view.new_telephone
    @addressbook.add_address(Contact.new(name, street, telephone))
  end

  def list
    @view.print_addresses(@addressbook.all)
  end

  def destroy
    @view.print_addresses(@addressbook.all)
    index = @view.address_index_to_remove
    @addressbook.delete_address(index)
  end

  def search
    search_term = @view.read_search_term
    contact, index = @addressbook.search(search_term)
    @view.print_address(contact, index)
  end

  def update
    @view.print_addresses(@addressbook.all)
    index = @view.update_contact

    if @view.update_name != ""
      name = @view.update_name
      @addressbook.get_contact(index).update_name(name)
    else
      @name
    end

    if @view.update_street != ""
     street = @view.update_street
     @addressbook.get_contact(index).update_street(street)
    else
      @street
    end

    if @view.update_telephone != ""
      telephone = @view.update_telephone
      @addressbook.get_contact(index).update_telephone(telephone)
    else
      @telephone
    end

    @addressbook.save_update
  end
end

