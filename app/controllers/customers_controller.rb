class CustomersController < ApplicationController

    load_and_authorize_resource
    
	def index
	  @user = session[:userinfo]
	  @customer = Customer.all.page params[:page]
	end
	def new
  	  @customer.addresses.build
	end
	
	  def move
	    @thing = Thing.find(params[:id])
	    @thing.move_to! params[:position]
	  end
	def create
	  if @customer.save
	  	redirect_to customers_path
      else
   	    render 'new'
      end
	end
	def show
	
	end
	def edit
		
	end
	def update
		
		@customer.update!(customer_params)
		redirect_to customers_path
		
	end
	def destroy
		
		@customer.destroy
		redirect_to customers_path
		
	end
	def customer_params
		params[:customer][:addresses_attributes]["0"].merge!(billing_address: true)
		params.require(:customer).permit(:name,:phone, :last_name,:email,:telephone,addresses_attributes:[:country,:city, :address,:pincode, :billing_address])
	end
end
