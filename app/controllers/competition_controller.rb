class CompetitionController < ApplicationController
  def index
    @competitions = Competition.all
  end
end
