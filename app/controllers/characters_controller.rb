class CharactersController < ApplicationController
  def show
  	@character = Character.find(params[:id])
  	@combos = @character.combos
  end


end
