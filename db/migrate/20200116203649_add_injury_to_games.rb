class AddInjuryToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :injury, :string
  end
end
