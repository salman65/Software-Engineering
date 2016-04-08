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

ActiveRecord::Schema.define(version: 20160404121900) do

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.string   "address",    limit: nil
    t.string   "phone",      limit: nil
    t.string   "items",      limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "totalprice"
  end

  create_table "reviews", force: true do |t|
    t.integer  "ontime"
    t.integer  "foodquality"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "overallrating"
  end

  create_table "users", force: true do |t|
    t.string   "name",            limit: nil
    t.string   "email",           limit: nil
    t.string   "password",        limit: nil
    t.string   "cpassword",       limit: nil
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest"
  end

end
