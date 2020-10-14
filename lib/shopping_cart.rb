class ShoppingCart
  attr_reader :name, :capacity, :products, :details

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.delete_suffix("items").to_i
    @products = []
    @details = {}
    @details[:name] = name
    @details[:capacity] = @capacity

  end

  def add_product(product)
    @products << product
  end
end
