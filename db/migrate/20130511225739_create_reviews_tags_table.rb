class CreateReviewsTagsTable < ActiveRecord::Migration
  def change
    create_table :reviews_tags, :id => false do |t|
      t.integer :tag_id
      t.integer :review_id
    end
  end
end
