class UsersController < ApplicationController
  def new
  end
  def validate_user_address
    address_to_validate = params[:query]
    @found_user_address = User.validate_user_address(address_to_validate)
  end
  def create
    user = User.create(name:params[:name], email:params[:email], password:params[:password], password_confirmation:params[:password_confirmation], address:params[:address])
  end
end