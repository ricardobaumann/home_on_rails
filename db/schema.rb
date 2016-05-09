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

ActiveRecord::Schema.define(version: 20160509130944) do

  create_table "metric_units", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "product_group_id"
    t.integer  "metric_unit_id"
    t.decimal  "unit_prize"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "products", ["metric_unit_id"], name: "index_products_on_metric_unit_id"
  add_index "products", ["product_group_id"], name: "index_products_on_product_group_id"

  create_table "stock_items", force: :cascade do |t|
    t.integer  "stock_id"
    t.integer  "product_id"
    t.decimal  "unit_prize"
    t.decimal  "amount"
    t.decimal  "item_prize"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stock_items", ["product_id"], name: "index_stock_items_on_product_id"
  add_index "stock_items", ["stock_id"], name: "index_stock_items_on_stock_id"

  create_table "stock_operations", force: :cascade do |t|
    t.integer  "stock_type"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.datetime "entry_date"
    t.integer  "stock_operation_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.decimal  "price"
    t.integer  "place_id"
    t.boolean  "is_stock_template"
    t.integer  "stock_id"
    t.decimal  "refund"
  end

  add_index "stocks", ["place_id"], name: "index_stocks_on_place_id"
  add_index "stocks", ["stock_id"], name: "index_stocks_on_stock_id"
  add_index "stocks", ["stock_operation_id"], name: "index_stocks_on_stock_operation_id"

end
