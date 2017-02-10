class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :destination
      t.string :travel_method

      t.timestamps
    end
  end
end
