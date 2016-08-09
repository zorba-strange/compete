class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # get current user before other actions
  before_action :get_current_user

  # Function to get current user
  def get_current_user
    if User.exists?(session[:user_id])
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

end
