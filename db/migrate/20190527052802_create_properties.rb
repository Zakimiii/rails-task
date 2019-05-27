class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :price
      t.text :address
      t.integer :year_built
      t.text :note

      t.timestamps
    end
  end
end
