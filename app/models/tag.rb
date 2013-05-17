# == Schema Information
#
# Table name: tags
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  restaurant_id :integer
#  review_id     :integer
#  tag_symbol    :string(255)
#

class Tag < ActiveRecord::Base
  attr_accessible :name, :tag_symbol
  has_and_belongs_to_many :restaurants
  has_and_belongs_to_many :reviews
  validates :name, :uniqueness => true
end
