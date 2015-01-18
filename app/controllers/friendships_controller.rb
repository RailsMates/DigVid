class FriendshipsController < ApplicationController
		before_action :set_user, only: [:create_friendship]

	def create
		 	current_user.friends << @user
			respond_to do |format|
      		format.html { redirect_to :back }
      		format.json { head :no_content }
   		end
  end

  	def index
		# @friends = current_user.friends
	end

  private 
	def set_user
		@user = User.find(params[:id])
	end
end
