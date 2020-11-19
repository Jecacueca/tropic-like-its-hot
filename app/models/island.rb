class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 150 }

  include PgSearch::Model
  pg_search_scope :search_by_name_description, against: [:name, :description], using: { tsearch: { prefix: true } }
end
