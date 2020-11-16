class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :address, presence: true
  validates :description, presence: true
  validates :description, length: { minimum: 150, to_short: "#{count} characters is the minimum length." }
end
