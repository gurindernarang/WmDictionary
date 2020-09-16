# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_15_164253) do

  create_table "translation_requests", force: :cascade do |t|
    t.integer "requestor_id_id", null: false
    t.string "status"
    t.integer "approver_id_id", null: false
    t.integer "translator_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["approver_id_id"], name: "index_translation_requests_on_approver_id_id"
    t.index ["requestor_id_id"], name: "index_translation_requests_on_requestor_id_id"
    t.index ["translator_id_id"], name: "index_translation_requests_on_translator_id_id"
  end

  create_table "translations", force: :cascade do |t|
    t.string "key"
    t.string "string_key"
    t.string "translated_term"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "user_name"
    t.string "user_role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "translation_requests", "approver_ids"
  add_foreign_key "translation_requests", "requestor_ids"
  add_foreign_key "translation_requests", "translator_ids"
end
