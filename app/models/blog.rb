class Blog < ApplicationRecord
  
  mount_uploader :photo,ImageUploader
  
  belongs_to :user
end