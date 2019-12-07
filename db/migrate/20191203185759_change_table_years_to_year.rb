class ChangeTableYearsToYear < ActiveRecord::Migration[6.0]
  def change
    change_table :calculations do |t|
      t.rename :years, :year
    end
  end
end
