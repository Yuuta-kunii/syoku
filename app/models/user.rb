class User < ApplicationRecord
  
  VALID_EMAIL_REGEX=/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  VALID_PASSWORD_REGEX=/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]{8,100}+\z/
 
  validates :name,presence: true
  validates :email,presence: true,format: {with: VALID_EMAIL_REGEX}
  validates :password,presence: true,length: {in: 8..32},format:{with: VALID_PASSWORD_REGEX, message: "は半角6~12文字英大文字・小文字・数字それぞれ１文字以上含む必要があります"}
  
  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics,through: :favorite,source: 'topic'
  has_many :blogs
  
  
end
