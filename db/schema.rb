# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_28_172630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.integer "postal_code"
    t.bigint "league_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["league_id"], name: "index_clubs_on_league_id"
  end

  create_table "contests", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "date"
    t.bigint "user_id", null: false
    t.bigint "league_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["league_id"], name: "index_contests_on_league_id"
    t.index ["user_id"], name: "index_contests_on_user_id"
  end

  create_table "contests_formats", id: false, force: :cascade do |t|
    t.bigint "contest_id", null: false
    t.bigint "format_id", null: false
  end

  create_table "formats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "licence_number"
    t.string "category"
    t.string "sex"
    t.bigint "club_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["club_id"], name: "index_members_on_club_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "firstname"
    t.string "lastname"
    t.bigint "league_id", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["league_id"], name: "index_users_on_league_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clubs", "leagues"
  add_foreign_key "contests", "leagues"
  add_foreign_key "contests", "users"
  add_foreign_key "members", "clubs"
  add_foreign_key "users", "leagues"
end
