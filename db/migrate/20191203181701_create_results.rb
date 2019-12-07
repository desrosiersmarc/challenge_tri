class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.references :contest, null: false, foreign_key: true
      t.references :calculation, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true
      t.integer :place

      t.timestamps
    end
  end
end
