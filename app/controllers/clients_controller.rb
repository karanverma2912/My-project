class ClientsController < ApplicationController
  # before_action :is_login
  def index

  end

  def show

  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(user_params)
    if @client.save
      flash[:notice] = "User Has Been Created Successfully !!! "
      redirect_to controller: :clients, action: :index
    else
      flash[:wrong] = "Username is Already Exist !!! "
      render :new
    end
  end

  def login

  end

  def home
    # unless session[:current_user_id].nil?
    # session.delete(:current_user_id)
    # else
    # redirect_to root_url
    if session[:current_user_id].nil?
      redirect_to root_url
    end
  end

  def is_login
    @check = Client.find_by(user_name: params[:user_name],password: params[:password])

    if  @check.nil? #Client.find_by(user_name: name) && Client.find_by(password: pass)
      flash[:login] = "Wrong Username or Password !!! "
      redirect_to controller: :clients, action: :login
    else
      flash[:login] = " Login Successful !!!"
      # cookies[:uwsername] = @check.user_name
      session[:current_user_id] = @check.user_name
      redirect_to "/home"
    end
  end

  def logout
    session.delete(:current_user_id)
    flash[:logout] = "You are Successfully Logged Out  !!!"
    redirect_to root_url
  end

  private
    def user_params
      params.require(:client).permit(:user_name, :password)
    end

end
