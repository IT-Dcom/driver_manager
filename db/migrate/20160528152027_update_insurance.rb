class UpdateInsurance < ActiveRecord::Migration
  def up
    change_table :insurances do |t|
      t.remove :name, :price
      t.string :name, null: false
      t.decimal :price, null: false
      t.string :description
    end
    rename_table :insurances, :services
  end

  def down
    rename_table :services, :insurances
    change_table :insurances do |t|
      t.remove :price, :name, :description
      t.datetime :price
      t.datetime :name
    end
  end
end
