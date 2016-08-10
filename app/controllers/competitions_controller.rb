class CompetitionsController < ApplicationController

  def new
    redirect_to root_path unless @current_user
    @competition = Competition.new
  end

  def create
    redirect_to root_path unless @current_user
    @competition = Competition.create!(comp_params)
    redirect_to competition_show_path(@competition.id)
  end

  def show
    @competition = Competition.find(params[:id])
    @membership = Membership.where(competition_id: params[:id])
    @user = User.all
  end

  def index
    @competitions = Competition.all
  end

  private
  def comp_params
    params.require(:competition).permit(:title, :start_date, :end_date, :info)
  end

end
