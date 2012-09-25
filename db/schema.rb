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

ActiveRecord::Schema.define(:version => 20120924234011) do

  create_table "countries", :force => true do |t|
    t.string "name_heb"
    t.string "name"
    t.string "code"
  end

  create_table "ref_departments", :force => true do |t|
    t.string "name"
  end

  create_table "ref_hospitals", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "requests", :force => true do |t|
    t.string   "department"
    t.string   "hospital"
    t.date     "begin_date"
    t.date     "finish_date"
    t.integer  "student_id"
    t.string   "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "requests", ["student_id"], :name => "index_requests_on_student_id"

  create_table "students", :force => true do |t|
    t.string   "name"
    t.integer  "country"
    t.string   "passport"
    t.date     "birthday"
    t.string   "university"
    t.integer  "year"
    t.date     "arrival_date"
    t.string   "languages"
    t.string   "past_departments"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "study_approval_file_name"
    t.string   "study_approval_content_type"
    t.integer  "study_approval_file_size"
    t.datetime "study_approval_updated_at"
    t.string   "request_form_file_name"
    t.string   "request_form_content_type"
    t.integer  "request_form_file_size"
    t.datetime "request_form_updated_at"
    t.string   "dorms_form_file_name"
    t.string   "dorms_form_content_type"
    t.integer  "dorms_form_file_size"
    t.datetime "dorms_form_updated_at"
    t.string   "payment"
    t.integer  "status"
  end

  create_table "tracks", :force => true do |t|
    t.boolean  "dorms"
    t.boolean  "payment"
    t.boolean  "laundry"
    t.boolean  "library"
    t.boolean  "laundry_back"
    t.boolean  "library_back"
    t.string   "dorms_c"
    t.string   "payment_c"
    t.string   "laundry_c"
    t.string   "library_c"
    t.string   "laundry_back_c"
    t.string   "library_back_c"
    t.integer  "student_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "tracks", ["student_id"], :name => "index_tracks_on_student_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
