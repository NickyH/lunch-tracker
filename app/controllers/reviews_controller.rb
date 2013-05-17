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
    review = Review.create(content:params[:content])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant.reviews << review
    @restaurants = Restaurant.order(:name)
    render 'restaurants/index'
  end
end