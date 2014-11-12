class LoginController < ApplicationController
	def index
		if !session[:user_id]
			render 'index'
		else
			redirect_to "/feed"
		end
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

				redirect_to "/"
			end
		else
			flash[:error]= "User not found"

			redirect_to "/"
		end

	end

	def logout
		if params[:logout_button]
			session[:user_id] = false
			redirect_to "/"
			flash[:success] = "User is not authenticated"
		end
	end

end
