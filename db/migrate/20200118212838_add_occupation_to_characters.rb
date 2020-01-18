class AddOccupationToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :occupation, :string
  end
end
