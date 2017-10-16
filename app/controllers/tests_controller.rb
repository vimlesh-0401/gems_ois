class TestsController < ApplicationController

  before_action :authenticate_user

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    if @test.save
      redirect_to test_path(@test)
    else
      render :new
    end
  end

  def show
    @test = Test.find(params[:id])
  end

  def index
  end

  private
    def test_params
      params.require(:test).permit(:name)
    end

    def authenticate_user
      if session[:user_id].nil?
        redirect_to admins_path()
      end
    end
end
