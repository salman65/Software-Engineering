  class RestaurantsController < ApplicationController
    def restaurant_params
      params.require(:restaurant).permit(:name, :number, :description, :rating) 
    end
  
    def show
      id = params[:id]
      if id=="1" or id=='1'
        redirect_to zakirs_path
      elsif id=="2" or id=='2'
        redirect_to flavours_path
      elsif id=="3" or id=='3'
        redirect_to chopchops_path
    end
  end
    
    def index
      if params[:sort_by_name]
        @restaurant = Restaurant.order(params[:sort_by_name])
        @ins1 = "hilite"
      elsif params[:sort_by_type]
        @restaurant = Restaurant.order(params[:sort_by_type])
        @ins2 = "hilite"
      else
        @restaurant = Restaurant.all()
        @ins = ""
      end
    end
  
    def new
      # default: render 'new' template
    end
  
    def create
      @restaurant = Restaurant.create!(restaurant_params)
      flash[:notice] = "#{@restaurant.name} was successfully created."
      redirect_to restaurants_path
    end
  
    def edit
      @restaurant = Restaurant.find params[:id]
    end
  
    def update
      @restaurant = Restaurant.find params[:id]
      @restaurant.update_attributes!(restaurant_params)
      flash[:notice] = "#{@restaurant.title} was successfully updated."
      redirect_to restaurants_path(@restaurant)
    end
  
    def destroy
      @restaurant = Restaurant.find(params[:id])
      @restaurant.destroy
      flash[:notice] = "Restaurant '#{@restaurant.name}' deleted."
      redirect_to restaurants_path
    end

  end