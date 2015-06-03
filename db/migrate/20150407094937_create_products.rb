class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :brand
      t.string :color
      t.integer :quantity

      t.timestamps
    end
  end
end
 