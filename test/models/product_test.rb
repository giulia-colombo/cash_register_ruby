require "test_helper"

class ProductTest < ActiveSupport::TestCase
  def setup
    @coffee = products(:coffee)
    @green_tea = products(:green_tea)
    @strawberries = products(:strawberries)

    # puts "Products Count: #{Product.count()}"
  end

  test "should list all products" do
    @products = Product.all_products()
    puts @products.inspect()

    assert_equal(3, @products.count())
    assert_includes(@products, @coffee)
    assert_includes(@products, @green_tea)
    assert_includes(@products, @strawberries)
  end
end
