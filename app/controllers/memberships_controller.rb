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
    redirect_to competition_path(@competition)

  end
end
