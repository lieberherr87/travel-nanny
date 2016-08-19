class CitiesController < ApplicationController
  def cities
    @countries = Offer.where.not(country: nil).map{ |offer| offer.country }.uniq.sort
  end

end
