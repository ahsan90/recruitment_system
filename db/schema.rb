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

ActiveRecord::Schema.define(version: 20141115175804) do

  create_table "customers", force: true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers", force: true do |t|
    t.string   "company_name"
    t.string   "contact_person"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vacancies", force: true do |t|
    t.string   "title"
    t.integer  "no_of_jobs"
    t.text     "description"
    t.string   "job_type"
    t.text     "academic_requirements"
    t.text     "experience"
    t.text     "additional_requirements"
    t.string   "job_location"
    t.string   "salary"
    t.text     "benefits"
    t.string   "job_source"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "job_category_id"
  end

  add_index "vacancies", ["job_category_id"], name: "index_vacancies_on_job_category_id"

end
