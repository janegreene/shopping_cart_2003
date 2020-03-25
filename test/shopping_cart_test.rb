require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart.rb'

class ProductTest < Minitest::Test

  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_instance_of ShoppingCart, cart
    assert_equal 'King Soopers', cart.name
    assert_equal 30, cart.capacity
    assert_equal [], cart.products
  end

end
