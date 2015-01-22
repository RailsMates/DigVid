class User < ActiveRecord::Base
  validates :gender, :inclusion => %w(Male Female)
  validates :name, presence: true, length: { minimum: 2 }
  validates :username, presence: true, uniqueness: true


  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_email 

  extend FriendlyId
  friendly_id :username, use: :slugged
  
  has_many :favorite_clips
  has_many :favorites, through: :favorite_clips, source: :clip

  has_many :friendships
  has_many :friends, :through => :friendships 

  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  has_many :liked_clips
  has_many :clips, through: :liked_clips, source: :clip

  has_many :clips

  def to_s
    "#{username}"
  end

  private

  def send_welcome_email
      UserMailer.welcome_email(self).deliver
  end 
  
end
