class ReviewsController < ApplicationController
  before_action :find_booking, only: [ :new, :create, :show]

  def show
    @review = Review.find[params:id]
  end

  def new
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end
end



