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
    @tags = params[:tags].uniq if params[:tags].present?
    if !params[:name].nil?
      restaurant = Restaurant.create(name:params[:name], address:params[:address])
      if !@tags.nil?
        @tags.each do |tag|
          new_tag = Tag.create(:name => tag)
          restaurant.tags << new_tag
        end
      end
      restaurant.save
    end
    @restaurants = Restaurant.order(:name)
  end
  def destroy
    Restaurant.find(params[:id]).destroy
    @restaurants = Restaurant.order(:name)
    render :update
  end
  def update
    restaurant = Restaurant.find(params[:id])
    restaurant.update_attributes(:name => params[:name], :address => params[:address])
    @restaurants = Restaurant.order(:name)
  end
  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  def filter
    if params[:tag_id].present?
      tag = Tag.find(params[:tag_id])
      @restaurants = tag.restaurants
    end
    if params[:cuisine].present?
      @restaurants = Restaurant.where(:cuisine => params[:cuisine])
    end
  end
  def value
    @restaurants = Restaurant.order(:value_rating).reverse
  end
  def distance
    @restaurants = Restaurant.all
    hash = Hash.new
    @restaurants.each do |restaurant|
      hash[restaurant.distance_from_user(@auth.address)] = restaurant
    end
    @restaurants = hash.sort_by {|key, value| value }.map!{|a| a[1]}
  end
def search
  query = params[:query]
  @restaurants = Restaurant.where("name @@ :q or cuisine @@ :q", :q => query)
  render :filter
end
def toggle_thumb
  restaurant = Restaurant.find(params[:id])
  if restaurant.thumbs_down == false
    restaurant.thumbs_down = true
  else
    restaurant.thumbs_down = false
  end
  restaurant.save
  @restaurants = Restaurant.order(:name)
  render :index
end
end
