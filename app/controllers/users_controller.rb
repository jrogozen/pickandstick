class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find(params["id"])
  end

  def new
  end

  def create
    user = User.build_user(user_params)
    if user.save
      render json: user
    else
      nil
    end
  end

  def destroy
    session[:user_id] = nil
    render json: {}
  end

  private
  def user_params
    params.require('user').permit('email', 'username', 'password', 'password_confirmation', 'id').symbolize_keys
  end

end
