class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :island

  validates :number_of_people, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, inclusion: { in: ["declined", "pending", "accepted"] }
end
