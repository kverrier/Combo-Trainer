class Move < ActiveRecord::Base
	has_many :combo_items
	has_many :combos, :through => :combo_items

	belongs_to :character
end
