class FishImageJob < ApplicationJob

  def self.get_all_images(interactive: false)
    puts "getting images" if interactive
    puts "getting species from db" if interactive
    Fish.pluck(:id,:species).each { |fish|
      perform_now fish, interactive
    }
  end

  def self.get_missing_images(interactive: false)
    puts "getting images" if interactive
    puts "getting species with missing images from db" if interactive
    Fish.where(image_path: nil).pluck(:id,:species).each { |fish|
      perform_now fish, interactive
    }
  end

  def perform(fish, interactive)
    fish_to_update = Fish.find(fish[0])
    puts "searching for #{fish[1]} (#{fish[0]})" if interactive
    fish_param = { q: fish[1], tbm: "isch" }.to_param
    url = "https://www.google.com/search?#{fish_param}"
    response = HTTParty.get url
    page = Nokogiri::HTML(response)
    img_tag = "img[alt='Image result for #{fish[1].strip}']"
    image_src = page.css(img_tag).first.attr('src') if page.css(img_tag).first.present?
    puts image_src if image_src.present? && interactive
    puts "image not found" unless image_src.present?
    fish_to_update.update(image_path: image_src) if image_src.present? && interactive
  end
end
