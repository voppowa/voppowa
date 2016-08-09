require_relative 'contact'
require 'csv'

class AddressBook
  attr_accessor :csv_file, :contact
  def initialize(csv_file)
    @addresses = []
    @csv_file = csv_file
    load_from_csv
  end

  def all
    @addresses
  end

  def delete_address(index)
    @addresses.delete_at(index)
    save_to_csv
  end

  def add_address(contact)
    @addresses << contact
    save_to_csv
  end

  def search(term)
    term = Regexp.new(term, 'i') # case-insensitive regex
    contact = @addresses.find do |r|
      r.name.match(term) || r.street.match(term) || r.telephone.match(term)
    end
    index  = @addresses.find_index(contact)
    [contact, index]
  end

  def get_contact(index)
    @addresses[index]
  end

  def save_update
    save_to_csv
  end

  private

  def load_from_csv
    CSV.foreach(@csv_file) do |row|
      @addresses << Contact.new(row[0], row[1], row[2])
    end
  end

  def save_to_csv
    CSV.open(@csv_file, "w") do |csv|
      @addresses.each do |contact|
        csv << [contact.name, contact.street, contact.telephone]
      end
    end
  end

end
