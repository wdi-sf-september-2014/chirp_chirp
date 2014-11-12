class ChirpController < ApplicationController
	def index
		@tweets = Cheerp.paginate(:page => params[:page], :per_page => 5).order('id DESC')
		render 'index'
	end
	def create
		bird =  ["/assets/birds/bird", Random.rand(4)+1, ".png"].join
		Cheerp.create(image: bird,tweet: params[:cheerp])

		redirect_to "/"
		
	end
	def editing
		@cheerp = Cheerp.find(params[:id])

		render 'edit'
	end
	def update
		editable = Cheerp.find(params[:id])

		if params[:delete_button]

			editable.destroy

			redirect_to "/"

		else 
			editable.update(tweet: params[:newtweet])

			redirect_to "/"
		end
		
	end

end




## render page links in the view:



