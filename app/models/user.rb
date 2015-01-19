class User < ActiveRecord::Base
  validates :gender, :inclusion => %w(Male Female)
  validates :name, presence: true, length: { minimum: 2 }
  validates :username, presence: true, uniqueness: true


  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  extend FriendlyId
  friendly_id :username, use: :slugged
  
  has_many :favorite_clips
  has_many :favorites, through: :favorite_clips, source: :clip

  has_many :friendships
  has_many :friends, :through => :friendships 

  has_many :liked_clips
  has_many :clips, through: :liked_clips, source: :clip

  has_many :clips
end
