class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.date :date
      t.text :content
      t.integer :user_id
      t.integer :review_id
    end
  end
end
