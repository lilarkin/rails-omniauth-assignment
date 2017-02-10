class CreateAdresses < ActiveRecord::Migration[5.0]
  def change
    create_table :adresses do |t|
      t.string :city
      t.string :state
      t.string :street
      t.integer :zip

      t.timestamps
    end
  end
end
