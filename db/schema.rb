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

ActiveRecord::Schema.define(version: 20180123162424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.float    "price",                  null: false
    t.integer  "status",     default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supplier_products", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "product_title"
    t.integer  "supplier_id"
    t.string   "supplier_name"
    t.float    "price",         null: false
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "supplier_products", ["product_id"], name: "index_supplier_products_on_product_id", using: :btree
  add_index "supplier_products", ["supplier_id"], name: "index_supplier_products_on_supplier_id", using: :btree

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "supplier_products", "products"
  add_foreign_key "supplier_products", "suppliers"
end
