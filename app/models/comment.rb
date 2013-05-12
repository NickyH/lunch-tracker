# == Schema Information
#
# Table name: comments
#
#  id        :integer          not null, primary key
#  date      :date
#  content   :text
#  user_id   :integer
#  review_id :integer
#

class Comment < ActiveRecord::Base
  attr_accessible :date, :content
  belongs_to :user
  belongs_to :review
end
