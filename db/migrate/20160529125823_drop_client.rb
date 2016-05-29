class DropClient < ActiveRecord::Migration
  def up
    drop_table :clients
  end

  def down
    create_table :clients do |t|
      t.datetime :name
      t.datetime :email
      t.datetime :address
      t.datetime :zip
      t.timestamps null: false
    end
  end
end
