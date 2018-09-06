class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
   
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    end
  end
  
  
  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password, :created_at, :updated_at)
  end
  
  
end