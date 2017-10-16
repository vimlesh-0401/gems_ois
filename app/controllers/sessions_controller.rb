class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email], password: params[:password])
    if user.present?
      session[:user_id] = user.id
      redirect_to dashboard_admins_path()
    else
      redirect_to admins_path(), error: "Please Enter valid credentials"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path()
  end
end
