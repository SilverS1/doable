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

ActiveRecord::Schema.define(version: 20160715121041) do

  create_table "todo_items", force: :cascade do |t|
    t.string   "content",      limit: 255
    t.integer  "importance",   limit: 4
    t.datetime "due_date"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "todo_list_id", limit: 4
    t.integer  "user_id",      limit: 4
    t.boolean  "checked",                  default: false
  end

  add_index "todo_items", ["todo_list_id"], name: "index_todo_items_on_todo_list_id", using: :btree
  add_index "todo_items", ["user_id"], name: "index_todo_items_on_user_id", using: :btree

  create_table "todo_lists", force: :cascade do |t|
    t.string  "list_type",   limit: 255
    t.string  "title",       limit: 255
    t.integer "user_id",     limit: 4
    t.boolean "remove_self",             default: false
    t.string  "color",       limit: 255
  end

  add_index "todo_lists", ["user_id"], name: "index_todo_lists_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "role",                   limit: 255
    t.string   "username",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "todo_lists", "users"
end
