class ChangeTablePartnersToCharacters < ActiveRecord::Migration[6.0]
  def change
    rename_table :partners, :characters
    rename_table :active_partners, :game_characters
  end
end
