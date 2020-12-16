class TripPlace < ApplicationRecord
  belongs_to :trip
  belongs_to :Place
end
