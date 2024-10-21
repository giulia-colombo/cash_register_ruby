class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.decimal :total_value
      t.integer :total_quantity
      t.string :status

      t.timestamps
    end
  end
end
