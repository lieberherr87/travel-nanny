class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true

  has_many :bookings, dependent: :destroy
  has_one :offer, dependent: :destroy

  mount_uploader :image, PhotoUploader

end
