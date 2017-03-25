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

ActiveRecord::Schema.define(version: 20170325054634) do

  create_table "supplier_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ean"
    t.text     "description",    limit: 65535
    t.integer  "supplier_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.float    "sales_price",    limit: 24
    t.float    "purchase_price", limit: 24
    t.integer  "vat"
    t.index ["supplier_id"], name: "index_supplier_items_on_supplier_id", using: :btree
  end

  create_table "suppliers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "name",       limit: 65535
    t.text     "address",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
