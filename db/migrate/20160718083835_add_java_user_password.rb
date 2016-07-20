class AddJavaUserPassword < ActiveRecord::Migration
  def change
   add_column :users, :java_password, :string
  end
end
