class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user, through: :bookings

  validates :content, presence: true
  validates :rating, presence: true
end

