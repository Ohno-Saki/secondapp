class User < ApplicationRecord
  has_many:rooms
  has_many:reservations, through: :authorizations
  has_many:authorizations
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :user_name, presence: true
  validates :user_introduction, length: {maximum: 200}
  
  mount_uploader :user_image, UserimageUploader
end
