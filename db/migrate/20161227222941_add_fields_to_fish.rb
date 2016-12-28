class AddFieldsToFish < ActiveRecord::Migration[5.0]
  def change
    add_column :fish, :img_url, :string
  end
end
