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

ActiveRecord::Schema.define(:version => 20130107170330) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "dateadded"
    t.integer  "customerid"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "customers", ["order_id"], :name => "index_customers_on_order_id"

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.datetime "dateadded"
    t.integer  "manuid"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "manufacturers", ["order_id"], :name => "index_manufacturers_on_order_id"

  create_table "orders", :force => true do |t|
    t.string   "itemdesc"
    t.integer  "quantity"
    t.datetime "date"
    t.string   "manufacturer"
    t.integer  "itemno"
    t.integer  "origami_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "orders", ["origami_id"], :name => "index_orders_on_origami_id"

  create_table "origamis", :force => true do |t|
    t.string   "name"
    t.string   "artist"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
