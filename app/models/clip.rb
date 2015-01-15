class Clip < ActiveRecord::Base
	has_many :favorite_clips
	has_many :favorited_by, through: :favorite_clips, source: :user

	has_many :clip_categories
	has_many :categories, through: :clip_categories, source: :category

	belongs_to :user
	
	self.per_page = 10

end
