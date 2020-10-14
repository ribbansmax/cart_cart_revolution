class ShoppingCart
  attr_reader :name, :capacity, :products, :details, :is_full

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.delete_suffix("items").to_i
    @products = []
    @details = {}
    @details[:name] = name
    @details[:capacity] = @capacity
    @is_full = false

  end

  def add_product(product)
    @products << product
    total_products = products.sum do |product|
      product.quantity
    end
    @is_full = true if total_products >= capacity

  end

  def is_full?
    is_full
  end
end
