class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 150 }
end
