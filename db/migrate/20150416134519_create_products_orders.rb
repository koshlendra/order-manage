class CreateProductsOrders < ActiveRecord::Migration
  def change
    create_table :products_orders do |t|
      t.integer :product_id
      t.integer :customer_id
      t.integer :quantity
      t.integer :price
      t.integer :total_price

      t.timestamps
    end
  end
end
