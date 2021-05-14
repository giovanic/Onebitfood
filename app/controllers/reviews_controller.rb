class ReviewsController < ApplicationController
  def create
    @reviews = Review.new(review_params)
  	if @reviews.save
  		@reviews
  	else
  		render json: @reviews.errors, status: :unprocessable_entity
  	end
  end

  private
  def review_params
  	params.require(:review).permit(
  		:amount, :restaurant_id
  		)
  end
end
