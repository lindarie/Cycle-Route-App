class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
    
  end

  def create
    user = User.find_by(email: params[:email])    
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in succesfully" 
    else
      redirect_to login_url, notice: "Invalid e-mail or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "Logged out"
  end
end
