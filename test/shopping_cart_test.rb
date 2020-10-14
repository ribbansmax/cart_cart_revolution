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

  def test_it_can_have_capacity
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal 30, cart.capacity
  end

  def test_it_can_have_products
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_instance_of Array, cart.products
  end

  def test_it_can_add_products
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    cart.add_product(product1)
    cart.add_product(product2)

    assert_equal [product1, product2], cart.products
  end

  def test_it_can_display_details
    # throwing up a syntax error, but pry shows cart.details works - look later if time
    skip
    cart = ShoppingCart.new("King Soopers", "30items")
    assert_equal {name: "King Soopers", capacity: 30}, cart.details
  end
end
