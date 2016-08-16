class OffersController < ApplicationController
  def index
    @offer = current_user.offer

  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = current_user.create_offer(offer_params)
    redirect_to offers_path
  end

  def edit
    @offer = current_user.offer
  end

  def update
    current_user.offer.update(offer_params)
    redirect_to offers_path
  end

  def destroy
    current_user.offer.destroy
    redirect_to new_offer_path
  end

  private



  def offer_params
    params.require(:offer).permit(:location, :price_per_day, :superpower, :video, :video_cache)
  end
end
