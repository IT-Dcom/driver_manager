class UpdateRelayPoint < ActiveRecord::Migration
  def up
    change_table :realy_points do |t|
      t.remove :zip, :address, :longitude, :latitude
      t.string :zip, null: false
      t.string :address, null: false
    end
    rename_table :realy_points, :relay_points
  end

  def down
    rename_table :realy_points, :relay_points
    change_table :relay_points do |t|
      t.remove :zip, :address
      t.datetime :zip
      t.datetime :address
      t.datetime :longitude
      t.datetime :latitude
    end
  end
end
