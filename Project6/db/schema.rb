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

ActiveRecord::Schema[7.0].define(version: 2023_03_06_150643) do
  create_table "products", force: :cascade do |t|
    t.text "p_name"
    t.integer "pp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "p_des"
    t.index ["pp_id"], name: "index_products_on_pp_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "username"
    t.string "password"
    t.integer "phonenumber"
    t.integer "zipcode"
    t.date "planstartdate"
    t.date "planenddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
