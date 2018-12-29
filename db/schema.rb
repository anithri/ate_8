# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_09_033840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "board_data", force: :cascade do |t|
    t.bigint "game_datum_id"
    t.string "location_id"
    t.jsonb "deck_data", default: {"version"=>"1.0.0", "card_ids"=>[]}, null: false
    t.jsonb "bag_data", default: {"version"=>"1.0.0", "worker_ids"=>[]}, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_datum_id"], name: "index_board_data_on_game_datum_id"
  end

  create_table "game_data", force: :cascade do |t|
    t.string "name"
    t.integer "turn", default: 0, null: false
    t.integer "phase", default: 0, null: false
    t.datetime "finished_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["finished_at"], name: "index_game_data_on_finished_at"
  end

  create_table "player_data", force: :cascade do |t|
    t.bigint "game_datum_id"
    t.bigint "user_id"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_datum_id"], name: "index_player_data_on_game_datum_id"
    t.index ["user_id"], name: "index_player_data_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "board_data", "game_data"
  add_foreign_key "player_data", "game_data"
  add_foreign_key "player_data", "users"
end
