class RenameTypeToSublistInCharacters < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :type, :sublist
  end
end
