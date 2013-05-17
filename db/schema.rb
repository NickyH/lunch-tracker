# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130511225739) do

  create_table "comments", :force => true do |t|
    t.date    "date"
    t.text    "content"
    t.integer "user_id"
    t.integer "review_id"
  end

  create_table "restaurants", :force => true do |t|
    t.string  "name"
    t.string  "address"
    t.string  "cuisine"
    t.boolean "thumbs_down",  :default => false
    t.float   "lat"
    t.float   "long"
    t.integer "value_rating"
  end

  create_table "restaurants_tags", :id => false, :force => true do |t|
    t.integer "tag_id"
    t.integer "restaurant_id"
  end

  create_table "reviews", :force => true do |t|
    t.date    "date"
    t.text    "content"
    t.integer "value_rating",  :default => 0
    t.integer "user_id"
    t.integer "restaurant_id"
  end

  create_table "reviews_tags", :id => false, :force => true do |t|
    t.integer "tag_id"
    t.integer "review_id"
  end

  create_table "tags", :force => true do |t|
    t.string  "name"
    t.integer "restaurant_id"
    t.integer "review_id"
  end

  create_table "users", :force => true do |t|
    t.string  "email"
    t.string  "name"
    t.string  "password_digest"
    t.float   "lat"
    t.float   "long"
    t.text    "address"
    t.boolean "is_admin",        :default => false
  end

  create_table "visits", :force => true do |t|
    t.integer "user_id"
    t.integer "restaurant_id"
  end

end
