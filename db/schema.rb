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

ActiveRecord::Schema.define(version: 20140417103004) do

  create_table "account_types", force: true do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "factor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
  end

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.integer  "account_type_id"
    t.decimal  "init_amount",     precision: 10, scale: 0
    t.text     "note"
    t.boolean  "active"
    t.integer  "currency_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.boolean  "active"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "currencies", force: true do |t|
    t.string   "name"
    t.string   "symbol"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payees", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "contact"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.decimal  "quantity",    precision: 10, scale: 0
    t.decimal  "rate",        precision: 10, scale: 0
    t.decimal  "amount",      precision: 10, scale: 0
    t.integer  "unit_id"
    t.integer  "category_id"
    t.integer  "payee_id"
    t.integer  "shopping_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shoppings", force: true do |t|
    t.integer  "account_id"
    t.date     "date"
    t.decimal  "amount",      precision: 10, scale: 0
    t.integer  "bill_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transfers", force: true do |t|
    t.integer  "from_account"
    t.integer  "to_account"
    t.decimal  "amount",       precision: 10, scale: 0
    t.date     "date"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "name"
    t.string   "symbol"
    t.boolean  "active"
    t.string   "unit_type"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
