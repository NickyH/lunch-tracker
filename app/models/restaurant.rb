# == Schema Information
#
# Table name: restaurants
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  address      :string(255)
#  cuisine      :string(255)
#  lat          :float
#  long         :float
#  value_rating :integer
#

class Restaurant < ActiveRecord::Base
  attr_accessible :name, :address, :cuisine, :lat, :long, :value_rating
  has_many :visits
  has_many :reviews
  has_and_belongs_to_many :tags
  before_save :geocode
  private
  def geocode
    result = Geocoder.search(self.address).first

    if result.present?
      self.lat = result.latitude
      self.long = result.longitude
    end
  end
end
