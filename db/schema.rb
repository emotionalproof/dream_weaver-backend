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

ActiveRecord::Schema.define(version: 2020_08_09_182731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dictionaries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dream_symbols", force: :cascade do |t|
    t.string "name"
    t.text "meaning"
    t.bigint "dictionary_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dictionary_id"], name: "index_dream_symbols_on_dictionary_id"
  end

  create_table "entries", force: :cascade do |t|
    t.string "date"
    t.string "title"
    t.string "interpretation"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "entry_themes", force: :cascade do |t|
    t.bigint "entry_id", null: false
    t.bigint "theme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entry_id"], name: "index_entry_themes_on_entry_id"
    t.index ["theme_id"], name: "index_entry_themes_on_theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.string "confirm_password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "dream_symbols", "dictionaries"
  add_foreign_key "entries", "users"
  add_foreign_key "entry_themes", "entries"
  add_foreign_key "entry_themes", "themes"
end
