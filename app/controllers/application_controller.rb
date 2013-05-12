class ApplicationController < ActionController::Base
  before_filter :authenticate
  protect_from_forgery

  private
  def authenticate
    @auth = (session[:user_id].present?) ? User.find(session[:user_id]) : nil
  end
  def check_if_admin
    redirect_to(root_path) if @auth.nil? || !@auth.is_admin
  end

  def check_if_logged_in
    if @auth.nil?
      redirect_to(root_path)
    end
  end

end