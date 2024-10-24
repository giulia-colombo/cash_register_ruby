# Represents a product in the system.
class Product < ApplicationRecord
  has_many :order_items

  validates :name, presence: true
  validates :code, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }

  # Retrieve all products from the database.
  # @return [ActiveRecord::Relation] A collection of all product records.
  def self.all_products
    all()
  end
end
