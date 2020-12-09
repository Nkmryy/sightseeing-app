class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.integer :country_id, null: false
      t.integer :state_id, null: false
      t.string :address
      t.timestamps
    end
  end
end
