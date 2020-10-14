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

  def products_by_category(category)
    @products.select {|product| product.category == category}
  end

  def percentage_occupied
    total_products = products.sum do |product|
      product.quantity
    end
    (100 * (total_products / @capacity.to_f)).round(2)
  end

  def sorted_products_by_quantity
    @products.sort_by {|product| - product.quantity}
  end

  def product_breakdown
    product_breakdown = {}
    @products.each do |product|
      product_breakdown[product.category] = products_by_category(product.category)
    end
    product_breakdown
  end
end
