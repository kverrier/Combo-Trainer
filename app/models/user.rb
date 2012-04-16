class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation

  has_many :combos

  has_secure_password

  validates_presence_of :username
  validates :username, :uniqueness => true
  validates_presence_of :password, :on => :create


  before_save :create_remember_token

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end



