class CreateActivePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :active_partners do |t|
      t.references :partner, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
