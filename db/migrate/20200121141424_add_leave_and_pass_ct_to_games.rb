class AddLeaveAndPassCtToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :leave, :float
    add_column :games, :passCount, :integer
  end
end
