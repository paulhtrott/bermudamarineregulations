class RemoveImgUrlFromFish < ActiveRecord::Migration[5.0]
  def change
    remove_column :fish, :img_url, :string
  end
end
