class Product
  attr_reader :category, :name, :unit_price, :quantity, :is_hoarded

  def initialize(category, name, unit_price, quantity, is_hoarded = false)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
    @is_hoarded = is_hoarded
  end

  def total_price
    @quantity.to_f * @unit_price
  end

  def is_hoarded?
    is_hoarded
  end

  def hoard
    @is_hoarded = true
  end
end
