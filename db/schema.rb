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

ActiveRecord::Schema.define(version: 20170420070830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employee_assets", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "nsm_asset_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["employee_id"], name: "index_employee_assets_on_employee_id", using: :btree
    t.index ["nsm_asset_id"], name: "index_employee_assets_on_nsm_asset_id", using: :btree
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "user_name"
    t.date     "joining_date"
    t.date     "relieving_date"
    t.string   "emp_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "citrix_id"
    t.string   "project"
    t.string   "manager"
    t.boolean  "citrix_access"
    t.boolean  "admin_access"
    t.integer  "department",           default: 1
    t.boolean  "document_signed"
    t.boolean  "beachhead_computrace"
  end

  create_table "nsm_asset_types", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "charger"
    t.boolean  "laptop_bag"
  end

  create_table "nsm_assets", force: :cascade do |t|
    t.string   "code"
    t.integer  "nsm_asset_type_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "nsm_tag"
    t.string   "computer_name"
    t.string   "service_tag"
    t.string   "mac_id"
    t.boolean  "antivirus_check"
    t.boolean  "assigned"
    t.string   "invoice_number"
    t.string   "memory"
    t.string   "operating_system"
    t.index ["nsm_asset_type_id"], name: "index_nsm_assets_on_nsm_asset_type_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

end
