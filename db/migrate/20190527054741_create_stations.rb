class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.text :train
      t.text :station_name
      t.integer :distance
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
