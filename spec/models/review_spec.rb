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

require 'spec_helper'

describe Review do
  describe '.new' do
    it 'creates an instance of Review' do
      review = Review.new
      expect(review).to be_an_instance_of(Review)
    end
  end

describe '#comments' do
  it 'has comments' do
    comment = Comment.new
    review = Review.new
    review.comments << comment
    expect(review.comments.first).to be_an_instance_of(Comment)
    end
  end

end
