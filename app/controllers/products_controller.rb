class ProductsController < ApplicationController
	
  before_filter :authenticate_user!
  load_and_authorize_resource

	def index
		@product = Product.all.page params[:page]
	end
	def new
		@product=Product.new
	end
	def create
		if @product.save
			flash[:notice]="product is created"
		redirect_to	products_path
	    else
	    	flash[:notice]="product is created"
	    	redirect_to products_path
        end
	end
	def show
	end
	def edit
	end
	def update
		
	    @product.update!(product_params)
        redirect_to products_path
	end
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
	
		redirect_to products_path
		
	end
	def product_params
	 params.require("product").permit(:name, :price,:brand, :color,:quantity)
	end
end
