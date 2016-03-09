  class ZakirsController < ApplicationController
    def zakir_params
      params.require(:zakir).permit(:food_item, :description, :price) 
    end
    
    def index
      if params[:sort_by_food]
        @zakir = Zakir.order(params[:sort_by_food])
        @ins1 = "hilite"
      elsif params[:sort_by_price]
        @zakir = Zakir.order(params[:sort_by_price])
        @ins2 = "hilite"
      else
        @zakir = Zakir.all()
        @ins = ""
      end
    end
  
    def new
      # default: render 'new' template
    end
  
    def create
      @zakir = Zakir.create!(zakir_params)
      flash[:notice] = "#{@zakir.food_item} was successfully created."
      redirect_to zakir_path
    end
  
    def edit
      @zakir = Zakir.find params[:id]
    end
  
    def update
      @zakir = Zakir.find params[:id]
      @zakir.update_attributes!(zakir_params)
      flash[:notice] = "#{@zakir.food_item} was successfully updated."
      redirect_to zakir_path(@zakir)
    end
  
    def destroy
      @zakir = Zakir.find(params[:id])
      @zakir.destroy
      flash[:notice] = "'#{@zakir.food_item}' deleted."
      redirect_to zakir_path
    end

  end