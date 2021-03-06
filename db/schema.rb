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

ActiveRecord::Schema.define(version: 20160122084736) do

  create_table "allot_leaves", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
  end

  create_table "apples", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apply_leaves", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
    t.string   "name"
  end

  create_table "details", force: :cascade do |t|
    t.string   "designation"
    t.string   "department"
    t.string   "salary_structure"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "employee_id"
  end

  create_table "employee_details", force: :cascade do |t|
    t.string   "designation"
    t.string   "department"
    t.string   "salary_structure"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "employee_leave_heads", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "employee_id"
    t.integer  "leave_head_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.date     "date_of_joining"
    t.text     "address"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "state_id"
    t.integer  "leave_structure_id"
  end

  create_table "leave_allotments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "employee_id"
    t.integer  "leave_head_id"
    t.date     "from_date"
    t.date     "to_date"
    t.integer  "leave_structure_id"
  end

  create_table "leave_appends", force: :cascade do |t|
    t.integer  "leave_allotment_id"
    t.integer  "leave_structure_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "head_value"
  end

  create_table "leave_applies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "leave_allotment_id"
    t.date     "leave_date"
    t.string   "head_values"
  end

  create_table "leave_assignments", force: :cascade do |t|
    t.integer  "leave_structure_id"
    t.integer  "leave_head_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "leave_balances", force: :cascade do |t|
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "employee_id"
    t.integer  "balance_number"
  end

  create_table "leave_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_employees", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "employee_id"
    t.string   "value"
    t.integer  "structure_id"
    t.date     "from_date"
    t.date     "to_date"
    t.string   "head_name"
  end

  create_table "leave_heads", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "leave_balance_id"
    t.integer  "number"
    t.integer  "leave_structure_id"
  end

  create_table "leave_structures", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaves", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
  end

  create_table "numbers", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pay_months", force: :cascade do |t|
    t.string   "name"
    t.integer  "no_of_days"
    t.date     "from_date"
    t.date     "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salary_structures", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "employee_id"
    t.integer  "basic"
    t.integer  "conveyonce"
    t.integer  "special_allowance"
    t.integer  "da"
    t.integer  "hra"
    t.integer  "gross_salary"
    t.string   "gross"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
