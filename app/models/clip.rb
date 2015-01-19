class Clip < ActiveRecord::Base
	
	has_many :favorite_clips
	has_many :favorited_by, through: :favorite_clips, source: :user

	has_many :clip_categories
	has_many :categories, through: :clip_categories, source: :category

	has_many :liked_clips
	has_many :users, through: :liked_clips, source: :user
<<<<<<< Updated upstream
	
=======

	belongs_to :user

>>>>>>> Stashed changes
	self.per_page = 10

end
