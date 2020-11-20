class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 150 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch::Model
  pg_search_scope :search_by_name_description, against: [:name, :description], using: { tsearch: { prefix: true } }

end
