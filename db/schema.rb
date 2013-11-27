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

ActiveRecord::Schema.define(version: 20131127084356) do

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_tasks", force: true do |t|
    t.integer  "price"
    t.string   "url"
    t.integer  "deploy_type"
    t.integer  "score"
    t.string   "remind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_infos", force: true do |t|
    t.string   "real_name"
    t.integer  "sex"
    t.string   "qq"
    t.string   "email"
    t.string   "telphone"
    t.string   "recommend_man"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.string   "detail_address"
    t.string   "logo"
    t.string   "send_province"
    t.string   "receipt_province"
  end

  create_table "user_logs", force: true do |t|
    t.integer  "user_id"
    t.string   "ip"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
  end

end
