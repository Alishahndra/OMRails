class AddUserIdToSpecifics < ActiveRecord::Migration
  def change
    add_column :specifics, :user_id, :integer
    add_index :specifics, :user_id
  end
end
