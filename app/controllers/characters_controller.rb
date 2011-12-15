class CharactersController < ApplicationController
  before_filter :require_login
  def show
  	@character = Character.find(params[:id])
  	@combos = @character.combos
  end

  def index
  	@characters = Character.all
  end


end
