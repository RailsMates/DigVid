class CategoriesController < ApplicationController
	before_action :set_category, only: [:show]
	
	def show
		@clips = @category.list_of_clips.order('created_at DESC').page(params[:page])
	end 

	private
	def set_category
		@category = Category.find(params[:id])
	end
end