  class MoviesController < ApplicationController
  
    def movie_params
      params.require(:movie).permit(:title, :rating, :description, :release_date) 
    end
  
    def show
      id = params[:id] # retrieve movie ID from URI route
      @movie = Movie.find(id) # look up movie by unique ID
      # will render app/views/movies/show.<extension> by default
    end
    
    def index
      if params[:sort_by_title]
        @movies = Movie.order(params[:sort_by_title])
        @ins = "hilite"
      elsif params[:sort_by_date]
        @movies = Movie.order(params[:sort_by_date])
        @ins = "hilite"
      else
        @movies = Movie.all
        @ins = ""
      end
    end
  
    def new
      # default: render 'new' template
    end
  
    def create
      @movie = Movie.create!(movie_params)
      flash[:notice] = "#{@movie.title} was successfully created."
      redirect_to movies_path
    end
  
    def edit
      @movie = Movie.find params[:id]
    end
  
    def update
      @movie = Movie.find params[:id]
      @movie.update_attributes!(movie_params)
      flash[:notice] = "#{@movie.title} was successfully updated."
      redirect_to movie_path(@movie)
    end
  
    def destroy
      @movie = Movie.find(params[:id])
      @movie.destroy
      flash[:notice] = "Movie '#{@movie.title}' deleted."
      redirect_to movies_path
    end
    
    def update_movie_1
    end
    
    def update_movie_2
      @data1 = params[:movie]
      @data2 = Movie.find_by(title: @data1[:search])
      if(@data2)
        @t1 = @data1[:title]
        @t2 = @data1[:rating]
        @t3 = @data1[:release_date]
        if @t1=='' || @t2=='' || @t3==''
          flash[:notice]="Field Blank...can't update"
        else
          @data2.update_attributes!(movie_params)
          flash[:notice]="Movie updated"
        end
      else
        flash[:notice] = "Can't find Movie"
      end
      redirect_to movies_path
    end
    
    def delete_name_rating_1
    end

    def delete_name_rating_2
      @data1 = params[:movie]
      @data2 = Movie.find_by(title: @data1[:to_del])
      @data3 = Movie.where(rating: @data1[:rat_del])
      if(@data2)
        @data2.delete
        flash[:notice] = "Movie deleted by title"
      elsif(@data3)
        @data3.each {|x| x.delete}
        flash[:notice] = "Movie deleted by rating"
      else
        flash[:notice] = "can't find movie with title or rating"
      end
      redirect_to movies_path
    end

  end