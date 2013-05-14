class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.order(:name)
  end
  def new
    @restaurant = Restaurant.new
  end
  def validate_address
    address_to_validate = params[:query]
    @found_address = Restaurant.validate_address(address_to_validate)
  end

  def create
    restaurant = Restaurant.create(name:params[:name]) if params[:name].present?
    @restaurants = Restaurant.order(:name)
  end

  def filter
  tag = Tag.find(params[:tag_id])
  @restaurants = tag.restaurants
  end
  def search
  query = params[:query]
  @restaurants = Restaurant.where("name @@ :q", :q => query)
  render :filter
  end
end


# query = params[:query]
#     @quizzes = Quiz.where("name @@ :q", :q => query)

#     tags = Tag.where("name @@ :q", :q => query)
#     @quizzes += tags.map(&:quizzes).flatten

#     options = Option.where("answer @@ :q", :q => query)
#     @quizzes += options.map(&:exercise).compact.map(&:quiz).flatten

#      exercises = Exercise.where("question @@ :q", :q => query)
#     @quizzes += exercises.map(&:quiz).flatten

#     people = Person.where("name @@ :q", :q => query)
#     @quizzes += people.map(&:quizzes).flatten
#     @quizzes.uniq!