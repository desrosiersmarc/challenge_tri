class CreateCalculations < ActiveRecord::Migration[6.0]
  def change
    create_table :calculations do |t|
      t.references :league, null: false, foreign_key: true
      t.integer :contestants_max
      t.integer :place
      t.integer :points
      t.integer :yeas
      t.string :name

      t.timestamps
    end
  end
end
