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

ActiveRecord::Schema.define(version: 20141231040929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: true do |t|
    t.string   "name",       limit: nil
    t.float    "cost"
    t.string   "category",   limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "menu_items", force: true do |t|
    t.integer  "menu_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "menu_items", ["item_id"], name: "index_menu_items_on_item_id", using: :btree
  add_index "menu_items", ["menu_id"], name: "index_menu_items_on_menu_id", using: :btree

  create_table "menus", force: true do |t|
    t.string   "name",       limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "profiles", force: true do |t|
    t.string   "f_name",     limit: nil
    t.string   "l_name",     limit: nil
    t.string   "image",      limit: nil
    t.integer  "user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",        limit: nil
    t.integer  "latest_venue"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "users", ["latest_venue"], name: "index_users_on_latest_venue", using: :btree

  create_table "venue_menus", force: true do |t|
    t.integer  "venue_id"
    t.integer  "menu_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "venue_menus", ["menu_id"], name: "index_venue_menus_on_menu_id", using: :btree
  add_index "venue_menus", ["venue_id"], name: "index_venue_menus_on_venue_id", using: :btree

  create_table "venues", force: true do |t|
    t.string   "name",       limit: nil
    t.string   "slogan",     limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.integer  "user_id"
    t.integer  "venue_id"
    t.integer  "visits"
    t.datetime "last_check_in"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "visits", ["user_id"], name: "index_visits_on_user_id", using: :btree
  add_index "visits", ["venue_id"], name: "index_visits_on_venue_id", using: :btree

end
