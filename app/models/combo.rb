class Combo < ActiveRecord::Base
	  attr_accessible :name, :submitter

	  belongs_to :character
	  has_many :combo_items
	  has_many :moves, :through => :combo_items

	  validates :name, :presence => true, :length => { :maximum => 64 }
  	validates :submitter, :presence => true, :length => { :maximum => 64 }

end
