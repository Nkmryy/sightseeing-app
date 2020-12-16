class CreateTripPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :trip_places do |t|
      t.references :trip,  foreign_key: true
      t.references :place, foreign_key: true
      t.timestamps
    end
  end
end
