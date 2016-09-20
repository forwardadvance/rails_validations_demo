class ShipsController < ApplicationController

  before_filter :get_ships, only: [:index]
  before_filter :get_ship, only: [:show, :edit, :update]

  def index
      @ships = Ship.all
  end

  def show
    @ship = Ship.find params[:id]
  end

end
