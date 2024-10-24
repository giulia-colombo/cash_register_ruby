class DiscountService
    def initialize(order_items)
        @order_items = order_items
    
    def find_by_code(collection, product_code)
        collection.find({ |item| item.code == product_code})
    end


    def apply_discount_green_tea
    # Applies buy-one-get-one discount for green tea products, if the conditions are met
    green_tea_item = @order_items.find do |item|
      item.name.downcase() == "green tea"
    end
    end

    def apply_discount_coffee
    # Applies discount for coffee products, if the conditions are met

    end

    def apply_discount_strawberries
    # Applies discount for strawberry products, if the conditions are met
    end
end