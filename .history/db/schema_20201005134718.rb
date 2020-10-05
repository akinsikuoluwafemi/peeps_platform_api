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

ActiveRecord::Schema.define(version: 2020_10_05_122501) do

  # create_table "request_users", force: :cascade do |t|
  #   t.integer "request_id"
  #   t.integer "user_id"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  # end

  create_table "requests", force: :cascade do |t|
    t.text "description"
    t.float "lat"
    t.float "lng"
    t.boolean "fulfilled", default: false
    t.string "request_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  # create_table "requests_users", force: :cascade do |t|
  #   t.integer "request_id"
  #   t.integer "user_id"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  # end

  # create_table "responders", force: :cascade do |t|
  #   t.integer "request_id"
  #   t.integer "user_id"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  # end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  # create_table "volunteers", force: :cascade do |t|
  #   t.integer "request_id"
  #   t.integer "user_id"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  # end

end
