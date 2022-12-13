class CreateTrackers < ActiveRecord::Migration[7.0]
  def change
    create_table :trackers do |t|
      t.string :latitude
      t.string :longitude
      t.date :date
      t.integer :animal_id

      t.timestamps
    end
  end
end
