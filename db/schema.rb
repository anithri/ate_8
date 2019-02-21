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

ActiveRecord::Schema.define(version: 2019_02_21_051953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "board_contents", force: :cascade do |t|
    t.bigint "game_session_id"
    t.string "tile_id", null: false
    t.jsonb "deck_contents", default: {"version"=>"1.0.0", "card_ids"=>[]}, null: false
    t.jsonb "bag_contents", default: {"version"=>"1.0.0", "worker_ids"=>[]}, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_session_id"], name: "index_board_contents_on_game_session_id"
    t.index ["tile_id"], name: "index_board_contents_on_tile_id"
  end

  create_table "game_sessions", force: :cascade do |t|
    t.string "name"
    t.integer "round", default: 0, null: false
    t.integer "turn", default: 0, null: false
    t.string "aasm_state"
    t.datetime "finished_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["finished_at"], name: "index_game_sessions_on_finished_at"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.integer "icon"
    t.integer "theme"
    t.bigint "game_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_session_id"], name: "index_messages_on_game_session_id"
  end

  create_table "players", force: :cascade do |t|
    t.bigint "game_session_id"
    t.bigint "user_id"
    t.integer "order"
    t.jsonb "seat_contents", default: {"version"=>"1.0.0", "worker_ids"=>[]}, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_session_id"], name: "index_players_on_game_session_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "board_contents", "game_sessions"
  add_foreign_key "messages", "game_sessions"
  add_foreign_key "players", "game_sessions"
  add_foreign_key "players", "users"
end
