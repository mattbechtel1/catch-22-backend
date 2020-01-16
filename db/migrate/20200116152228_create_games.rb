class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :dayCount
      t.integer :money
      t.integer :sanity
      t.integer :flown
      t.integer :goal
      t.boolean :soundOn
      t.string :timings

      t.timestamps
    end
  end
end
