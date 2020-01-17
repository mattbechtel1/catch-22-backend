class AddTypeToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :type, :string
  end
end
