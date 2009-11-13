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

ActiveRecord::Schema.define(:version => 20091112002550) do

  create_table "images", :force => true do |t|
    t.string   "filename"
    t.string   "content_type"
    t.integer  "size"
    t.integer  "height"
    t.integer  "width"
    t.integer  "parent_id"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.string   "caption"
    t.integer  "position"
    t.integer  "stylist_id"
    t.string   "image_type"
    t.boolean  "show_in_gallery", :default => true, :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "display"
    t.string   "url"
  end

  create_table "promos", :force => true do |t|
    t.string   "title"
    t.string   "code"
    t.date     "valid_date"
    t.boolean  "is_valid"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "restrictions"
    t.boolean  "display_status"
    t.integer  "service_id"
    t.boolean  "hidden_promo"
  end

  create_table "services", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "price_range"
  end

  create_table "stylists", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "bio"
    t.string   "title"
    t.integer  "image_id"
    t.string   "professional_title"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order"
  end

  create_table "testimonials", :force => true do |t|
    t.string   "body"
    t.string   "title"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
