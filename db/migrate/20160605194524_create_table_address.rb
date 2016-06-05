class CreateTableAddress < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city, null: false
      t.string :zip, null: false
      t.string :address, null: false
    end
  end
end
