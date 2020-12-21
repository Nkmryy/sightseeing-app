class Place < ApplicationRecord
  has_many :trip_places
  has_many :trips, through: :trip_places
end
