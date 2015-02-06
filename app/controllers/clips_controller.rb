class ClipsController < ApplicationController
	before_action :authenticate_user!, only: [:favorite, :unfavorite , :vote]
	before_action :set_clip, only: [:show, :favorite, :unfavorite, :vote, :add_comment]

	def index
		@clips = Clip.on_main.order('created_at DESC').page(params[:page])
	end

	def new
		@clip = Clip.new
	end

	def show
	end

	def add_comment
    	@clip.comments << Comment.create(user_id: current_user.id, comment: params[:comm])
    	redirect_to clip_path(@clip)
	end

	def create
		clip = Clip.new(clip_params)
		current_user.clips << clip
		clip.clip_categories << ClipCategory.create(clip_id: clip.id, category_id: params[:category_ids])
	end

	def search
	end
 
	def search_results
  		@clips = Clip.where("name LIKE ?", "%#{params[:phrase]}%").page(params[:page])
	end

	def waitings
		@clips = Clip.waitings.order('created_at DESC').page(params[:page])
	end

	def today
		@clips = Clip.newer_than(Date.today).order('counter DESC').page(params[:page])
	end

	def last_week
		@clips = Clip.newer_than(Date.today-7).order('counter DESC').page(params[:page])
	end

	def last_month
		@clips = Clip.newer_than(Date.today-30).order('counter DESC').page(params[:page])
	end

	def show
		@clips = Clip.where(name: params[:name]).page(params[:page])
	end

	def find
		 @clip = current_user.favorites.where(clip_id: params[:id])
	end

	def favorite
		act = params[:act]
		if act == "favorite"
   		current_user.favorites << @clip
   		render :json => { :success => true}
   		elsif act == "unfavorite"
   		current_user.favorites.delete(@clip)
   		redirect_to user_favorites_path(current_user)
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
		params.require(:clip).permit(:name, :counter, :URL, :confirmed, category_ids: [])
	end

	private 
	def set_clip
		@clip = Clip.find(params[:id])
	end

end