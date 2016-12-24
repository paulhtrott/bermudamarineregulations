class FishController < ApplicationController

  def index
    @fishes = [ "Yellowfin Tuna", "Blue Marlin", "Yellowmouth Grouper" ]
  end
end
