class AddBillligFromAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :billing_address, :boolean
  end
end
