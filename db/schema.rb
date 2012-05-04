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

ActiveRecord::Schema.define(:version => 20120503161816) do

  create_table "acts", :force => true do |t|
    t.string   "name"
    t.string   "photo"
    t.string   "inventory"
    t.string   "price_range"
    t.string   "line"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "acts_artists", :force => true do |t|
    t.integer "artist_id"
    t.integer "act_id"
  end

  create_table "addresses", :force => true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "tag"
    t.string   "name"
    t.string   "line_1"
    t.string   "line_2"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.text     "tag"
    t.string   "bio"
    t.string   "website_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "slug"
  end

  create_table "companies", :force => true do |t|
    t.string   "subdomain"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.integer  "artist_id"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "credit_cards", :force => true do |t|
    t.string   "encrypted_number"
    t.string   "type"
    t.string   "exp_month"
    t.string   "exp_year"
    t.integer  "customer_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "gender"
    t.datetime "birthdate"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "discounts", :force => true do |t|
    t.string   "name"
    t.decimal  "flat_amount"
    t.decimal  "percentage"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "discounts_orders", :force => true do |t|
    t.integer "discount_id"
    t.integer "order_id"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "quantity"
    t.string   "description"
    t.decimal  "price"
    t.integer  "order_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "billing_address_id"
    t.integer  "shipping_address_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "orders_taxes", :force => true do |t|
    t.integer "order_id"
    t.integer "tax_id"
  end

  create_table "payment_methods", :force => true do |t|
    t.string   "name"
    t.string   "is_cc"
    t.string   "is_cash"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payments", :force => true do |t|
    t.decimal  "amount"
    t.integer  "payment_method_id"
    t.string   "transaction_id"
    t.integer  "order_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "phones", :force => true do |t|
    t.string   "tag"
    t.string   "number"
    t.string   "country_code"
    t.string   "locality_code"
    t.string   "local_number"
    t.integer  "phonable_id"
    t.string   "phonable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "phones", ["number"], :name => "index_phones_on_number"

  create_table "photos", :force => true do |t|
    t.string   "tag"
    t.string   "url"
    t.string   "caption"
    t.string   "credit"
    t.integer  "photoable_id"
    t.string   "photoable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "shows", :force => true do |t|
    t.string   "tag"
    t.integer  "inventory"
    t.integer  "act_id"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "taxes", :force => true do |t|
    t.string   "name"
    t.decimal  "flat_amount"
    t.decimal  "percentage"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tickets", :force => true do |t|
    t.datetime "scanned_at"
    t.integer  "tier_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tiers", :force => true do |t|
    t.string   "tag"
    t.string   "description"
    t.decimal  "price"
    t.integer  "inventory"
    t.integer  "starting_inventory"
    t.integer  "show_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "screen_name"
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirm"
    t.string   "language"
    t.datetime "last_login"
    t.string   "last_ip"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
