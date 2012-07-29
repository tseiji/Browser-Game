class AddRaceIdToPlayers < ActiveRecord::Migration
  def change
    change_table(:players) do |t|
      t.integer :race_id, :null => false, :default => 0
    end
    add_index :players, :race_id
  end
end
