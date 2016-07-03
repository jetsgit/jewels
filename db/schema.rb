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

ActiveRecord::Schema.define(version: 20160630193252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.integer  "jewel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "images", ["jewel_id"], name: "index_images_on_jewel_id", using: :btree

  create_table "jewels", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "shine"
    t.decimal  "price"
    t.integer  "rarity"
    t.string   "color"
    t.integer  "faces"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "stars"
    t.string   "author"
    t.text     "body"
    t.integer  "jewel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["jewel_id"], name: "index_reviews_on_jewel_id", using: :btree

  add_foreign_key "images", "jewels"
  add_foreign_key "reviews", "jewels"
end