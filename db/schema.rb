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

ActiveRecord::Schema.define(version: 5) do

  create_table "games", force: :cascade do |t|
    t.integer "number_correct"
    t.integer "user_id"
    t.integer "game_points"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "drink"
    t.string "questions"
    t.string "instructions"
    t.string "ingredients"
    t.string "incorrect"
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "correct?"
    t.integer "incorrect?"
    t.integer "recipe_id"
    t.integer "game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.integer "total_points"
  end

end
