class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.text :description
      t.integer :sanityChange
      t.text :devNotes

      t.timestamps
    end
  end
end
