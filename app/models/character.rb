class Character < ActiveRecord::Base
  has_many :combos
  has_many :moves

end
