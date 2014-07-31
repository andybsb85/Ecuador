# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140728224040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "cities", ["region_id"], name: "index_cities_on_region_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.text     "geography"
    t.text     "weather"
    t.text     "time_zone"
    t.text     "visa_information"
    t.text     "population"
    t.text     "currency"
    t.text     "emergency_services"
    t.text     "transport"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "country_translations", force: true do |t|
    t.integer  "country_id",         null: false
    t.string   "locale",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
    t.text     "geography"
    t.text     "weather"
    t.text     "time_zone"
    t.text     "visa_information"
    t.text     "population"
    t.text     "currency"
    t.text     "emergency_services"
    t.text     "transport"
  end

  add_index "country_translations", ["country_id"], name: "index_country_translations_on_country_id", using: :btree
  add_index "country_translations", ["locale"], name: "index_country_translations_on_locale", using: :btree

  create_table "destination_translations", force: true do |t|
    t.integer  "destination_id", null: false
    t.string   "locale",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.text     "description"
  end

  add_index "destination_translations", ["destination_id"], name: "index_destination_translations_on_destination_id", using: :btree
  add_index "destination_translations", ["locale"], name: "index_destination_translations_on_locale", using: :btree

  create_table "destinations", force: true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.integer  "type_destination_id"
    t.string   "image_url"
    t.text     "description"
    t.text     "address"
    t.text     "phone"
    t.text     "website"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "destinations", ["city_id"], name: "index_destinations_on_city_id", using: :btree
  add_index "destinations", ["type_destination_id"], name: "index_destinations_on_type_destination_id", using: :btree

  create_table "events", force: true do |t|
    t.string   "name"
    t.text     "image_url"
    t.text     "description"
    t.date     "date"
    t.text     "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_destinations", force: true do |t|
    t.integer  "destination_id"
    t.integer  "plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_destinations", ["destination_id"], name: "index_line_destinations_on_destination_id", using: :btree
  add_index "line_destinations", ["plan_id"], name: "index_line_destinations_on_plan_id", using: :btree

  create_table "plans", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_destinations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
