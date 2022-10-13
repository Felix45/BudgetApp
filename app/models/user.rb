class User < ApplicationRecord
  mount_uploader :profile_picture, ProfilePictureUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bills, foreign_key: 'author_id'
  has_many :groups
end
