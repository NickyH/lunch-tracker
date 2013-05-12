class CreateReviewsTable < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.date :date
      t.text :content
      t.boolean :thumbs_down, :default => false
      t.integer :value_rating, :default => 0
      t.integer :user_id
      t.integer :restaurant_id
    end
  end
end
