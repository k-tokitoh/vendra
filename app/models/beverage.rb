class Beverage
  attr_reader :name, :price, :count

  def initialize(name, price, count)
    @name = name
    @price = price
    @count = count
  end
end