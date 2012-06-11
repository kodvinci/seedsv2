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

ActiveRecord::Schema.define(:version => 20111211233305) do

  create_table "badge_lists", :force => true do |t|
    t.integer  "luid"
    t.integer  "bid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "badges", :force => true do |t|
    t.integer  "BID"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "borrowers", :force => true do |t|
    t.integer  "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "category"
    t.text     "description"
    t.integer  "sum"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "pic_url"
  end

  create_table "decision_logs", :force => true do |t|
    t.integer  "luid"
    t.integer  "decision_id"
    t.integer  "story_id"
    t.string   "note"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "decision_objects", :force => true do |t|
    t.text     "description"
    t.text     "requirements"
    t.integer  "story_object_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "to_story_id"
    t.text     "hints"
  end

  add_index "decision_objects", ["story_object_id"], :name => "index_decision_objects_on_story_object_id"

  create_table "event_logs", :force => true do |t|
    t.integer  "luid"
    t.text     "event"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lenders", :force => true do |t|
    t.integer  "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "class_type"
    t.integer  "experience"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "credit"
    t.string   "pic_url"
  end

  create_table "story_choices", :force => true do |t|
    t.integer  "sid"
    t.text     "choices"
    t.integer  "mapping"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "story_objects", :force => true do |t|
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "transactions", :force => true do |t|
    t.integer  "UID"
    t.integer  "BID"
    t.decimal  "amount"
    t.datetime "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
