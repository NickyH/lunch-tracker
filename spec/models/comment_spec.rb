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

require 'spec_helper'

describe Comment do
  describe '.new' do
    it 'creates an instance of Comment' do
      comment = Comment.new
      expect(comment).to be_an_instance_of(Comment)
    end
  end

end
