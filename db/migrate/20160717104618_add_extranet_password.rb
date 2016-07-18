class AddExtranetPassword < ActiveRecord::Migration
  def change
    add_column :users, :extranet_password, :string
  end
end
