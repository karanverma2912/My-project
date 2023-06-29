class UsersController < ApplicationController

  def index
    if params[:status] == "activated"
      @user = User.activated
    else
      @user = User.deactivated
    end
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      puts "Hello Bhai "
      redirect_to @user
    else
      render :new
    end
  end

end
