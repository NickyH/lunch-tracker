class CommentsController < ApplicationController
  def show
    @comments = Comment.where(:review_id => params[:id])
    @review = Review.find(params[:id])
  end
  def destroy
  end
  def new
    @review = Review.find(params[:review_id])
  end
  def create
    comment = Comment.create(content: params[:content])
    @review = Review.find(params[:review_id])
    @review.comments << comment
    @restaurants = Restaurant.order(:name)
    render 'restaurants/index'
  end
end