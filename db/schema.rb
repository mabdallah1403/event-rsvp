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

ActiveRecord::Schema[8.1].define(version: 2026_02_08_185858) do
  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "maximum_attendees", limit: 2, null: false
    t.integer "organizer_id", null: false
    t.text "title", null: false
    t.datetime "updated_at", null: false
    t.index ["organizer_id"], name: "index_events_on_organizer_id"
  end

  create_table "rsvps", force: :cascade do |t|
    t.string "attendee_name", null: false
    t.datetime "created_at", null: false
    t.integer "event_id", null: false
    t.integer "number_attending", limit: 2, null: false
    t.string "rsvp_status", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_rsvps_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "deleted_at"
    t.string "name", null: false
    t.text "password_hash", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "users", column: "organizer_id"
  add_foreign_key "rsvps", "events"
end
