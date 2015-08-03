class AddPositionToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :position, :integer ,:default => 0
  end
end
