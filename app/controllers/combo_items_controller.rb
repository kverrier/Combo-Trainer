class ComboItemsController < ApplicationController

	def new
		@character = Character.find(params[:character_id])
		@combo = Combo.find(params[:combo_id])
		@combo_items = @combo.combo_items
		
		@moves = @combo.next_moves
		@normals 	= @moves.find_all{|m| m.move_type == 'normal' } 
		@specials = @moves.find_all{|m| m.move_type == 'special' } 
		@supers 	= @moves.find_all{|m| m.move_type == 'super' }	

	end

	def create
		@move = Move.find(params[:move_id])
		@character = Character.find(@move.character)
		@combo = Combo.find(params[:combo_id])
		@combo_items = @combo.combo_items

		valid_moves = @combo.next_moves
		@combo_item = @combo.combo_items.build(:move_id => @move.id, :position => @combo_items.length)

		if valid_moves.include?(@combo_item.move) and @combo_item.save
			redirect_to combo_path(@combo)
		else
			render 'new'
		end
	
	end



end
