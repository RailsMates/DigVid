class UsersController < ApplicationController
	before_action :set_user, only: [:show, :create_friendship]

	def index
		@users = User.all
	end

	def show
	end

	def favorites
		@clips = current_user.favorites
	end

	def friends
		@friends = current_user.friends
	end

	def create_friendship
			current_user.friends << @user
			respond_to do |format|
      		format.html { redirect_to :back }
      		format.json { head :no_content }
		end
	end

	def set_user
		@user = User.friendly.find(params[:id])
	end
end