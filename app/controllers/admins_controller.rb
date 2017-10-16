class AdminsController < ApplicationController

  before_action :authenticate_user, only: [:dashboard]

  def index

  end

  def dashboard

  end

  private
    def authenticate_user
      if session[:user_id].nil?
        redirect_to admins_path()
      end
    end
end
