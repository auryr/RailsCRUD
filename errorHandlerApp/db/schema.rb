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

ActiveRecord::Schema.define(version: 20170908032413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "error_msgs", force: :cascade do |t|
    t.string "message"
    t.string "description"
    t.string "photo"
    t.string "solution"
    t.string "category"
    t.bigint "prog_language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prog_language_id"], name: "index_error_msgs_on_prog_language_id"
  end

  create_table "prog_languages", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
