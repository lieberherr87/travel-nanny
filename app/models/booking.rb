class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  has_one :review, dependent: :destroy

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :full_price, presence: true
end

