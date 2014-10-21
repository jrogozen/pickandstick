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

ActiveRecord::Schema.define(version: 20141021172647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "name"
    t.string   "password_salt"
    t.string   "password_hash"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matchup_teams", force: true do |t|
    t.integer  "matchup_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matchup_teams", ["matchup_id"], name: "index_matchup_teams_on_matchup_id", using: :btree
  add_index "matchup_teams", ["team_id"], name: "index_matchup_teams_on_team_id", using: :btree

  create_table "matchups", force: true do |t|
    t.integer  "winner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "week"
  end

  add_index "matchups", ["winner_id"], name: "index_matchups_on_winner_id", using: :btree

  create_table "picks", force: true do |t|
    t.integer  "user_id"
    t.integer  "matchup_id"
    t.integer  "team_id"
    t.boolean  "outcome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "picks", ["matchup_id"], name: "index_picks_on_matchup_id", using: :btree
  add_index "picks", ["team_id"], name: "index_picks_on_team_id", using: :btree
  add_index "picks", ["user_id"], name: "index_picks_on_user_id", using: :btree

  create_table "records", force: true do |t|
    t.integer  "user_id"
    t.integer  "week"
    t.integer  "wins"
    t.integer  "losses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "records", ["user_id"], name: "index_records_on_user_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_hash"
    t.string   "password_salt"
  end

end
