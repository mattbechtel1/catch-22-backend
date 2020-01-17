class AddDuckettToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :duckett, :string
  end
end
