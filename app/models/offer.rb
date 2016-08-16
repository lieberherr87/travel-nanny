class Offer < ApplicationRecord
  belongs_to :user

  validates :location, presence: true
  validates :price_per_day, presence: true

  mount_uploader :video, VideoUploader
end


