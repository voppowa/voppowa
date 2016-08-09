
class View
  def print_addresses(addresses)
    addresses.each_with_index do |contact, index|
      print_address(contact, index)
    end
  end

  def print_address(contact, index)
    if contact && index
    puts "#{index + 1} - #{contact.name}: #{contact.street}. Telephone: #{contact.telephone}"
    else
    "No contact found"
    end
  end

  def new_name
    puts "Please enter the new name"
    gets.chomp
  end

  def new_street
    puts "Please enter the street"
    gets.chomp
  end

  def new_telephone
    puts "Please enter the telephone number"
    gets.chomp
  end

  def address_index_to_remove
    puts "Which contact do you want to remove?"
    gets.chomp.to_i - 1
  end

  def read_search_term
    puts "What do you want to search for?"
    gets.chomp
  end

  def update_contact
    puts "Which contact do you want to update?"
    gets.chomp.to_i - 1
  end

  def update_name
    puts "Please update the new name"
    gets.chomp
  end

  def update_street
    puts "Please update the street"
    gets.chomp
  end

  def update_telephone
    puts "Please update the telephone number"
    gets.chomp
  end
end


