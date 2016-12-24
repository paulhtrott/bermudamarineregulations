class FishController < ApplicationController

  def index
    @fish_with_regulations = Fish.where("minimum_size != 'no minimum' OR bag_limit !=  'no limit'").order(:name)
  end

  def show
    @fish = Fish.find(params[:id])
  end
end
