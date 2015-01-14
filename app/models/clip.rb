class Clip < ActiveRecord::Base
	has_many :favorite_clips
	has_many :favorited_by, through: :favorite_clips, source: :user



end
