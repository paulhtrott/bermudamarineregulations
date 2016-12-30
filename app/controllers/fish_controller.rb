class FishController < ApplicationController

  def index
    @fish_with_regulations = Fish.fish_with_regulations.order_by_name
  end

  def show
    @fish = Fish.find(params[:id])
  end
end
