# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_21_141424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "sanityChange"
    t.text "devNotes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "sublist"
    t.string "occupation"
    t.float "erraticness"
  end

  create_table "game_characters", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_game_characters_on_character_id"
    t.index ["game_id"], name: "index_game_characters_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.integer "dayCount"
    t.integer "money"
    t.integer "sanity"
    t.integer "flown"
    t.integer "goal"
    t.boolean "soundOn"
    t.integer "timings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "injury"
    t.string "duckett"
    t.float "leave"
    t.integer "passCount"
  end

  add_foreign_key "game_characters", "characters"
  add_foreign_key "game_characters", "games"
end
