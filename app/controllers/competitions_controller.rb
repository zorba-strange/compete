class CompetitionsController < ApplicationController

  def new
    @competition = Competition.new
  end

  def create
    @competition = Competition.create!(comp_params)
    redirect_to competition_path(@competition)
  end

  def show
    @competition = Competition.find(params[:id])
    @membership = Membership.where(competition_id: params[:id])
    @user = User.all
  end

  def edit
    @competition = Competition.find(params[:id])
  end
  
  def update
    @competition = Competition.find(params[:id])
    if @competition.update(comp_params)
      flash[:success] = "Competition Update"
      redirect_to @competition
    else
      render 'edit'
    end
  end

  def index
    @competitions = Competition.all
  end

  def destroy
    @competition = Competition.find(params[:id])
    @competition.destroy
    redirect_to competitions_path
  end

  private
  def comp_params
    params.require(:competition).permit(:title, :start_date, :end_date, :info)
  end

end
