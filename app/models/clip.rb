class Clip < ActiveRecord::Base
	# before_create :set_default

	has_many :favorite_clips
	has_many :favorited_by, through: :favorite_clips, source: :user

	has_many :clip_categories
	has_many :categories, through: :clip_categories, source: :category

	has_many :liked_clips
	has_many :users, through: :liked_clips, source: :user

	belongs_to :user

	# def set_default
	# 	self[:confirmed] = false
	# end
	self.per_page = 10

	scope :waitings, -> { where(("counter < 10 AND confirmed = ?"), true) }
	scope :on_main, -> { where("counter >= 10 ") }
	scope :newer_than, ->(date) { where("created_at >= ?", date) }
	

end
