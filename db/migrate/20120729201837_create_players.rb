class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :nickname, :null => false, :default => "", :limit => 50
      t.integer :gold, :null => false, :default => 0
      t.integer :score, :null => false, :default => 0

      t.timestamps
    end
  end
end
