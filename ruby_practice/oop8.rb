# Create Person class
class Person
  def initialize(first_name, last_name, hair_color, hobbies)
    @first_name = first_name
    @last_name = last_name
    @hair_color = hair_color
    @hobbies = hobbies
  end

  def first_name
    return @first_name
  end

  def last_name
    return @last_name
  end

  def full_name
    return @full_name
  end

  def full_name
    @full_name = @first_name + " " + @last_name
  end

  def email
    @email = @first_name + @last_name + "@gmail.com"
  end

  def hair_color
    return @hair_color
  end

  def hobbies
    return @hobbies
  end

  def description
    return @description
  end

  def description
    @hobbies.each do |hobby|
        puts @first_name + " enjoys " + hobby + "."
      end
  end

end


contacts = [
  Person.new("Bob", "Jones", "pink", ["basketball", "chess", "phone tag"]),
  Person.new("Molly", "Parker", "black", ["computer programming", "reading", "jogging"]),
  Person.new("Kelly", "Miller", "rainbow", ["cricket", "baking", "stamp collecting"])
]

# Create ContactList class
class ContactList

  def initialize(title, contacts)
    @title = title
    @contacts = contacts
  end

  def title
    return @title
  end

  def contacts
    return @contacts
  end

  def contacts
    @contacts = contacts << person
  end

  def add_contact
    return @add_contact
  end

  def add_contact(person)
    @contacts << person
  end
end

person = Person.new("Sterling", "Archer", "black", ["scotch", "danger zone", "shouting"])
contact_list = ContactList.new("friends", contacts)
puts contact_list.add_contact(person)
p contact_list
