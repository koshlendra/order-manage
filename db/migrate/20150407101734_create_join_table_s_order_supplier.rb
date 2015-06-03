class CreateJoinTableSOrderSupplier < ActiveRecord::Migration
  def change
    create_join_table :s_orders, :suppliers do |t|
      # t.index [:s_order_id, :supplier_id]
      # t.index [:supplier_id, :s_order_id]
    end
  end
end
