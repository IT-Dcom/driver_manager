class UpdateDriver < ActiveRecord::Migration
  def up
    change_table :drivers do |t|
      t.remove :first_name, :last_name, :address
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :address, null: false
    end
  end

  def down
    change_table :drivers do |t|
      t.remove :first_name, :last_name, :address
      t.datetime :first_name
      t.datetime :last_name
      t.datetime :address
    end
  end
end
