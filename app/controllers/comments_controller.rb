class CommentsController < ApplicationController
  def show
  end
  def destroy
  end
  def new
    @review = Review.find(params[:review_id])
  end
  def create
  end
end