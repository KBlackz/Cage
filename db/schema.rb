# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_15_193705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "platform_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["platform_id"], name: "index_channels_on_platform_id"
    t.index ["user_id"], name: "index_channels_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "platform_id", null: false
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
    t.index ["platform_id"], name: "index_events_on_platform_id"
  end

  create_table "fighters", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.string "fighting_record"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_url"
  end

  create_table "main_event_fighters", force: :cascade do |t|
    t.bigint "first_fighter_id"
    t.bigint "second_fighter_id"
    t.bigint "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_main_event_fighters_on_event_id"
    t.index ["first_fighter_id"], name: "index_main_event_fighters_on_first_fighter_id"
    t.index ["second_fighter_id"], name: "index_main_event_fighters_on_second_fighter_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "fighter_id", null: false
    t.string "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_schedules_on_event_id"
    t.index ["fighter_id"], name: "index_schedules_on_fighter_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "channels", "platforms"
  add_foreign_key "channels", "users"
  add_foreign_key "events", "platforms"
  add_foreign_key "main_event_fighters", "fighters", column: "first_fighter_id"
  add_foreign_key "main_event_fighters", "fighters", column: "second_fighter_id"
  add_foreign_key "schedules", "events"
  add_foreign_key "schedules", "fighters"
end
