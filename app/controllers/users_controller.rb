class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    #debugger
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update_attributes(user_params)
    redirect_to @user
  end

  def destroy
    User.destroy params[:id]
    redirect_to '/users'
  end

  private
    def user_params
      params.require(:user).permit(:name, :age, :email, :blob_id, :password, :password_confirmation)
    end

end
