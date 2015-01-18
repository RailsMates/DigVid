class ClipsController < ApplicationController
	before_action :authenticate_user!, only: [:favorite, :unfavorite , :upvote, :downvote]
	before_action :set_clip, only: [:favorite, :unfavorite, :upvote, :downvote]

	def index
		@clips = Clip.paginate(:page => params[:page])
	end


	def find
		 @clip = current_user.favorites.where(clip_id: params[:id])
	end

	def favorite
   		current_user.favorites << @clip
   		respond_to do |format|
      		format.html { redirect_to :back }
      		format.json { head :no_content }
   		end
	end

	def unfavorite
   		current_user.favorites.delete(@clip)	
   		respond_to do |format|
      		format.html { redirect_to :root }
      		format.json { head :no_content }
   		end
	end


	def upvote
	   if LikedClip.where(:user_id => current_user.id, :clip_id => @clip.id).blank?
	   	 @clip.counter += 1
	   	 @clip.save
	   	 current_user.liked_clips << LikedClip.create(user_id: current_user.id, clip_id: @clip.id)
	   end
	end

	def downvote
		if LikedClip.where(:user_id => current_user.id, :clip_id => @clip.id).blank?
	   	 @clip.counter -= 1 
	   	 @clip.save
	   	 current_user.liked_clips << LikedClip.create(user_id: current_user.id, clip_id: @clip.id)
	   end
	end

	def update
		
	end

	private 
	def set_clip
		@clip = Clip.find(params[:id])
	end
end