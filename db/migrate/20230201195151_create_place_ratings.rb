class CreatePlaceRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :place_ratings do |t|
      t.integer :rating
      t.integer :place_id

      t.timestamps
    end
  end
end
