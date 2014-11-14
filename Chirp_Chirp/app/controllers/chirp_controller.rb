class ChirpController < ApplicationController
	

	def index
		@chirps=Chirping.paginate(:page => params[:page], :per_page => 3).order('id DESC')
		# Post.where(:published => true).paginate(:page => params[:page]).order('id DESC')
		# @posts = Post.paginate(:page => params[:page])
		# @chirps = Chirping.all
		render "index"
	end

	# anytime you are creating a method in the controller (this is the controller method for the POST ROUTE)
# names in our index.html.erb form in the input field is what we pass into the params.
def create 
	Chirping.create(name: params[:name])
	redirect_to "/"
end

# by convention, when you want to show one record, you use "show" --we use an instance variable to pull it outside the template
def show 
	@chirp = Chirping.find(params[:id])
	render "edit"
end

def edit
	chirp = Chirping.find(params[:id]) 

	if params[:delete_button]
		chirp.destroy
		redirect_to "/"
	else 
			# here, we find the chirp, then we update it, we don't need an instance variable here, a private variable "chirp" is sufficient 
			
			chirp.update(name: params[:name])
			redirect_to "/"
	end
end


end
