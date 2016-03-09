  class FlavoursController < ApplicationController
    def flavour_params
      params.require(:flavour).permit(:food_item, :description, :price) 
    end
    
    def index
      if params[:sort_by_food]
        @flavour = Flavour.order(params[:sort_by_food])
        @ins1 = "hilite"
      elsif params[:sort_by_price]
        @flavour = Flavour.order(params[:sort_by_price])
        @ins2 = "hilite"
      else
        @flavour = Flavour.all()
        @ins = ""
      end
    end
  
    def new
      # default: render 'new' template
    end
  
    def create
      @flavour = Flavour.create!(flavour_params)
      flash[:notice] = "#{@flavour.food_item} was successfully created."
      redirect_to flavour_path
    end
  
    def edit
      @flavour = Flavour.find params[:id]
    end
  
    def update
      @flavour = Flavour.find params[:id]
      @flavour.update_attributes!(flavour_params)
      flash[:notice] = "#{@flavour.food_item} was successfully updated."
      redirect_to flavour_path(@flavour)
    end
  
    def destroy
      @flavour = Flavour.find(params[:id])
      @flavour.destroy
      flash[:notice] = "'#{@flavour.food_item}' deleted."
      redirect_to flavour_path
    end

  end