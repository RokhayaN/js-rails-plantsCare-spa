class CreateCares < ActiveRecord::Migration[6.0]
  def change
    create_table :cares do |t|
      t.string :maintenance
      t.string :light
      t.string :fertilization
      t.integer :plant_id

      t.timestamps
    end
  end
end
