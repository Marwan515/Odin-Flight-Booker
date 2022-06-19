class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, foreign_key: "bookings_id"
  accepts_nested_attributes_for :passengers
end
