class RemoveBillligFromCustomer < ActiveRecord::Migration
  def change
    remove_column :customers, :billing_address, :boolean
  end
end
