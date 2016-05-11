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

ActiveRecord::Schema.define(version: 20160511023852) do

  create_table "animes", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chapters", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "manga_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chapters", ["manga_id"], name: "index_chapters_on_manga_id"

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "anime_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["anime_id"], name: "index_comments_on_anime_id"

  create_table "episodes", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "anime_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "episodes", ["anime_id"], name: "index_episodes_on_anime_id"

  create_table "mangas", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "secondseason_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["secondseason_id"], name: "index_posts_on_secondseason_id"

  create_table "second_season_episodes", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "secondseason_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "second_season_episodes", ["secondseason_id"], name: "index_second_season_episodes_on_secondseason_id"

  create_table "secondseasons", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "views", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "manga_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "views", ["manga_id"], name: "index_views_on_manga_id"

end
