class ClipsController < ApplicationController
	before_action :authenticate_user!, only: [:favorite, :unfavorite , :vote]
	before_action :set_clip, only: [:favorite, :unfavorite, :vote, :show]

	def index
		@clips = Clip.paginate(:page => params[:page])
	end

	def new
		@clip = Clip.new
	end

	def create
		current_user.clips << Clip.new(clip_params)
	end

	def show
	end

	def find
		 @clip = current_user.favorites.where(clip_id: params[:id])
	end

	def favorite
		act = params[:act]
		if act == "favorite"
   		current_user.favorites << @clip
   		respond_to do |format|
      		format.html { redirect_to :back, notice: "#{@clip.name} added to favorites." }
      		format.json { head :no_content }
      	end
   		elsif act == "unfavorite"
   		current_user.favorites.delete(@clip)	
   		respond_to do |format|
      		format.html { redirect_to :root, notice: "#{@clip.name} removed from favorites." }
      		format.json { head :no_content }
		end
		else
		respond_to do |format|
      		format.html { redirect_to :root, notice: "#{@clip.name} removed from favorites." }
      		format.json { head :no_content }
		end
		end
	end

	def vote
		act = params[:act]
		if LikedClip.where(:user_id => current_user.id, :clip_id => @clip.id).blank?
			if act == "upvote"
				@clip.counter += 1
	   			elsif act == "downvote"
				@clip.counter -= 1
	   		end
	   	 @clip.save
	   	 current_user.liked_clips << LikedClip.create(user_id: current_user.id, clip_id: @clip.id)
	   	end
	end

	def update
		
	end

	def clip_params
		params.require(:clip).permit(:name, :URL)
	end

	private 
	def set_clip
		@clip = Clip.find(params[:id])
	end

end