class UpdateMission < ActiveRecord::Migration
  def change
    change_column_null :missions, :assigned_at, false
    change_column_null :missions, :completed_at, false
  end
end
