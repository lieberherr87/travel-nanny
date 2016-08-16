class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true

  has_many :bookings, dependent: :destroy
  has_one :offers, dependent: :destroy

  mount_uploader :photo, PhotoUploader

end
