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

ActiveRecord::Schema.define(version: 20160217030341) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "badan_kehormatans", force: :cascade do |t|
    t.integer  "parliament_member_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "comissions", force: :cascade do |t|
    t.string   "code"
    t.integer  "parliament_member_id"
    t.string   "comment"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "dapils", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fractions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fractions_parliament_members", id: false, force: :cascade do |t|
    t.integer "fraction_id"
    t.integer "parliament_member_id"
  end

  add_index "fractions_parliament_members", ["fraction_id"], name: "index_fractions_parliament_members_on_fraction_id", using: :btree
  add_index "fractions_parliament_members", ["parliament_member_id"], name: "index_fractions_parliament_members_on_parliament_member_id", using: :btree

  create_table "information", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organize_fractions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parliament_members", force: :cascade do |t|
    t.string   "name"
    t.integer  "dapil_id"
    t.integer  "fraction_id"
    t.integer  "level_fraction_id"
    t.integer  "badan_anggaran_id"
    t.integer  "badan_musyawarah_id"
    t.integer  "badan_kehormatan_id"
    t.integer  "badan_legislatif_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "structure_fractions", force: :cascade do |t|
    t.integer  "fraction_id"
    t.integer  "parliament_member_id"
    t.integer  "level_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
