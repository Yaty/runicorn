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

ActiveRecord::Schema.define(version: 1) do

  create_table "aptitudes", force: :cascade do |t|
    t.integer "unicorn_id"
    t.string "name"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unicorn_id"], name: "index_aptitudes_on_unicorn_id"
  end

  create_table "clans", force: :cascade do |t|
    t.string "name"
    t.integer "unicorn_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unicorn_id"], name: "index_clans_on_unicorn_id"
  end

  create_table "living_spaces", force: :cascade do |t|
    t.integer "clan_id"
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clan_id"], name: "index_living_spaces_on_clan_id"
  end

  create_table "poison_unicorns", force: :cascade do |t|
    t.integer "unicorn_id"
    t.integer "poison_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poison_id"], name: "index_poison_unicorns_on_poison_id"
    t.index ["unicorn_id"], name: "index_poison_unicorns_on_unicorn_id"
  end

  create_table "poisons", force: :cascade do |t|
    t.string "name"
    t.integer "power"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unicorns", force: :cascade do |t|
    t.integer "clan_id"
    t.integer "living_space_id"
    t.string "name"
    t.integer "age"
    t.boolean "sex"
    t.integer "health"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clan_id"], name: "index_unicorns_on_clan_id"
    t.index ["living_space_id"], name: "index_unicorns_on_living_space_id"
  end

end
