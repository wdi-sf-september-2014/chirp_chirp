class LoginController < ApplicationController
	def index
		render 'index'
	end

	def authenticate
		user = User.where(username: params[:username]).first

		if user
			if user.authenticate(params[:password])
				#puts "User is approved"
				flash[:success] = "User is authenticated"
				session[:user_id] = user.id
				redirect_to "/feed"
			else
				flash[:error]= "Password is incorrect"

				redirect_to "/login"
			end
		else
			flash[:error]= "User not found"

			redirect_to "/login"
		end
	end

	def logout
		if params[:logout_button]
			session[:user_id] = false
			redirect_to "/login"
		end
	end
end
