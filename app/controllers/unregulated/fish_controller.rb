class Unregulated::FishController < ApplicationController

  def index
    @fishes = Fish.unregulated.order_by_name
  end

  def show
    @fish = Fish.find(params[:id])
  end
end
