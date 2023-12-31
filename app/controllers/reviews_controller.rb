class ReviewsController < ApplicationController

  def create
    @restaurant = Restaurant.find_by_id(params[:restaurant_id])
    @review = Review.new(params.require(:review).permit(:content, :rating))
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end
end
