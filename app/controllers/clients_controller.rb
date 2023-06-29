class ClientsController < ApplicationController
  # before_action :is_login



  def index

  end

  def show
    @name = Client.find(params[:id])
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
      render :new
    end
  end

  def login

  end

  def is_login
    @check = Client.find_by(user_name:params[:user_name],password: params[:password])
    # name = params[:user_name]
    # pass = params[:password]
    if  @check.nil? #Client.find_by(user_name: name) && Client.find_by(password: pass)
      flash[:login] = "Wrong Username or Password !!! "
      redirect_to controller: :clients, action: :login
    else
      flash[:login] = "#{@check.user_name} Login Successful !!!"
      redirect_to @check
    end
  end

  private
    def user_params
      params.require(:client).permit(:user_name, :password)
    end

end
