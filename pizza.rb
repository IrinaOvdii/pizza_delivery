class Pizza
  attr_accessor :number, :name, :ingredients, :price
  def initializer(number, name, ingredients, price)
    @number = number
    @name = name
    @ingredients = ingredients
    @price = price
  end
end
