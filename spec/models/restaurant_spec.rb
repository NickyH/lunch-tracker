# == Schema Information
#
# Table name: restaurants
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  address      :string(255)
#  cuisine      :string(255)
#  thumbs_down  :boolean          default(FALSE)
#  lat          :float
#  long         :float
#  value_rating :integer
#

require 'spec_helper'

describe Restaurant do
  describe '.new' do
    it 'creates an instance of Restaurant' do
      restaurant = Restaurant.new
      expect(restaurant).to be_an_instance_of(Restaurant)
    end
  end

describe '.create' do
    it 'has a name' do
      restaurant = Restaurant.create(name: 'Hundred Acres')
      expect(restaurant.id).to_not be nil
    end
    it 'fails validation if name is blank' do
      restaurant = Restaurant.create
      expect(restaurant.id).to be nil
    end
  end

describe '#reviews' do
  it 'has reviews' do
    review = Review.new
    restaurant = Restaurant.new
    restaurant.reviews << review
    expect(restaurant.reviews.first).to be_an_instance_of(Review)
    end
  end

end

