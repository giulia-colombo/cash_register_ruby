class RemoveProductNameAndProductCodeFromOrderItems < ActiveRecord::Migration[7.2]
  def change
    remove_column :order_items, :product_name, :string
    remove_column :order_items, :product_code, :string
  end
end
