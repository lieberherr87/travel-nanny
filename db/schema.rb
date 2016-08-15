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

ActiveRecord::Schema.define(version: 20160815130943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "full_price"
    t.integer  "users_id"
    t.integer  "offers_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offers_id"], name: "index_bookings_on_offers_id", using: :btree
    t.index ["users_id"], name: "index_bookings_on_users_id", using: :btree
  end

  create_table "offers", force: :cascade do |t|
    t.string   "location"
    t.integer  "price_per_day"
    t.string   "superpower"
    t.string   "video"
    t.integer  "users_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["users_id"], name: "index_offers_on_users_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "content"
    t.integer  "rating"
    t.integer  "bookings_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bookings_id"], name: "index_reviews_on_bookings_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image"
    t.boolean  "nanny"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bookings", "offers", column: "offers_id"
  add_foreign_key "bookings", "users", column: "users_id"
  add_foreign_key "offers", "users", column: "users_id"
  add_foreign_key "reviews", "bookings", column: "bookings_id"
end
