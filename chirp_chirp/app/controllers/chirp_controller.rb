class ChirpController < ApplicationController
	WillPaginate.per_page = 10

	def index
		@chirps = Chirp.paginate(:page => params[:page]).order('id DESC')

		render 'index'
	end

	def create
		@num = Random.new.rand(1..4)
		#@user = User.where(id: session[:user_id]).first
		Chirp.create(
			chirp: params[:chirp],
			pic: @num.to_i,
			user_id: session[:user_id]
		)
		redirect_to "/feed"
	end

	def show
		@chirp = Chirp.find(params[:id])

		render 'edit'
	end

	def update
		chirp = Chirp.find(params[:id])

		if params[:delete_button]
			chirp.destroy
		else
			chirp.update(
				chirp: params[:chirp]
			)
		end
		redirect_to "/feed"
	end

	def logout
		if params[:logout_button]
			session[:user_id] = false
			redirect_to "/"
		end
	end
end
