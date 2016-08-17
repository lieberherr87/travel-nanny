class BookingsController < ApplicationController
  before_action :set_booking

  def index
    @bookings = current_user.bookings
  end

  def show

  end

  def new
    @booking = current_user.bookings.new(@offer)
  end

  def create
    @booking = current_user.bookings.create(booking_params)
    redirect_to booking_path(@booking)
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
      @booking = current_user.bookings.find_by(id: params[:id])

    end

    # Only allow a trusted parameter "white list" through.
    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :full_price, :users_id, :offers_id)
    end
end
