class Place < ApplicationRecord
  delegate :x, to: :lonlat
  delegate :y, to: :lonlat

  has_many :place_ratings, dependent: :destroy
end
