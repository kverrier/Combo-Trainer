class Move < ActiveRecord::Base
	has_many :combo_items
	has_many :combos, :through => :combo_items

	belongs_to :character

	def isNormal
		move_type == 'normal'
	end

	def isSpecial
		move_type == 'special'
	end

	def isSuper
		move_type == 'super'
	end

	def combos_into? next_move
		case next_move.move_type
  	when 'normal'
  		combos = isNormal and hitAdv >= next_move.startUp
  	when 'special'
			combos = isSpecialCancelable and next_move.startUp <= recovery
  	when 'super'
			combos = isSuperCancelable and next_move.startUp <= recovery
  	end

		combos
  end
end
