# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  date          :date
#  content       :text
#  value_rating  :integer          default(0)
#  user_id       :integer
#  restaurant_id :integer
#

class Review < ActiveRecord::Base
  attr_accessible :date, :content, :value_rating
  has_many :comments
  belongs_to :user
  belongs_to :restaurant
  has_and_belongs_to_many :tags
end
