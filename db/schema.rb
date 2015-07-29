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

ActiveRecord::Schema.define(version: 20150728181559) do

  create_table "areas", force: :cascade do |t|
    t.string   "are_titulo", limit: 255
    t.text     "are_desc",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "canalingresos", force: :cascade do |t|
    t.string   "cin_titulo", limit: 255
    t.text     "cin_desc",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "con_nya",                   limit: 255
    t.string   "con_nombre",                limit: 255
    t.string   "con_apellido",              limit: 255
    t.integer  "profile_id",                limit: 4
    t.string   "con_telefono",              limit: 255
    t.text     "con_obs",                   limit: 65535
    t.string   "con_boton_sitio",           limit: 255
    t.boolean  "con_telefono_sn",           limit: 1
    t.string   "con_mail",                  limit: 255
    t.string   "con_password",              limit: 255
    t.string   "con_password2",             limit: 255
    t.boolean  "con_subscribir",            limit: 1
    t.boolean  "con_confirmado",            limit: 1
    t.string   "con_password_confirmacion", limit: 255
    t.integer  "option_id",                 limit: 4
    t.integer  "canalingreso_id",           limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "contacts", ["canalingreso_id"], name: "index_contacts_on_canalingreso_id", using: :btree
  add_index "contacts", ["option_id"], name: "index_contacts_on_option_id", using: :btree
  add_index "contacts", ["profile_id"], name: "index_contacts_on_profile_id", using: :btree

  create_table "options", force: :cascade do |t|
    t.string   "opt_titulo", limit: 255
    t.text     "opt_desc",   limit: 65535
    t.integer  "area_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "options", ["area_id"], name: "index_options_on_area_id", using: :btree

  create_table "post_comment_answers", force: :cascade do |t|
    t.string   "pca_titulo",      limit: 255
    t.text     "pca_texto",       limit: 65535
    t.integer  "post_comment_id", limit: 4
    t.integer  "contact_id",      limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "post_comment_answers", ["contact_id"], name: "index_post_comment_answers_on_contact_id", using: :btree
  add_index "post_comment_answers", ["post_comment_id"], name: "index_post_comment_answers_on_post_comment_id", using: :btree

  create_table "post_comments", force: :cascade do |t|
    t.string   "pco_titulo", limit: 255
    t.text     "pco_texto",  limit: 65535
    t.integer  "post_id",    limit: 4
    t.integer  "contact_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "post_comments", ["contact_id"], name: "index_post_comments_on_contact_id", using: :btree
  add_index "post_comments", ["post_id"], name: "index_post_comments_on_post_id", using: :btree

  create_table "post_links", force: :cascade do |t|
    t.string   "pli_titulo", limit: 255
    t.string   "pli_url",    limit: 255
    t.text     "pli_desc",   limit: 65535
    t.integer  "post_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "post_links", ["post_id"], name: "index_post_links_on_post_id", using: :btree

  create_table "post_parrafo_bullets", force: :cascade do |t|
    t.string   "ppb_titulo",      limit: 255
    t.text     "ppb_texto",       limit: 65535
    t.integer  "post_parrafo_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "post_parrafo_bullets", ["post_parrafo_id"], name: "index_post_parrafo_bullets_on_post_parrafo_id", using: :btree

  create_table "post_parrafo_vineta", force: :cascade do |t|
    t.string   "ppv_titulo",     limit: 255
    t.text     "ppv_texto",      limit: 65535
    t.integer  "postparrafo_id", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "post_parrafo_vineta", ["postparrafo_id"], name: "index_post_parrafo_vineta_on_postparrafo_id", using: :btree

  create_table "post_parrafos", force: :cascade do |t|
    t.string   "par_titulo",     limit: 255
    t.text     "par_texto",      limit: 65535
    t.integer  "post_id",        limit: 4
    t.string   "par_imagen_tmp", limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "post_parrafos", ["post_id"], name: "index_post_parrafos_on_post_id", using: :btree

  create_table "post_rels", force: :cascade do |t|
    t.string   "pre_titulo", limit: 255
    t.string   "pli_url",    limit: 255
    t.text     "pli_desc",   limit: 65535
    t.integer  "post_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "post_rels", ["post_id"], name: "index_post_rels_on_post_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "pos_titulo",     limit: 255
    t.text     "pos_intro",      limit: 65535
    t.text     "pos_conclusion", limit: 65535
    t.string   "pos_imagen_tmp", limit: 255
    t.integer  "contact_id",     limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "posts", ["contact_id"], name: "index_posts_on_contact_id", using: :btree

  create_table "profile_options", force: :cascade do |t|
    t.integer  "profile_id", limit: 4
    t.integer  "option_id",  limit: 4
    t.datetime "poc_fecha"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "profile_options", ["option_id"], name: "index_profile_options_on_option_id", using: :btree
  add_index "profile_options", ["profile_id"], name: "index_profile_options_on_profile_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "pro_titulo", limit: 255
    t.text     "pro_desc",   limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "contacts", "canalingresos"
  add_foreign_key "contacts", "options"
  add_foreign_key "contacts", "profiles"
  add_foreign_key "options", "areas"
  add_foreign_key "post_comment_answers", "contacts"
  add_foreign_key "post_comment_answers", "post_comments"
  add_foreign_key "post_comments", "contacts"
  add_foreign_key "post_comments", "posts"
  add_foreign_key "post_links", "posts"
  add_foreign_key "post_parrafo_bullets", "post_parrafos"
  add_foreign_key "post_parrafos", "posts"
  add_foreign_key "post_rels", "posts"
  add_foreign_key "posts", "contacts"
  add_foreign_key "profile_options", "options"
  add_foreign_key "profile_options", "profiles"
end
