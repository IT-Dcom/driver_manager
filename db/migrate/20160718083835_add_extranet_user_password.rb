class AddExtranetUserPassword < ActiveRecord::Migration
  def change
   add_column :users, :password_extranet, :string
  end
end
