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

ActiveRecord::Schema.define(version: 2018_06_08_084452) do

  create_table "customer_services", force: :cascade do |t|
    t.integer "customer_id"
    t.date "deal_date"
    t.integer "staff_id"
    t.text "issue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "distributor_id"
    t.text "customer_name"
    t.text "customer_rep"
    t.text "customer_mail"
    t.integer "plan_id"
    t.integer "platform_id"
    t.text "hosting_account"
    t.date "agreement_data"
    t.text "eLM_domain"
    t.text "elm_admin_id"
    t.text "elm_admin_pw"
    t.text "elm_user_id"
    t.text "elm_user_pw"
    t.text "cf_id"
    t.text "cf_pw"
    t.text "server_info"
    t.text "mail_server_info"
    t.text "sql_server_info"
    t.text "dns_info"
    t.text "option_4"
    t.text "option_5"
    t.text "option_6"
    t.text "option_7"
    t.text "option_8"
    t.text "option_9"
    t.text "option_10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distributors", force: :cascade do |t|
    t.text "distributor_name"
    t.text "distributor_rep"
    t.integer "distributor_rep_tel"
    t.text "distributor_rep_mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.text "plan_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.text "platform_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
