class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find_by_id(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find_by_id(params[:restaurant_id])
    @review = Review.new(params.require(:review).permit(:content, :rating))
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
end
