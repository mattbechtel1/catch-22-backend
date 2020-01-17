class FixColumnNamesInGameCharacters < ActiveRecord::Migration[6.0]
  def change
    rename_column :game_characters, :partner_id, :character_id
    # rename_index :game_characters, :index_game_characters_on_partner_id, :index_game_characters_on_character_id
  end
end
