class Product < ActiveRecord::Base
	 paginates_per 10
	 has_many :products_orders 
	 has_many :orders ,  through: :products_orders 
end
