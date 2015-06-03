class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :customer_id
      t.integer :order_id
      t.string :country
      t.string :city
      t.string :address
      t.integer :pincode

      t.timestamps
    end
  end
end
