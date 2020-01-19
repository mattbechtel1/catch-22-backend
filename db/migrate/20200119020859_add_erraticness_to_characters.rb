class AddErraticnessToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :erraticness, :float
  end
end
