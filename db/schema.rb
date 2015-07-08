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

ActiveRecord::Schema.define(version: 20150708104037) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string   "edu_level",  limit: 255
    t.string   "course",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "input_field_manager_values", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.integer  "input_field_manager_id", limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "input_field_manager_values", ["input_field_manager_id"], name: "index_input_field_manager_values_on_input_field_manager_id", using: :btree

  create_table "input_field_managers", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "category_id",      limit: 4
    t.string   "job_title",        limit: 255
    t.text     "job_description",  limit: 65535
    t.integer  "work_exp_min",     limit: 4
    t.integer  "work_exp_max",     limit: 4
    t.string   "salary_range_min", limit: 255
    t.string   "salary_range_max", limit: 255
    t.integer  "openings",         limit: 4
    t.integer  "industry_id",      limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "jobs", ["category_id"], name: "index_jobs_on_category_id", using: :btree
  add_index "jobs", ["industry_id"], name: "index_jobs_on_industry_id", using: :btree

  create_table "jobs_locations", id: false, force: :cascade do |t|
    t.integer "job_id",      limit: 4
    t.integer "location_id", limit: 4
  end

  add_index "jobs_locations", ["job_id"], name: "index_jobs_locations_on_job_id", using: :btree
  add_index "jobs_locations", ["location_id"], name: "index_jobs_locations_on_location_id", using: :btree

  create_table "locations", force: :cascade do |t|
    t.string   "city_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "input_field_manager_values", "input_field_managers"
  add_foreign_key "jobs", "categories"
  add_foreign_key "jobs", "industries"
end
