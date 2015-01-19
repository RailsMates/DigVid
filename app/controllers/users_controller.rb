class UsersController < ApplicationController
<<<<<<< Updated upstream
	before_action :set_user, only: [:create_friendship]
=======
	before_action :set_user, only: [:show, :create_friendship]
>>>>>>> Stashed changes

	def index
		@users = User.all
	end
<<<<<<< Updated upstream
=======

	def show
	end
>>>>>>> Stashed changes

	def favorites
		@clips = current_user.favorites
	end

<<<<<<< Updated upstream
	def show
		@friends = current_user.friends
	end

	def friendship
		@friends = current_user.friends
	end

=======
>>>>>>> Stashed changes
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

<<<<<<< Updated upstream


	private 
	def set_user
		@user = User.find(params[:id])
=======
	private 
	def set_user
		@user = User.friendly.find(params[:id])
>>>>>>> Stashed changes
	end
end