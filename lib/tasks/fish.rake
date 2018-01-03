namespace :fish do

  desc "get the images from image source"
  task get_images: :environment do
    FishImageJob.get_all_images interactive: true
  end

  desc "get the images from image source for empty image_paths"
  task get_missing_images: :environment do
    FishImageJob.get_missing_images interactive: true
  end
end
