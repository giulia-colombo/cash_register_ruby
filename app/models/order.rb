class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy

  validates :total_value, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :total_quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_t0: 0 }

  # def alculate_total
end
