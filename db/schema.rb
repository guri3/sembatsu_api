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

ActiveRecord::Schema.define(version: 2018_10_19_034655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.string "gender", null: false
    t.date "birthday", null: false
    t.string "city", null: false
    t.string "country", null: false
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
    t.string "gender", null: false
    t.date "birthday", null: false
    t.string "city", null: false
    t.string "country", null: false
    t.string "rental_location", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_hosts_on_confirmation_token", unique: true
    t.index ["email"], name: "index_hosts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_hosts_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_hosts_on_uid_and_provider", unique: true
  end

  create_table "options", force: :cascade do |t|
    t.bigint "order_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_options_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "guest_id"
    t.bigint "room_id"
    t.date "order_date", null: false
    t.integer "total_cost", null: false
    t.integer "howmany_nights", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_orders_on_guest_id"
    t.index ["room_id"], name: "index_orders_on_room_id"
  end

  create_table "room_reviews", force: :cascade do |t|
    t.bigint "room_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_room_reviews_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "host_id"
    t.string "location", null: false
    t.integer "price", null: false
    t.string "city", null: false
    t.string "country", null: false
    t.boolean "wifi"
    t.integer "bed_num"
    t.integer "bath_room_num"
    t.boolean "wash_machine"
    t.boolean "kitchen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_rooms_on_host_id"
  end

  add_foreign_key "host_reviews", "hosts"
  add_foreign_key "options", "orders"
  add_foreign_key "orders", "guests"
  add_foreign_key "orders", "rooms"
  add_foreign_key "room_reviews", "rooms"
  add_foreign_key "rooms", "hosts"
end
