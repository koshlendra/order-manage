class CreateSOrders < ActiveRecord::Migration
  def change
    create_table :s_orders do |t|

      t.timestamps
    end
  end
end
