# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091015004924) do

  create_table "buys", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "plan_id"
    t.integer  "site_id"
  end

  create_table "placements", :force => true do |t|
    t.text     "section"
    t.text     "ad_type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "buy_id"
    t.integer  "quantity",   :default => 1
    t.integer  "rate",       :default => 0
  end

  create_table "plans", :force => true do |t|
    t.text     "advertiser_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contact_id"
    t.string   "name"
    t.string   "url"
  end

end
