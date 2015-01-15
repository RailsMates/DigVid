class ClipsController < ApplicationController
	before_action :set_clip, only: [:favorite, :unfavorite]

	def index
		@clips = Clip.paginate(:page => params[:page])
	end

	def pick
	end

	def search
	end

	def pick
	end

	def show
	end

	def top	
	end

	def cat_top
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


	def update
		
	end

	private 
	def set_clip
		@clip = Clip.find(params[:id])
	end
end