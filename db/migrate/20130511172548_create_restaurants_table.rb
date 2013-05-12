class CreateRestaurantsTable < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :cuisine
      t.float :lat
      t.float :long
      t.integer :value_rating
    end
  end
end
