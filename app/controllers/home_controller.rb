class HomeController < ApplicationController
  def index
    @restaurants = Restaurant.order(:name)
    @tags = Tag.all
  end
end