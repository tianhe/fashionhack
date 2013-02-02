class UserController < ApplicationController
  def create
  	@user = User.create(email: params[:email], zipcode: params[:zipcode], phone: params[:phone])
  end

  def new
  end
end
