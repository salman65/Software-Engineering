  class ChopchopsController < ApplicationController
    def chopchop_params
      params.require(:chop_chop).permit(:food_item, :description, :price) 
    end
    
    def index
      if params[:sort_by_food]
        @chop = Chopchop.order(params[:sort_by_food])
        @ins1 = "hilite"
      elsif params[:sort_by_price]
        @chop = Chopchop.order(params[:sort_by_price])
        @ins2 = "hilite"
      else
        @chop = Chopchop.all()
        @ins = ""
      end
    end
  
    def new
      # default: render 'new' template
    end
  
    def create
      @chop = Chopchop.create!(chopchop_params)
      flash[:notice] = "#{@chop.food_item} was successfully created."
      redirect_to chop_chop_path
    end
  
    def edit
      @chop = Chopchop.find params[:id]
    end
  
    def update
      @chop = Chopchop.find params[:id]
      @chop.update_attributes!(chopchop_params)
      flash[:notice] = "#{@chop.food_item} was successfully updated."
      redirect_to chop_chop_path(@chop)
    end
  
    def destroy
      @chop = Chopchop.find(params[:id])
      @chop.destroy
      flash[:notice] = "'#{@chop.food_item}' deleted."
      redirect_to chop_chop_path
    end

  end