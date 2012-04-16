class CombosController < ApplicationController
  before_filter :signed_in_user, :only => [:new, :create]

  def show
    @combo = Combo.find(params[:id])
    @user = @combo.user
    @character = @combo.character
    @combo_items = @combo.combo_items(:order => :position)
    @next_moves = @combo.next_moves
    @startUps = @combo.start_ups
    @connections = @combo.connections
  end

  def new
    @combo = Combo.new
  end

  def create
    @user = current_user
    @combo = @user.combos.build(params[:combo])
    if @combo.save
      redirect_to combo_path(@combo)
    else
      render 'new'
    end
  end

  def index
    @characters = Character.all
  end
end
