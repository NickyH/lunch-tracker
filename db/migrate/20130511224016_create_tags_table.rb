class CreateTagsTable < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :restaurant_id
      t.integer :review_id
      t.string :tag_symbol
    end
  end
end
