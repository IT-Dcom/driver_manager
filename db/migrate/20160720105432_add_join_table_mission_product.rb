class AddJoinTableMissionProduct < ActiveRecord::Migration
  def change
    create_join_table :products, :missions
  end
end
