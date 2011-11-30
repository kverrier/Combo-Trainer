class CombosController < ApplicationController
	def index
		@combos = Combo.find(:all, :order => 'votes')
	end

	def show
		@character = Character.find(params[:character_id])
		@combo = Combo.find(params[:id])
		@combo_items = @combo.combo_items(:order => :position)
		@startUps = []
		@connections = []

		if (@combo_items.length > 1)
			(0..(@combo_items.length-2)).each do |i|
				m = @combo_items[i].move

				if (@combo_items[i+1].move.move_type == "normal")
					@startUps << (m.startUp + m.hit + m.recovery - 1)
					@connections << (m.hitAdv)
				else
					@startUps << (m.startUp + m.hit - 1)
					@connections << (m.recovery)
				end
			end
		end

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
