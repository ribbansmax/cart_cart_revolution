require "minitest/autorun"
require "minitest/pride"
require "./lib/product"
require "./lib/shopping_cart"
require "pry";

class ShoppingCartTest < Minitest::Test
  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_instance_of ShoppingCart, cart
  end

  def test_it_can_have_name
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal "King Soopers", cart.name
  end
end
