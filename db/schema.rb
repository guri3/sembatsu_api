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

ActiveRecord::Schema.define(version: 2018_10_19_032707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "available_dates", force: :cascade do |t|
    t.bigint "room_id"
    t.date "available_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_available_dates_on_room_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.string "gender"
    t.date "birthday"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_guests_on_confirmation_token", unique: true
    t.index ["email"], name: "index_guests_on_email", unique: true
    t.index ["reset_password_token"], name: "index_guests_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_guests_on_uid_and_provider", unique: true
  end

  create_table "host_reviews", force: :cascade do |t|
    t.bigint "host_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_host_reviews_on_host_id"
  end

  create_table "hosts", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.string "gender"
    t.date "birthday"
    t.string "city"
    t.string "country"
    t.string "rental_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_hosts_on_confirmation_token", unique: true
    t.index ["email"], name: "index_hosts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_hosts_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_hosts_on_uid_and_provider", unique: true
  end

  create_table "options", force: :cascade do |t|
    t.string "name", null: false
    t.string "image_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserve_options", force: :cascade do |t|
    t.bigint "reserve_id"
    t.bigint "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_id"], name: "index_reserve_options_on_option_id"
    t.index ["reserve_id"], name: "index_reserve_options_on_reserve_id"
  end

  create_table "reserves", force: :cascade do |t|
    t.bigint "guest_id"
    t.bigint "room_id"
    t.date "from", null: false
    t.date "to", null: false
    t.date "reserve_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_reserves_on_guest_id"
    t.index ["room_id"], name: "index_reserves_on_room_id"
  end

  create_table "room_options", force: :cascade do |t|
    t.bigint "room_id"
    t.bigint "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_id"], name: "index_room_options_on_option_id"
    t.index ["room_id"], name: "index_room_options_on_room_id"
  end

  create_table "room_reviews", force: :cascade do |t|
    t.bigint "room_id"
    t.decimal "satisfaction", precision: 2, scale: 1
    t.decimal "cleanliness", precision: 2, scale: 1
    t.decimal "cost_performance", precision: 2, scale: 1
    t.decimal "amenity", precision: 2, scale: 1
    t.decimal "location", precision: 2, scale: 1
    t.decimal "access", precision: 2, scale: 1
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_room_reviews_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "host_id"
    t.string "title", null: false
    t.string "registration_id", null: false
    t.text "body", null: false
    t.string "image_url", null: false
    t.string "prefecture", null: false
    t.string "city", null: false
    t.decimal "latitude", precision: 9, scale: 6
    t.decimal "longitude", precision: 9, scale: 6
    t.string "max_stay_num", null: false
    t.string "check_in_time", null: false
    t.string "check_out_time", null: false
    t.integer "bed_room_num", null: false
    t.integer "bed_num", null: false
    t.integer "toilet_num", null: false
    t.integer "kitchen_num", null: false
    t.string "facilyty", default: "", null: false
    t.string "amenity", default: "", null: false
    t.string "pet", default: "", null: false
    t.text "child", default: "", null: false
    t.string "access", default: "", null: false
    t.integer "price", null: false
    t.decimal "review", precision: 2, scale: 1, default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_rooms_on_host_id"
  end

  add_foreign_key "available_dates", "rooms"
  add_foreign_key "host_reviews", "hosts"
  add_foreign_key "reserve_options", "options"
  add_foreign_key "reserve_options", "reserves", column: "reserve_id"
  add_foreign_key "reserves", "guests"
  add_foreign_key "reserves", "rooms"
  add_foreign_key "room_options", "options"
  add_foreign_key "room_options", "rooms"
  add_foreign_key "room_reviews", "rooms"
  add_foreign_key "rooms", "hosts"
end
