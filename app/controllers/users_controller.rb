class UsersController < ApplicationController

	def favorites
		@clips = current_user.favorites
	end

	def show
	end
end