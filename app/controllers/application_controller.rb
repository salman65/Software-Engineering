class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authenticate_user!
  protect_from_forgery with: :exception
end

class AuthenticationController < ApplicationController
  # Turn off user authentication for all actions in this controller
  skip_before_filter :authenticate_user!

  def login
    '...'
  end

  def register
    '...'
  end
end
