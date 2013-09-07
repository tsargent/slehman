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

ActiveRecord::Schema.define(:version => 20130905021134) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.integer  "position"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "personnel"
    t.integer  "year"
    t.string   "cta_url"
    t.string   "cta_text"
    t.string   "project"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "position"
    t.boolean  "display"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "document"
    t.string   "external_url"
  end

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "documentable_id"
    t.string   "documentable_type"
    t.string   "pdf"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "datetime"
    t.text     "address"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.date     "date"
    t.time     "time"
    t.string   "url"
    t.string   "location"
    t.string   "venue"
    t.string   "slug"
    t.time     "time2"
    t.string   "time_string"
  end

  add_index "events", ["slug"], :name => "index_events_on_slug"

  create_table "links", :force => true do |t|
    t.string   "url"
    t.string   "service"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "linkable_id"
    t.string   "linkable_type"
    t.string   "name"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.text     "caption"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "image"
    t.integer  "photoable_id"
    t.string   "photoable_type"
    t.string   "title"
    t.integer  "project_id"
    t.integer  "post_id"
    t.integer  "album_id"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "published"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
    t.boolean  "sidebar"
    t.text     "excerpt"
    t.boolean  "display"
  end

  add_index "posts", ["slug"], :name => "index_posts_on_slug"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "slug"
  end

  add_index "projects", ["slug"], :name => "index_projects_on_slug"

  create_table "quotes", :force => true do |t|
    t.string   "source"
    t.text     "body"
    t.boolean  "display"
    t.integer  "position"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "url_text"
    t.boolean  "featured"
  end

  create_table "reviews", :force => true do |t|
    t.string   "source"
    t.text     "body"
    t.string   "url"
    t.integer  "position"
    t.boolean  "display"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tracks", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "audio"
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "project_id"
    t.integer  "album_id"
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.text     "embed"
    t.integer  "position"
    t.boolean  "display"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
