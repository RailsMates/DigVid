class Category < ActiveRecord::Base
	has_many :clip_categories
	has_many :list_of_clips, through: :clip_categories, source: :clip

end
