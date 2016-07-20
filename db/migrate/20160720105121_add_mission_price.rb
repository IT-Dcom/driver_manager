class AddMissionPrice < ActiveRecord::Migration
  def change
    add_column :missions, :price, :double
  end
end
