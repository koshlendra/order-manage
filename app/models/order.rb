class Order < ActiveRecord::Base
	paginates_per 10 
 

 has_many :products_orders
 has_many :products , through: :products_orders
 accepts_nested_attributes_for :products_orders
 belongs_to :customer
 belongs_to :address


end
