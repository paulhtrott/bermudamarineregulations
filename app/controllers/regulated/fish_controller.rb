class Regulated::FishController < ApplicationController

  def index
    @fishes = Fish.regulated.order_by_name
  end

  def show
    @fish = Fish.find(params[:id])
  end
end
