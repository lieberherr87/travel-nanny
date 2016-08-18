class OffersController < ApplicationController
  def index
    #@offer = current_user.offer
    if params[:search]
      @offers = Offer.where('location ILIKE ?', params[:search])
      flash.now[:notice] = "There are #{@offers.count} in this category".html_safe

      @hash = Gmaps4rails.build_markers(@offers) do |offer, marker|
        marker.lat offer.latitude
        marker.lng offer.longitude
      end
    elsif params[:location]
      @offers = Offer.where(:location => params[:location])
      flash[:notice] = "There are #{@offers.count} in this category".html_safe

      @hash = Gmaps4rails.build_markers(@offers) do |offer, marker|
        marker.lat offer.latitude
        marker.lng offer.longitude
      end
    else
      @offers = Offer.where.not(latitude: nil, longitude: nil)

      @hash = Gmaps4rails.build_markers(@offers) do |offer, marker|
        marker.lat offer.latitude
        marker.lng offer.longitude
        # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
    end
  end

  def new
    @offer = Offer.new
  end

  def show
    @booking = Booking.new
    @offer = Offer.find(params[:id])
    @offer_coordinates = { lat: @offer.latitude, lng: @offer.longitude }
  end

  def create
    if user_signed_in? && current_user.nanny?
      @offer = current_user.create_offer(offer_params)
      redirect_to offers_path
    else
      redirect_to user_session_path
    end
  end

  def edit
    @offer = current_user.offer
  end

  def update
    @offer = current_user.offer.update(offer_params)
    redirect_to offers_path
  end

  def destroy
    @offer = current_user.offer.destroy
    redirect_to new_offer_path
  end

  private



  def offer_params
    params.require(:offer).permit(:location, :price_per_day, :superpower, :video, :video_cache)
  end
end
