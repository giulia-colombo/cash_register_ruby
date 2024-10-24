module ApplicationHelper
  # Returns a product instance from a collection, using its product code
  def find_by_code(collection, product_code)
    collection.find do |item|
      if item.is_a?(Product)
        item.code == product_code
      elsif item.is_a?(OrderItem)
        item.product.code == product_code
      end
    end
  end
end
