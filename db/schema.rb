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

ActiveRecord::Schema.define(version: 20160514180728) do

  create_table "metric_units", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "address",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "product_groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.integer  "product_group_id", limit: 4
    t.integer  "metric_unit_id",   limit: 4
    t.decimal  "unit_prize",                   precision: 10
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "products", ["metric_unit_id"], name: "index_products_on_metric_unit_id", using: :btree
  add_index "products", ["product_group_id"], name: "index_products_on_product_group_id", using: :btree

  create_table "stock_items", force: :cascade do |t|
    t.integer  "stock_id",     limit: 4
    t.integer  "product_id",   limit: 4
    t.decimal  "unit_prize",               precision: 10
    t.decimal  "amount",                   precision: 10
    t.decimal  "item_prize",               precision: 10
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "product_name", limit: 255
  end

  add_index "stock_items", ["product_id"], name: "index_stock_items_on_product_id", using: :btree
  add_index "stock_items", ["stock_id"], name: "index_stock_items_on_stock_id", using: :btree

  create_table "stock_operations", force: :cascade do |t|
    t.integer  "stock_type", limit: 4
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.datetime "entry_date"
    t.integer  "stock_operation_id", limit: 4
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.decimal  "price",                          precision: 10
    t.integer  "place_id",           limit: 4
    t.boolean  "is_stock_template"
    t.integer  "stock_id",           limit: 4
    t.decimal  "refund",                         precision: 10
    t.string   "product_name",       limit: 255
  end

  add_index "stocks", ["place_id"], name: "index_stocks_on_place_id", using: :btree
  add_index "stocks", ["stock_id"], name: "index_stocks_on_stock_id", using: :btree
  add_index "stocks", ["stock_operation_id"], name: "index_stocks_on_stock_operation_id", using: :btree

  add_foreign_key "products", "metric_units"
  add_foreign_key "products", "product_groups"
  add_foreign_key "stock_items", "products"
  add_foreign_key "stock_items", "stocks"
  add_foreign_key "stocks", "places"
  add_foreign_key "stocks", "stock_operations"
  add_foreign_key "stocks", "stocks"
end
