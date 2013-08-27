class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  before_save { self.email.downcase! }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates(:email, presence: true, uniqueness: {case_sensitive: false}, 
  	                                             format: { with: VALID_EMAIL_REGEX})
  validates(:name, presence: true, uniqueness: true)
end
