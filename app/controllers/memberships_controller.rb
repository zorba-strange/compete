class MembershipsController < ApplicationController

  def show
    if @mebership
      @membership = Membership.find(params[:id])
      @competition = Competition.find(params[:id])
      redirect_to competition_path(@competition)
    else
      @competition = Competition.find(params[:id])
      redirect_to competition_path(@competition)
    end
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

  def delete
    @current_user = sessions[:user_id]
    @current_user.membership.destroy_all
    redirect_to competitions_path
  end
      
end
