class User < ApplicationRecord
  
  #VALID_PASS_REGEX = /\A(?=.*?[a-z])[a-z\d]+\z/
  VALID_PASS_REGEX = /\A(?=.?[a-z])(?=.*?\d)[a-z\d]{8,32}/
  VALID_MAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/
  
  validates :name, presence: true, length:{maximum:15}
  validates :email, presence: true, format: {with: VALID_MAIL_REGEX}
  validates :password, presence: true, format: {with: VALID_PASS_REGEX}
  
  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
  has_many :comments
  has_many :comments_topics, through: :comments, source: 'topic'
end
