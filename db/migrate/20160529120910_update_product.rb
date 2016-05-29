class UpdateProduct < ActiveRecord::Migration
  def up
    change_table :products do |t|
      t.remove :name, :weight, :condition
      t.string :name
      t.decimal :weight, null: false
    end
  end

  def down
    change_table :products do |t|
      t.remove :name, :weight
      t.datetime :name
      t.datetime :weight
      t.datetime :condition
    end
  end
end
