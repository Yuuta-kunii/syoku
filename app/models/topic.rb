class Topic < ApplicationRecord
  
  validates :user_id,presence: true
  validates :image,presence: true
  validates :description,presence: true
  
  mount_uploader :image,ImageUploader
  
  belongs_to :user
  
  has_many :favorites
  has_many :favorite_users,through: :favorite,source: 'user'

end
