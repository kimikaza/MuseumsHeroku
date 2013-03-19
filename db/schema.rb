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

ActiveRecord::Schema.define(:version => 20130318144142) do

  create_table "comments", :force => true do |t|
    t.string   "commtext"
    t.string   "commenter"
    t.integer  "museum_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "data_files", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "museums", :force => true do |t|
    t.text     "about_de"
    t.text     "about_en"
    t.text     "about_hr"
    t.string   "access"
    t.string   "additional_de"
    t.string   "additional_en"
    t.string   "additional_hr"
    t.string   "audio"
    t.decimal  "avg_rating",    :precision => 10, :scale => 0
    t.string   "cafe"
    t.string   "city"
    t.string   "comment_de"
    t.string   "comment_en"
    t.string   "comment_hr"
    t.string   "event_de"
    t.string   "event_en"
    t.string   "event_hr"
    t.boolean  "favourite"
    t.string   "guide_de"
    t.string   "guide_en"
    t.string   "guide_hr"
    t.string   "hours_de"
    t.string   "hours_en"
    t.string   "hours_hr"
    t.decimal  "latitude",      :precision => 10, :scale => 0
    t.decimal  "longitude",     :precision => 10, :scale => 0
    t.string   "mail"
    t.string   "name_de"
    t.string   "name_en"
    t.string   "name_hr"
    t.string   "no"
    t.string   "post"
    t.string   "price_de"
    t.string   "price_en"
    t.string   "price_hr"
    t.string   "server_id"
    t.string   "shop"
    t.string   "street"
    t.string   "tel"
    t.string   "timestmp"
    t.string   "web"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.integer  "num_ratings"
  end

  create_table "pictures", :force => true do |t|
    t.string   "name"
    t.string   "order"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "museum_id"
  end

end
