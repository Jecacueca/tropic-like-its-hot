class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 150 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
