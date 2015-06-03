class CreateMainUsers < ActiveRecord::Migration
  def change
    create_table :main_users do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
