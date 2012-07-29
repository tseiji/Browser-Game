class AddUserIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :user_id, :integer, :default => 0, :null => false
    add_index :players, :user_id
  end
end
