class UsersController < ApplicationController
  def create
    user = User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully Created Account!"
      redirect_to '/contacts'
    elsif flash[:warning] = "Invalid email or password."
      redirect_to '/signup'
    end
  end
end
