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

ActiveRecord::Schema.define(version: 20160417191435) do

  create_table "books", force: :cascade do |t|
    t.string   "title",                     limit: 255
    t.string   "name",                      limit: 255
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.string   "isdn",                      limit: 255
    t.integer  "book_category",             limit: 4
    t.integer  "year_of_publication",       limit: 4
    t.string   "condition",                 limit: 255
    t.string   "description",               limit: 255
    t.decimal  "original_price",                        precision: 5, scale: 2
    t.decimal  "offer_price",                           precision: 5, scale: 2
    t.integer  "is_available_for_exchange", limit: 1
    t.string   "book_status",               limit: 255
    t.string   "avatar_file_name",          limit: 255
    t.string   "avatar_content_type",       limit: 255
    t.integer  "avatar_file_size",          limit: 4
    t.datetime "avatar_updated_at"
    t.integer  "created_by",                limit: 4
    t.integer  "updated_by",                limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.string   "reference",  limit: 255
    t.integer  "quantity",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

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
    t.string   "username",               limit: 255
    t.integer  "contact_number_1",       limit: 8
    t.integer  "contact_number_2",       limit: 8
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
