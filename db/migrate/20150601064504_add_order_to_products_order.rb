class AddOrderToProductsOrder < ActiveRecord::Migration
  def change
    add_column :products_orders, :order_id, :integer
  end
end
