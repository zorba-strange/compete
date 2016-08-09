class SessionsController < ApplicationController

  def new
    @user = User.new
  end

 def create
   input_username = params[:user][:username]
   if User.exists?(username: input_username)
     @user = User.find_by(username: input_username)
     if @user.password === params[:user][:password]
       flash[:notice] = "#{input_username} signed in"
       session[:user_id] = @user.id
       cookies[:username] = @user.username
       redirect_to user_path(session[:user_id])
     else
       flash[:alert] = "Wrong Password"
       redirect_to new_sessions_path
     end
   else 
     flash[:alert] = "User Does Not Exist"
     redirect_to new_sessions_path
   end
 end

 def destroy
   reset_session
   flash[:notice] = "Signed out"
   redirect_to :root
 end

end
