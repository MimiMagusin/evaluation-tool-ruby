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

ActiveRecord::Schema.define(version: 20171114120201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "start_date"
    t.string   "name"
    t.date     "end_date"
  end

  create_table "evaluations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "comment"
    t.string   "color"
    t.integer  "student_id"
  end

  add_index "evaluations", ["student_id"], name: "index_evaluations_on_student_id", using: :btree

  create_table "random_students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
    t.integer  "batch_id"
  end

  add_index "random_students", ["batch_id"], name: "index_random_students_on_batch_id", using: :btree
  add_index "random_students", ["student_id"], name: "index_random_students_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "current_evaluation"
    t.string   "image_url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "batch_id"
  end

  add_index "students", ["batch_id"], name: "index_students_on_batch_id", using: :btree

  add_foreign_key "evaluations", "students"
  add_foreign_key "random_students", "batches"
  add_foreign_key "random_students", "students"
  add_foreign_key "students", "batches"
end
