class HomeController < ApplicationController
  def index
    @restaurants = Restaurant.order(:name)
  end
end