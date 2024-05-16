# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_16_192621) do
  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puzzle_times", force: :cascade do |t|
    t.integer "time"
    t.integer "puzzles_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "puzzle_id"
    t.index ["puzzle_id"], name: "index_puzzle_times_on_puzzle_id"
    t.index ["puzzles_id"], name: "index_puzzle_times_on_puzzles_id"
  end

  create_table "puzzles", force: :cascade do |t|
    t.string "title"
    t.integer "piece_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "brand_id"
    t.index ["brand_id"], name: "index_puzzles_on_brand_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "puzzle_times", "puzzles"
  add_foreign_key "puzzle_times", "puzzles", column: "puzzles_id"
  add_foreign_key "puzzles", "brands"
end
