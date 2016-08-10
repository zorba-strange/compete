class MembershipsController < ApplicationController

  def show
    @membership = Membership.find(params[:id])
    @competition = Competition.find(params[:id])
    redirect_to competition_path(@competition)
  end

  def create
    @current_user = User.find(session[:user_id])
    @competition = Competition.find(params[:competition_id])
    @membership = Membership.create!({user_id: @current_user.id, competition_id: @competition.id})
    if @membership.save
      flash[:success] = "#{@current_user.username} has joined #{@competition.title}"
    end
    redirect_to competition_path(@competition)
  end

  def destroy
    @current_user = User.find(session[:user_id])
    @competition = Competition.find(params[:competition_id])
    @membership = Membership.find({user_id: @current_user.id, competition_id: @competition.id})
    @membership.destory
    redirect_to user_path(@current_user)

  end
    
end
