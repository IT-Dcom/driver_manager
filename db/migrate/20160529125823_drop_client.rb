require_relative '20160420185830_create_client'

class DropClient < ActiveRecord::Migration
  def up
    drop_table :clients
  end

  def down
    revert CreateClient
  end
end
