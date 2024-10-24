require "test_helper"

class OrderItemTest < ActiveSupport::TestCase
  def setup
    # puts OrderItem.all.inspect()
    @green_tea_item = order_items(:green_tea)
    @coffe_item = order_items(:coffee)
    @strawberries_item = order_items(:strawberries)
  end
  test "should return correct subtotal" do
    green_tea_subtotal = @green_tea_item.calculate_subtotal()
    assert_equal(3.11, green_tea_subtotal)

    coffee_subtotal = @coffe_item.calculate_subtotal()
    assert_equal(11.23, coffee_subtotal)

    strawberries_subtotal = @strawberries_item.calculate_subtotal()
    assert_equal(10.00, strawberries_subtotal)
  end
end
