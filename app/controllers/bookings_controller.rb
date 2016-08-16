class BookingsController < ApplicationController
  before_action :set_booking

  def index
    @bookings = Booking.all
  end

  def show

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = current_user.booking.find_by(id: params[:id])

    end

    # Only allow a trusted parameter "white list" through.
    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :full_price, :users_id, :offers_id)
    end
end
