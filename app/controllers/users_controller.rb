class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "#{@user.username} was updated."
      redirect_to @user
    else
      flash[:notice]
      redirect_to edit_user_path 
    end
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

  def leave_membership
    @user = User.find(params[:id])
    @user.memberships.where(user_id: params[:id]).destroy_all
    redirect_to competitions_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :profile_url, :bio)
  end

end
