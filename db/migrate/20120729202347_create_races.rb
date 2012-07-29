class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name, :null => false, :default => ""

      t.timestamps
    end
  end
end
