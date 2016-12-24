class FishController < ApplicationController

  def index
    @fishes = Fish.all.order(:name)
    @fish_with_regulations = Fish.where("minimum_size != 'no minimum' OR bag_limit !=  'no limit'")
  end
end
