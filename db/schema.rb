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

ActiveRecord::Schema.define(version: 2018_12_21_223449) do

  create_table "gogyocngs", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "gogyocng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gogyohankais", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "gogyohankai"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gogyoshigos", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "gogyoshigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gousans", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "gousan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "junijyus", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "junijyu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "junis", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "juni"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jushus", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "jushu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kokusens", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "kokusen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setsuiris", force: :cascade do |t|
    t.integer "year"
    t.string "setsuiri_str"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shugoshins", force: :cascade do |t|
    t.integer "shi_m"
    t.string "shugoshin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kan_d"
  end

  create_table "soukokus", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "soukoku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surigogyos", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "surigogyo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urazokans", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.integer "urazokan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "family_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "zokans", force: :cascade do |t|
    t.integer "shi"
    t.integer "setsuiri"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "zokan"
  end

end
