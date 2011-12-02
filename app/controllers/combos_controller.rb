class CombosController < ApplicationController

	def show
		@character = Character.find(params[:character_id])
		@combo = Combo.find(params[:id])
		@combo_items = @combo.combo_items(:order => :position)
		@next_moves = @combo.next_moves
		@startUps = @combo.start_ups
		@connections = @combo.connections
	end

	def new
		@character = Character.find(params[:character_id])
		@combo = @character.combos.build
		@combo_item  = @combo.combo_items.build
		@combo_items = @combo.combo_items
	end

	def create
		@character = Character.find(params[:character_id])
    @combo = @character.combos.build(params[:combo])
    if @combo.save
    	redirect_to character_combo_path(@character, @combo)
    else
      render 'new'
    end 
  end
end
