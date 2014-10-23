# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141023102941) do

  create_table "aggregator_countries", force: true do |t|
    t.integer  "aggregator_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aggregator_countries", ["aggregator_id"], name: "index_aggregator_countries_on_aggregator_id", using: :btree
  add_index "aggregator_countries", ["country_id"], name: "index_aggregator_countries_on_country_id", using: :btree

  create_table "aggregator_ips", force: true do |t|
    t.string   "ip_address"
    t.integer  "aggregator_id"
    t.boolean  "whitlisted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aggregator_ips", ["aggregator_id"], name: "index_aggregator_ips_on_aggregator_id", using: :btree

  create_table "aggregator_providers", force: true do |t|
    t.integer  "aggregator_id"
    t.integer  "provider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aggregator_providers", ["aggregator_id"], name: "index_aggregator_providers_on_aggregator_id", using: :btree
  add_index "aggregator_providers", ["provider_id"], name: "index_aggregator_providers_on_provider_id", using: :btree

  create_table "aggregators", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bind_details", force: true do |t|
    t.string   "host_ip"
    t.integer  "port"
    t.string   "smpp_version"
    t.string   "username"
    t.string   "password"
    t.integer  "aggregator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bind_details", ["aggregator_id"], name: "index_bind_details_on_aggregator_id", using: :btree

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credits", force: true do |t|
    t.float    "amount"
    t.string   "currency"
    t.integer  "aggregator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "credits", ["aggregator_id"], name: "index_credits_on_aggregator_id", using: :btree

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "network_contacts", force: true do |t|
    t.integer  "phonebook_id"
    t.string   "email"
    t.string   "location"
    t.integer  "network_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "network_contacts", ["network_id"], name: "index_network_contacts_on_network_id", using: :btree
  add_index "network_contacts", ["phonebook_id"], name: "index_network_contacts_on_phonebook_id", using: :btree

  create_table "networks", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phonebooks", force: true do |t|
    t.string   "number"
    t.string   "surname"
    t.string   "other_names"
    t.integer  "group_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phonebooks", ["country_id"], name: "index_phonebooks_on_country_id", using: :btree
  add_index "phonebooks", ["group_id"], name: "index_phonebooks_on_group_id", using: :btree

  create_table "price_lists", force: true do |t|
    t.integer  "credits_id"
    t.string   "cost_per_sms"
    t.integer  "aggregator_id"
    t.integer  "bind_detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "price_lists", ["aggregator_id"], name: "index_price_lists_on_aggregator_id", using: :btree
  add_index "price_lists", ["bind_detail_id"], name: "index_price_lists_on_bind_detail_id", using: :btree
  add_index "price_lists", ["credits_id"], name: "index_price_lists_on_credits_id", using: :btree

  create_table "providers", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sender_ids", force: true do |t|
    t.integer  "aggregator_id"
    t.string   "sender_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sender_ids", ["aggregator_id"], name: "index_sender_ids_on_aggregator_id", using: :btree

  create_table "sms", force: true do |t|
    t.string   "message"
    t.string   "delivery_status"
    t.string   "messageid"
    t.integer  "phonebook_id"
    t.float    "cost"
    t.datetime "send_time"
    t.datetime "delivery_time"
    t.float    "latency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sms", ["phonebook_id"], name: "index_sms_on_phonebook_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
