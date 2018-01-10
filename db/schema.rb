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

ActiveRecord::Schema.define(version: 20180110175459) do

  create_table "aptitudes", force: :cascade do |t|
    t.integer "type"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "clans" because of following StandardError
#   Unknown type 'has_many' for column 'unicorns'

# Could not dump table "living_spaces" because of following StandardError
#   Unknown type 'has_many' for column 'unicorns'

  create_table "poisons", force: :cascade do |t|
    t.string "name"
    t.integer "power"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "unicorns" because of following StandardError
#   Unknown type 'has_one' for column 'living_space'

end
