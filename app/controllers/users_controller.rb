class UsersController < ApplicationController
	before_action :set_user, only: [:show, :friendship]

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

	def friendship
		act = params[:act]
		if act == "create"
			current_user.friends << @user
			respond_to do |format|
      		format.html { redirect_to :back, notice: "#{@user.username} added to your friend list." }
      		format.json { head :no_content }
      	end
      	elsif act == "destroy"
      		current_user.friends.delete(@user)
      		 respond_to do |format|
      		format.html { redirect_to :back, notice: "#{@user.username} removed from your friend list." }
      		format.json { head :no_content }
      	end
		end
	end

	def set_user
		@user = User.friendly.find(params[:id])
	end
end