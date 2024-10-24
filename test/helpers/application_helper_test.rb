require "test_helper"

class ApplicationHelperTest < ActiveSupport::TestCase
  include ApplicationHelper
  test "find_by_code returns the correct product from products fixture" do
    green_tea = find_by_code(products, "GR1")
    assert_equal(products(:green_tea), green_tea)
  end

  test "find_by_code returns the correct product from order_items fixture" do
    strawberries_item = find_by_code(order_items, "SR1")
    assert_equal(order_items(:strawberries), strawberries_item)
  end
end
