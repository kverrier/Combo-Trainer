class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation

  validates_presence_of :username
  validates :username, :uniqueness => true
  has_secure_password
  validates_presence_of :password, :on => :create

  has_many :combos
end
