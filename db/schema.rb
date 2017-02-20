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

ActiveRecord::Schema.define(version: 20170220125450) do

  create_table "distributor_profiles", force: :cascade do |t|
    t.integer  "distributor_id"
    t.string   "name"
    t.string   "last_name"
    t.text     "address"
    t.string   "contact_number"
    t.integer  "age"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["distributor_id"], name: "index_distributor_profiles_on_distributor_id"
  end

  create_table "distributors", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_distributors_on_email"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "supplier_id"
    t.string   "product_name"
    t.text     "description"
    t.float    "price"
    t.integer  "stock"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_suppliers_on_email"
  end

end
