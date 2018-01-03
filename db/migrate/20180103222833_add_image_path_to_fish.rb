class AddImagePathToFish < ActiveRecord::Migration[5.0]
  def change
    add_column :fish, :image_path, :string
  end
end
