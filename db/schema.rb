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

ActiveRecord::Schema.define(:version => 20101213033140) do

  create_table "clients", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "number2", :primary_key => "empId", :force => true do |t|
    t.string "emIdname"
  end

  create_table "pract1", :id => false, :force => true do |t|
    t.string "val1", :limit => 100, :default => "", :null => false
    t.string "val2", :limit => 100, :default => "", :null => false
    t.string "val3", :limit => 100, :default => "", :null => false
  end

  create_table "sginfo1", :id => false, :force => true do |t|
    t.string "sginfo1ID", :limit => 100,        :default => "", :null => false
    t.string "year",      :limit => 100,        :default => "", :null => false
    t.string "make",      :limit => 100,        :default => "", :null => false
    t.string "model",     :limit => 100,        :default => "", :null => false
    t.string "style",     :limit => 100,        :default => "", :null => false
    t.text   "mileage",   :limit => 2147483647,                 :null => false
    t.text   "prt",       :limit => 2147483647,                 :null => false
    t.text   "trd",       :limit => 2147483647,                 :null => false
    t.text   "rtl",       :limit => 2147483647,                 :null => false
    t.text   "money",     :limit => 2147483647,                 :null => false
    t.text   "url",       :limit => 2147483647,                 :null => false
  end

  create_table "sginfo1options", :id => false, :force => true do |t|
    t.string "sginfo1optionsid", :limit => 100, :default => "", :null => false
    t.string "sginfo1id",        :limit => 100, :default => "", :null => false
    t.string "type",             :limit => 100, :default => "", :null => false
    t.string "arrayid",          :limit => 100, :default => "", :null => false
    t.string "val1",             :limit => 100, :default => "", :null => false
    t.string "val2",             :limit => 100, :default => "", :null => false
    t.string "val3",             :limit => 100, :default => "", :null => false
    t.string "val4",             :limit => 100, :default => "", :null => false
    t.string "val5",             :limit => 100, :default => "", :null => false
    t.string "val6",             :limit => 100, :default => "", :null => false
    t.string "val7",             :limit => 100, :default => "", :null => false
    t.string "val8",             :limit => 100, :default => "", :null => false
    t.string "val9",             :limit => 100, :default => "", :null => false
    t.string "val10",            :limit => 100, :default => "", :null => false
  end

  create_table "sginfo4", :id => false, :force => true do |t|
    t.string "sginfo4ID",  :limit => 100,        :default => "", :null => false
    t.string "year",       :limit => 100,        :default => "", :null => false
    t.string "make",       :limit => 100,        :default => "", :null => false
    t.string "model",      :limit => 100,        :default => "", :null => false
    t.string "citympg",    :limit => 100,        :default => "", :null => false
    t.string "highwaympg", :limit => 100,        :default => "", :null => false
    t.text   "url",        :limit => 2147483647,                 :null => false
  end

  create_table "user1s", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
  end

  add_index "user1s", ["email"], :name => "index_user1s_on_email", :unique => true

end
