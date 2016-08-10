class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user.id)
  end
    
  def show
    @user = User.find(params[:id])
    @membership = Membership.where(user_id: params[:id])
    @competition = Competition.all
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :photo_url, :bio)
  end

end
