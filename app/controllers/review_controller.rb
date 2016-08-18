class ReviewController < ApplicationController
  before_action :find_booking, only: [ :new, :create, :show]

  def show
    @review = Review.find[params:id]
  end

  def new
    @review = Review.new
  end

  def create
    @review = @booking.reviews.build(review_params)
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end
end


