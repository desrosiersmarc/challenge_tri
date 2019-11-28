class CreateJoinTableContestFormat < ActiveRecord::Migration[6.0]
  def change
    create_join_table :contests, :formats do |t|
      # t.index [:contest_id, :format_id]
      # t.index [:format_id, :contest_id]
    end
  end
end
