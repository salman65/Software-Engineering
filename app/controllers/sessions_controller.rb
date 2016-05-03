class SessionsController < ApplicationController
  def new


  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:danger] = 'User '+user.name+' signed in'
      redirect_to user
    else
      flash[:danger] = 'Invalid email/password combination'
      redirect_to new_session_path
  end
end
  def destroy
    log_out
    redirect_to staticpages_path
  end
end
