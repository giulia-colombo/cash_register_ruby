# Represents a product in the system.
class Product < ApplicationRecord
  # Retrieve all products from the database.
  # @return [ActiveRecord::Relation] A collection of all product records.
  def self.all_products
    all()
  end
end
