class ComboItemsController < ApplicationController

	def new
		@character = Character.find(params[:character_id])
		@combo = Combo.find(params[:combo_id])
		@combo_items = @combo.combo_items
	end

	def create
		@move = Move.find(params[:move_id])
		@character = Character.find(@move.character)
		@combo = Combo.find(params[:combo_id])
		@combo_items = @combo.combo_items
		if @combo_items.length > 0
			 last_move = @combo_items[0].move
		end
		@combo_item = @combo.combo_items.build(:move_id => @move.id, :position => @combo_items.length)
		valid = true

		if @combo_items.length > 1 
			case @move.move_type
				when 'normal'
				
					if last_move.hitAdv < @move.startUp
						valid = false
					end
				when 'special'
					unless last_move.isSpecialCancelable
						valid = false
					end
				when 'super' 
					unless last_move.isSuperCancelable
						valid = false
					end
			end
		end

		if valid and @combo_item.save
			redirect_to character_combo_path(@combo.character, @combo)
		else
			render 'new'
		end
	
	end



end
