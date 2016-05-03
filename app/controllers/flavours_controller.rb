class FlavoursController < ApplicationController
  def index
        @user = User.find(params[:id]);

  end

  def show
  end
end
