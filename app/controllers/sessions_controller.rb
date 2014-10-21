class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(session_params)

    if user
      session[:user_id] = user.id
      render json: user
    else
      nil
    end
  end

  def destroy
  end

  def get_info
    render json: session
  end

  private

  def session_params
    params.require("user").permit("email", "password").symbolize_keys
  end

end
