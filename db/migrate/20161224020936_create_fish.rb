class CreateFish < ActiveRecord::Migration[5.0]
  def change
    create_table :fish do |t|
      t.string :order
      t.string :family
      t.string :species
      t.string :occurrence
      t.string :name
      t.string :alt_name
      t.string :minimum_size
      t.string :bag_limit

      t.timestamps
    end
  end
end
