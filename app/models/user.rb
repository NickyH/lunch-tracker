# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)
#  password_digest :string(255)
#  lat             :float
#  address         :text
#  is_admin        :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :location, :is_admin
  has_many :visits
  has_many :reviews
  has_many :comments
  has_secure_password
  validates :email, :uniqueness => true
end
