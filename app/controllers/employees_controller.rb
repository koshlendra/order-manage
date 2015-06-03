class EmployeesController < ApplicationController
	
   load_and_authorize_resource :user ,:parent => false


	 def index
        @users = User.all.page params[:page]
     end
     def new
          end
     def create
	
		if @user.save
		   redirect_to employees_path
	    else
	   	   redirect_to employees_path
	    end		
	   
    end	
    def show
					
	end
	def edit

	end
	def update
		
		@user.update!(user_params)
		redirect_to employees_path
		
	end
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to employees_path
		
	end
	def user_params
		params.require(:user).permit(:first_name,:last_name, :email, :password, :password_confirmation,:city,:address,:pincode,:phone, :avatar)
		
	end
end
