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

ActiveRecord::Schema.define(version: 20171128201409) do

  create_table "categories", force: :cascade do |t|
    t.string "cat_types"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_projects", force: :cascade do |t|
    t.integer "category_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_projects_on_category_id"
    t.index ["project_id"], name: "index_category_projects_on_project_id"
  end

  create_table "orders", force: :cascade do |t|
    t.float "donation"
    t.integer "user_id"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_orders_on_project_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "proj_name"
    t.text "proj_description"
    t.integer "goal_funding"
    t.date "start_date"
    t.date "end_date"
    t.string "image_url"
    t.boolean "active"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.string "reward_name"
    t.integer "reward_amount"
    t.text "reward_description"
    t.integer "reward_limit"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_rewards_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.integer "credit_num"
    t.date "credit_exp_date"
    t.integer "sec_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
