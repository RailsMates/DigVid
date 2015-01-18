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

ActiveRecord::Schema.define(version: 20150118124933) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clip_categories", force: :cascade do |t|
    t.integer  "clip_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "clip_categories", ["category_id"], name: "index_clip_categories_on_category_id"
  add_index "clip_categories", ["clip_id"], name: "index_clip_categories_on_clip_id"

  create_table "clips", force: :cascade do |t|
    t.string   "URL"
    t.integer  "counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "name"
    t.boolean  "confirmed"
  end

  add_index "clips", ["user_id"], name: "index_clips_on_user_id"

  create_table "favorite_clips", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "clip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favorite_clips", ["clip_id"], name: "index_favorite_clips_on_clip_id"
  add_index "favorite_clips", ["user_id"], name: "index_favorite_clips_on_user_id"

  create_table "friendships", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "liked_clips", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "clip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "liked_clips", ["clip_id"], name: "index_liked_clips_on_clip_id"
  add_index "liked_clips", ["user_id"], name: "index_liked_clips_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.string   "name"
    t.date     "date_of_birth"
    t.string   "password"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
