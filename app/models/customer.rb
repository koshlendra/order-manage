class Customer < ActiveRecord::Base
	has_many :addresses
   accepts_nested_attributes_for :addresses
   before_save { self.email = email.downcase }
   
   
	 validates :name, :last_name,:phone,presence: true
     validates  :phone ,:telephone ,numericality: true
     validates :phone ,  length: { is: 10 }
	 has_many :orders
	 paginates_per 10
end
