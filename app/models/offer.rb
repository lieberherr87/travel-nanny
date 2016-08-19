class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :location, presence: true
  validates :price_per_day, presence: true

  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end


