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

ActiveRecord::Schema.define(version: 2018_11_26_224521) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", id: :serial, force: :cascade do |t|
    t.integer "tunnel_log_id"
    t.integer "task_code_id"
    t.integer "lab_tech_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.boolean "sticky"
    t.string "projectable_type", limit: 255
    t.integer "projectable_id"
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "rework", default: false
    t.integer "employee_id"
    t.index ["tunnel_log_id"], name: "index_entries_on_tunnel_log_id"
  end

  create_table "tunnel_logs", id: :serial, force: :cascade do |t|
    t.string "slug", limit: 255
    t.integer "fixed_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "retired", default: false
  end

end
