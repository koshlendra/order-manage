class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :telephone
      t.string :last_name
      t.timestamps
    end
  end
end
 