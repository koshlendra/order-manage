class AddBillingToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :billing_address, :boolean
  end
end
