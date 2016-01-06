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

ActiveRecord::Schema.define(version: 20160106103430) do

  create_table "apples", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.date     "date_of_joining"
    t.text     "address"
    t.string   "state"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "salary_structures", force: :cascade do |t|
    t.string   "basic"
    t.string   "da"
    t.string   "hra"
    t.string   "conveyonce"
    t.string   "special_allowance"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "employee_id"
  end

end
