class RemoveOrederFromAddress < ActiveRecord::Migration
  def change
    remove_column :addresses, :order_id, :integer
  end
end
