class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :country
      t.string :state
      t.timestamps
    end
  end
end
