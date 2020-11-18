class Island < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 150 }
end
