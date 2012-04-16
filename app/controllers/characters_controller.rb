class CharactersController < ApplicationController

  def show
  	@character = Character.find(params[:id])
  	@combos = @character.combos
  end

  def index
  	@characters = Character.all
  end

end
