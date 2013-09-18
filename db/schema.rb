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

ActiveRecord::Schema.define(version: 20130918025447) do

  create_table "abilities", force: true do |t|
    t.integer  "rank"
    t.string   "name"
    t.string   "cost"
    t.string   "cooldown"
    t.integer  "range"
    t.text     "effect"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "champion_id"
  end

  add_index "abilities", ["champion_id"], name: "index_abilities_on_champion_id"

  create_table "champion_tags", force: true do |t|
    t.integer  "champion_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "champion_tags", ["champion_id"], name: "index_champion_tags_on_champion_id"
  add_index "champion_tags", ["tag_id"], name: "index_champion_tags_on_tag_id"

  create_table "champions", force: true do |t|
    t.integer  "lol_id"
    t.string   "name"
    t.string   "display_name"
    t.string   "title"
    t.text     "description"
    t.text     "quote"
    t.string   "quote_author"
    t.float    "range"
    t.float    "move_speed"
    t.float    "armor_base"
    t.float    "armor_level"
    t.float    "mana_base"
    t.float    "mana_level"
    t.float    "critical_chance_base"
    t.float    "critical_chance_level"
    t.float    "mana_regen_base"
    t.float    "mana_regen_level"
    t.float    "health_regen_base"
    t.float    "health_regen_level"
    t.float    "magic_resist_base"
    t.float    "magic_resist_level"
    t.float    "health_base"
    t.float    "health_level"
    t.float    "attack_base"
    t.float    "attack_level"
    t.float    "rating_defense"
    t.float    "rating_magic"
    t.float    "rating_difficulty"
    t.float    "rating_attack"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "icon_path"
    t.string   "portrait_path"
  end

  create_table "comments", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tips", force: true do |t|
    t.text     "content"
    t.integer  "champion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tips", ["champion_id"], name: "index_tips_on_champion_id"

  create_table "user_videos", force: true do |t|
    t.integer  "user_id"
    t.integer  "video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "videos", force: true do |t|
    t.string   "video"
    t.text     "video_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
    t.integer  "user_id"
  end

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end
