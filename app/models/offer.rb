class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :location, presence: true
  validates :price_per_day, presence: true

  geocoded_by :location

  reverse_geocoded_by :latitude, :longitude do |obj, results|
    if geo = results.first
      obj.country = geo.country
    end
  end

  after_validation :geocode, if: :location_changed?
  after_validation :reverse_geocode, if: :location_changed?
end


