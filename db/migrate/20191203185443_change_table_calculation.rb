class ChangeTableCalculation < ActiveRecord::Migration[6.0]
  def change
    change_table :calculations do |t|
      t.rename :yeas, :years
    end
  end
end
