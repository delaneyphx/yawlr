class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id]) 
  end

  def following
  	@user = User.find(params[:id]) 
  	@followed_users = @user.followed_users
  end

  def followers
  	  @user = User.find(params[:id]) 
  	  @followers = @user.followers
  end

end