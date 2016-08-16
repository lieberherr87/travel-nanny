class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user, through: :bookings
end
