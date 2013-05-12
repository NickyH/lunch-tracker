# == Schema Information
#
# Table name: visits
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  restaurant_id :integer
#

class Visit < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
end
