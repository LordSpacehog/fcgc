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

ActiveRecord::Schema.define(version: 20141030004526) do

  create_table "categories", force: true do |t|
    t.string   "name",       limit: 50
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["position"], name: "index_categories_on_position", unique: true

  create_table "forums", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.text     "body"
    t.datetime "mtime"
    t.datetime "posted"
    t.integer  "topic_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["topic_id"], name: "index_posts_on_topic_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "sub_forums", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sub_forums", ["category_id"], name: "index_sub_forums_on_category_id"

  create_table "topics", force: true do |t|
    t.string   "title"
    t.integer  "subforum_id"
    t.datetime "lastpost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topics", ["subforum_id"], name: "index_topics_on_subforum_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "bio"
    t.string   "website"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true

end
