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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130420194839) do

  create_table "activities", :force => true do |t|
    t.string   "activity_type"
    t.string   "image"
    t.string   "name"
    t.string   "location"
    t.string   "time"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.integer  "cart_id"
    t.decimal  "distance",      :precision => 8, :scale => 2
  end

  create_table "carts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "carts", ["activity_id"], :name => "index_carts_on_activity_id"
  add_index "carts", ["user_id", "activity_id"], :name => "index_carts_on_user_id_and_activity_id", :unique => true
  add_index "carts", ["user_id"], :name => "index_carts_on_user_id"

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nightclubs", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "rating"
    t.string   "image"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "reservations", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "restaurants", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "rating"
    t.string   "image"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "cart_id"
  end

end
