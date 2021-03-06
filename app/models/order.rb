require 'elasticsearch/model'

class Order < ActiveRecord::Base
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
	paginates_per 10 
 

  has_many :products_orders
  has_many :products , through: :products_orders
  accepts_nested_attributes_for :products_orders
  belongs_to :customer
  belongs_to :address
  after_create :add_count_customer
  belongs_to :user
  def add_count_customer
 	a = self.customer
 	a.order_count = a.order_count + 1
 	a.save
  end

end
 