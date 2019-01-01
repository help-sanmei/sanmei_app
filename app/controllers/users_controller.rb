class UsersController < ApplicationController
  
  # before_action :authenticate_user!, :only => [:show, :edit, :update, :destroy]
  
  def index
  end
  
  def show
    @user = User.find(params[:id])
  end  
  
  def edit
     @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:first_name, :family_name, :email))
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
  
  

end
