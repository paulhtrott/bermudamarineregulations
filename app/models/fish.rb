class Fish < ApplicationRecord

  scope :fish_with_regulations, -> { where("minimum_size != ? OR bag_limit != ?", "no minimum", "no limit") }
  scope :order_by_name, -> { order(:name) }

  def img_path
    "marine/fish/#{name.downcase.gsub(/\s+/, '')}.jpg"
  end
end
