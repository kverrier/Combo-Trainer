class ComboItem < ActiveRecord::Base
	belongs_to :combo
	belongs_to :move
end
