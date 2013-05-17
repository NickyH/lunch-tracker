class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.float :lat
      t.float :long
      t.text :address
      t.boolean :is_admin, :default => false
    end
  end
end
