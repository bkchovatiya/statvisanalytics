class PlaceRating < ApplicationRecord
  belongs_to :place
  validates :rating, presence: true, inclusion: { in: (0..5).to_a }
  after_create :set_avg_rating

  def set_avg_rating
    place_ratings_count = place.place_ratings.count
    sum_of_max_rating_count = place_ratings_count * 5
    sum_of_rating = place.place_ratings.sum(:rating)

    avg = (sum_of_rating * 5) / sum_of_max_rating_count

    place.update(avg_rating: avg)
  end
end
