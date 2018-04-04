class ReviewsController < ApplicationController

  def new
    # @restaurant = Restaurant.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new

  end

  def create
    # @restaurant = Restaurant.new(restaurant_params)
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review = Review.new(review_params)
      @review.restaurant = @restaurant
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else # if failure (error message is simple form)
        render :new # keeps data I have filled out earlier
        # redirect_to new_restaurant_review_path(@restaurant) #redirects me back to the path but doesn't preserve what I have filled out earlier
      end
  end

private

  def review_params
    params.require(:review).permit(:content, :star)

  end


end
