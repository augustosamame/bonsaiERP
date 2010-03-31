# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100330214802) do

  create_table "countries", :force => true do |t|
    t.string   "name",         :limit => 50
    t.string   "abbreviation", :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "taxes"
  end

  create_table "organisations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "country_id"
    t.string   "name",        :limit => 100
    t.string   "address"
    t.string   "address_alt"
    t.string   "phone",       :limit => 20
    t.string   "phone_alt",   :limit => 20
    t.string   "mobile",      :limit => 20
    t.string   "email"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "organisations", ["country_id"], :name => "index_organisations_on_country_id"
  add_index "organisations", ["user_id"], :name => "index_organisations_on_user_id"

  create_table "taxes", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation",    :limit => 10
    t.decimal  "rate",                          :precision => 5, :scale => 2
    t.integer  "organisation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taxes", ["organisation_id"], :name => "index_taxes_on_organisation_id"

  create_table "users", :force => true do |t|
    t.string   "email",                               :null => false
    t.string   "encrypted_password",   :limit => 40,  :null => false
    t.string   "password_salt",                       :null => false
    t.string   "confirmation_token",   :limit => 20
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token", :limit => 20
    t.string   "remember_token",       :limit => 20
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",           :limit => 80
    t.string   "last_name",            :limit => 80
    t.string   "phone",                :limit => 20
    t.string   "mobile",               :limit => 20
    t.string   "website",              :limit => 200
    t.string   "account_type",         :limit => 15
    t.text     "description"
  end

  add_index "users", ["first_name"], :name => "index_users_on_first_name"
  add_index "users", ["last_name"], :name => "index_users_on_last_name"

end
