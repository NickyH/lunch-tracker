class ReviewsController < ApplicationController
  def index
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
end