# This is the Ruby Symbol Syntax. Typing it is lame.
item1 = {:name => "watermelon", :price => 3.50, :fruit => false}
item2 = {:name => "potatoes", :price => 2.75, :fruit => false}
item3 = {:name => "garlic", :price => 1.25, :fruit => false}

# This is the Javascript Symbol Syntax. It is better.
item1 = {name: "watermelon", price: 3.50, fruit: false}
item2 = {name: "potatoes", price: 2.75, fruit: false}
item3 = {name: "garlic", price: 1.25, fruit: false}

module Food
  class Produce
    attr_reader :name, :price, :fruit
    def initialize(input_options)
      @name = input_options[:name]
      @price = input_options[:price]
      @fruit = input_options[:fruit]
    end
  end
end

class Fruit
  include Food
  attr_reader :shelf_life
  attr_writer :shelf_life
  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end

item4 = Food::Produce.new({price: 0.75, name: "tangerine", fruit: true})
puts item4.name
puts item4.price
