
class Contact
  attr_accessor :name, :street, :telephone

  def initialize(name, street, telephone)
  @name = name
  @street = street
  @telephone = telephone
  end

  def update_name(name)
    @name = name
  end

  def update_street(street)
    @street = street
  end

  def update_telephone(telephone)
    @telephone = telephone
  end
end

