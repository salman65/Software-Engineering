  class ZakirsController < ApplicationController

    def index
      @user = User.find(params[:id]);
    end

    def new
      # default: render 'new' template
    end

    def create

    end

    def edit

    end

    def update
    end

    def destroy
    end

  end
