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

ActiveRecord::Schema[7.1].define(version: 2024_01_25_013643) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "complex_dish_kitchens", force: :cascade do |t|
    t.string "complex_dish_name"
    t.text "complex_dish_ingredients"
    t.integer "ingredient_weight_in_gram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "complex_dish_kitchens_dish_or_drinks", id: false, force: :cascade do |t|
    t.bigint "complex_dish_kitchen_id", null: false
    t.bigint "dish_or_drink_id", null: false
    t.index ["complex_dish_kitchen_id", "dish_or_drink_id"], name: "index_cd_kitchen_do_drink", unique: true
    t.index ["complex_dish_kitchen_id"], name: "idx_on_complex_dish_kitchen_id_e3a7e00d47"
    t.index ["dish_or_drink_id", "complex_dish_kitchen_id"], name: "index_do_drink_cd_kitchen"
    t.index ["dish_or_drink_id"], name: "index_complex_dish_kitchens_dish_or_drinks_on_dish_or_drink_id"
  end

  create_table "dish_or_drinks", force: :cascade do |t|
    t.string "name"
    t.text "ingredients"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "calories_in_hundred_g"
  end

  create_table "jornalentries", force: :cascade do |t|
    t.date "date"
    t.string "list_of_food"
    t.integer "glucose_mg_dl"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "tested_at"
    t.bigint "dish_or_drink_id"
    t.index ["dish_or_drink_id"], name: "index_jornalentries_on_dish_or_drink_id"
  end

  create_table "jornalentries_dish_or_drinks", id: false, force: :cascade do |t|
    t.bigint "jornalentry_id", null: false
    t.bigint "dish_or_drink_id", null: false
    t.index ["dish_or_drink_id", "jornalentry_id"], name: "idx_on_dish_or_drink_id_jornalentry_id_074fa54483"
    t.index ["dish_or_drink_id"], name: "index_jornalentries_dish_or_drinks_on_dish_or_drink_id"
    t.index ["jornalentry_id", "dish_or_drink_id"], name: "idx_on_jornalentry_id_dish_or_drink_id_3a0db0085c", unique: true
    t.index ["jornalentry_id"], name: "index_jornalentries_dish_or_drinks_on_jornalentry_id"
  end

  add_foreign_key "jornalentries", "dish_or_drinks"
end
