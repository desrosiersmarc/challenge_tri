class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :firstname
      t.string :lastname
      t.string :licence_number
      t.string :category
      t.string :sex
      t.references :club, null: false, foreign_key: true

      t.timestamps
    end
  end
end
