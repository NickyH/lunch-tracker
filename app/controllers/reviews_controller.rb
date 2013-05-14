class ReviewsController < ApplicationController
  def index
  end
  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end