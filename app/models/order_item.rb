class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :quantity, presence: true, numericality: { greather_than: 0 }
  validates :unit_price, presence: true, numericality: { greather_than_or_equal_to: 0 }
end
