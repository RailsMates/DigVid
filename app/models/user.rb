class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favorite_clips
  has_many :favorites, through: :favorite_clips, source: :clip
end
