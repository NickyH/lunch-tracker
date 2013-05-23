class ReviewsController < ApplicationController
  def index
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
  def create
    if params[:value_rating] == ''
      value_rating = 5
    else
      value_rating = params[:value_rating].to_i
    end
    review = Review.create(content:params[:content], value_rating:value_rating)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.update_average_value(value_rating)
    @restaurant.reviews << review
    @restaurants = Restaurant.order(:name)
    render 'restaurants/index'
  end
end