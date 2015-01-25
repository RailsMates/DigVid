class UsersController < ApplicationController
	before_action :set_user, only: [:show, :friendship]

	def index
		@users = User.all
	end

	def show
	end

	def favorites
		@clips = current_user.favorites.order('created_at DESC').page(params[:page])
	end

	def friends
		@friends = current_user.friends
	end

	def friendship
		act = params[:act]
		if act == "create"
			current_user.friends << @user
      	elsif act == "destroy"
      		current_user.friends.delete(@user)
		end
	end

	def set_user
		@user = User.friendly.find(params[:id])
	end
end