class CreateContests < ActiveRecord::Migration[6.0]
  def change
    create_table :contests do |t|
      t.string :name
      t.string :location
      t.datetime :date
      t.references :user, null: false, foreign_key: true
      t.references :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
