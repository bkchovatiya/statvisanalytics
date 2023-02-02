class AddAvgRatingToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :avg_rating, :decimal
  end
end
