class Place < ApplicationRecord
  has_many :trips, through: :trips_places
end
