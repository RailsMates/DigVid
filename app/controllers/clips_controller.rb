class ClipsController < ApplicationController

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
end