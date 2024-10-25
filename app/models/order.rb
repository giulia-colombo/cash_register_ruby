class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy

  validates :total_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :total_quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_t0: 0 }

  # def alculate_total
  # 
  def add_products_to_order(quantity):
    # Adds products to the order based on the quantity the user has input.
    # 
    # for every product in the table (coffee, green tea, strawb) check if the user has input a number under the quantity columng
    # if the quantity field is not empty, 
  end
    
  end
  
end
