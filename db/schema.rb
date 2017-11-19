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

ActiveRecord::Schema.define(version: 20171119212204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "component_products", force: :cascade do |t|
    t.integer  "qty"
    t.integer  "component_id"
    t.integer  "product_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["component_id"], name: "index_component_products_on_component_id", using: :btree
    t.index ["product_id"], name: "index_component_products_on_product_id", using: :btree
  end

  create_table "components", force: :cascade do |t|
    t.integer  "manufacturer_id"
    t.string   "name"
    t.float    "height_in"
    t.float    "width_in"
    t.string   "image_url"
    t.string   "purchase_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["manufacturer_id"], name: "index_components_on_manufacturer_id", using: :btree
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "component_id"
    t.integer  "qty"
    t.float    "cost_each"
    t.float    "shipping_each"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["component_id"], name: "index_prices_on_component_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "msrp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "qty"
  end

  add_foreign_key "component_products", "components"
  add_foreign_key "component_products", "products"
  add_foreign_key "components", "manufacturers"
  add_foreign_key "prices", "components"
end
