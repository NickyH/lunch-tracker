class SessionController < ApplicationController
  def new

  end
  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      session[:user_id] = nil
      flash[:notice] = 'Incorrect Login, try again.'
    end
    authenticate
    redirect_to :back
  end
  def destroy
    session[:user_id] = nil
    @restaurants = Restaurant.order(:name)
    authenticate
  end
end

