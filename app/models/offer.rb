class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :location, presence: true
  validates :price_per_day, presence: true

  mount_uploader :video, VideoUploader

  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end


