class ReviewsController < ApplicationController
  def index
  end
  def create
    @user=User.find(params[:review][:user_id]);
    @review = @user.reviews.create(review_params)
    if @review.save
      redirect_to(controller:"users",action:"show",:id=>@user.id)
    else

    end
  end
  def new
    @user=User.find(params[:id]);
    @review = @user.reviews.build
  end
  private
    def review_params
      params.require(:review).permit(:foodquality,:ontime,:user_id,:description)
    end
end
