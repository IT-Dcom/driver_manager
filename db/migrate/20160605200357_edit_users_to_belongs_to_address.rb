class EditUsersToBelongsToAddress < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.belongs_to :address
    end
  end
end
