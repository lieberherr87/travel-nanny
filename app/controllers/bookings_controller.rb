class BookingsController < ApplicationController
  before_action :set_booking

  def index
    @bookings = current_user.bookings
  end

  def show

  end

  def new
    @booking = current_user.bookings.new()
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = @offer.bookings.build(booking_params)
    @booking.user = current_user
    # calculate full price
    @booking.full_price = 250
    @booking.save
    redirect_to booking_path(@booking)
    # redirect_to
  end

  def edit
  end

  def update
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def total_price

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      if current_user
        @booking = current_user.bookings.find_by(id: params[:id])
      else
        redirect_to new_user_session_path
      end
    end

    # Only allow a trusted parameter "white list" through.
    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :full_price)
    end
end
