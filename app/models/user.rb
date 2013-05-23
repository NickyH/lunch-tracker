# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)
#  password_digest :string(255)
#  lat             :float
#  long            :float
#  address         :text
#  is_admin        :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :address, :lat, :long, :is_admin
  has_many :visits
  has_many :reviews
  has_many :comments
  has_secure_password
  validates :email, :uniqueness => true

  def self.validate_user_address(address)
    valid_address = Geocoder.search(address).first
    short_address = []
    if valid_address.nil?
      short_address = 'none'
    else
      valid_address.address_components.each do |a|
        short_address << a["short_name"]
      end
    end
    return short_address
  end
  private

  def geocode
    result = Geocoder.search(self.address).first

    if result.present?
      self.lat = result.latitude
      self.long = result.longitude
    end
  end

end
