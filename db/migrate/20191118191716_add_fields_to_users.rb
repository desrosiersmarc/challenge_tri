class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_reference :users, :league, null: false, foreign_key: true
  end
end
