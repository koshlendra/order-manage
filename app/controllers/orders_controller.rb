class OrdersController < ApplicationController

	def index
      @order = Order.where("user_id = ?",current_user.id).order(:position).page params[:page]	
	end

	def new
	  @order = Order.new
	  @order.products_orders.build
    end

	def customer_address
		@address = Address.where("customer_id = ? and billing_address is true ", params[:id]).first
	end  
	def product_detail
	   	@product = Product.where("id = ?", params[:id]).first
	   	@hash = params[:id_hash]
    end   
    
    
	def create
	   @order = Order.new(order_params)
	   @order.user_id = current_user.id
    if @order.save
       @address = Address.new(address) 
       @address.save
       id  = @address.id
       @order1 = Order.last
       @order1.update_attributes(address_id:id)
       redirect_to orders_path
    else
         render 'new'     
	end
	end
	def address
		 params.require(:address).permit(:customer_id,:country,:city,:address,:pincode)
	end
	def sort
		i=0
		params[:uploads].each do |id|
     order=Order.find(id)
     order.position = i+1
     order.save
      i= i+1
		end
    render :nothing => true
	end

	def show
		@order=Order.find(params[:id])
	end
	def edit
		
	end
	def updaet
		
	end
	def destroy
		@product = Order.find( params[:id])
		@product.destroy
		redirect_to orders_path
	end
	def order_params
        params.require(:order).permit(:customer_id,:address_id ,:product_ids => [],products_orders_attributes:[:product_id,:customer_id,:quantity,:price, :total_price])
	end
	
end
