
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_16_152404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_partners", force: :cascade do |t|
    t.bigint "partner_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_active_partners_on_game_id"
    t.index ["partner_id"], name: "index_active_partners_on_partner_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.integer "dayCount"
    t.integer "money"
    t.integer "sanity"
    t.integer "flown"
    t.integer "goal"
    t.boolean "soundOn"
    t.string "timings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "sanityChange"
    t.text "devNotes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_partners", "games"
  add_foreign_key "active_partners", "partners"
end