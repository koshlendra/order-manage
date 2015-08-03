class AddOrderCountToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :order_count, :integer , default: 0
  end
end
