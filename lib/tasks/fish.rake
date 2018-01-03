namespace :fish do

  desc "get the images from image source"
  task get_images: :environment do
    FishImageJob.get_all_images interactive: true
  end
end
