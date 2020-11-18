class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 150 }
end
