class CreateRestaurantsTagsTable < ActiveRecord::Migration
  def change
    create_table :restaurants_tags, :id => false do |t|
      t.integer :tag_id
      t.integer :restaurant_id
    end
  end
end