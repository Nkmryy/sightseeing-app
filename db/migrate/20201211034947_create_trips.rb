class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :attraction_id, null: false
      t.integer :evaluation_id, null: false
      t.string :title,          null: false
      t.text :impressions,      null: false
      t.references :user,       foreign_key: true
      t.references :place,      foreign_key: true
      t.timestamps
    end
  end
end
