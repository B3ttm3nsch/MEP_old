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

ActiveRecord::Schema.define(version: 20180529155807) do

  create_table "bsag_audio_fault_commenters", force: :cascade do |t|
    t.string   "comment",             limit: 255
    t.integer  "bsag_mep_audio_id",   limit: 4,   null: false
    t.integer  "bsag_audio_fault_id", limit: 4,   null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "bsag_audio_fault_commenters", ["bsag_audio_fault_id"], name: "index_bsag_audio_fault_commenters_on_bsag_audio_fault_id", using: :btree
  add_index "bsag_audio_fault_commenters", ["bsag_mep_audio_id"], name: "index_bsag_audio_fault_commenters_on_bsag_mep_audio_id", using: :btree

  create_table "bsag_audio_faults", force: :cascade do |t|
    t.string   "name",       limit: 30, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "bsag_audio_faults", ["name"], name: "index_bsag_audio_faults_on_name", unique: true, using: :btree

  create_table "bsag_audio_formats", force: :cascade do |t|
    t.string   "name",       limit: 10, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "bsag_audio_formats", ["name"], name: "index_bsag_audio_formats_on_name", unique: true, using: :btree

  create_table "bsag_audio_speeds", force: :cascade do |t|
    t.decimal  "speed",      precision: 5, scale: 3, null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "bsag_audio_speeds", ["speed"], name: "index_bsag_audio_speeds_on_speed", unique: true, using: :btree

  create_table "bsag_audio_types", force: :cascade do |t|
    t.string   "name",       limit: 10, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "bsag_audio_types", ["name"], name: "index_bsag_audio_types_on_name", unique: true, using: :btree

  create_table "bsag_channel_errors", force: :cascade do |t|
    t.string   "name",       limit: 20, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "bsag_channel_errors", ["name"], name: "index_bsag_channel_errors_on_name", unique: true, using: :btree

  create_table "bsag_mep_audios", force: :cascade do |t|
    t.integer  "bsag_project_partial_id", limit: 4,                           null: false
    t.integer  "bsag_audio_type_id",      limit: 4,                           null: false
    t.date     "receiving_date",                                              null: false
    t.integer  "bsag_mep_version_id",     limit: 4,                           null: false
    t.string   "version_comment",         limit: 30
    t.integer  "bsag_audio_format_id",    limit: 4,                           null: false
    t.integer  "bsag_audio_speed_id",     limit: 4,                           null: false
    t.boolean  "is_complete"
    t.string   "is_complete_comment",     limit: 255,                         null: false
    t.boolean  "is_in_sync"
    t.string   "is_in_sync_comment",      limit: 255,                         null: false
    t.decimal  "dbtp_max",                            precision: 3, scale: 1
    t.decimal  "lra",                                 precision: 3, scale: 1
    t.decimal  "lufs",                                precision: 3, scale: 1
    t.integer  "bsag_channel_error_id",   limit: 4,                           null: false
    t.string   "channel_error_comment",   limit: 255
    t.integer  "bsag_mep_evaluation_id",  limit: 4,                           null: false
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
  end

  add_index "bsag_mep_audios", ["bsag_audio_format_id"], name: "index_bsag_mep_audios_on_bsag_audio_format_id", using: :btree
  add_index "bsag_mep_audios", ["bsag_audio_speed_id"], name: "index_bsag_mep_audios_on_bsag_audio_speed_id", using: :btree
  add_index "bsag_mep_audios", ["bsag_audio_type_id"], name: "index_bsag_mep_audios_on_bsag_audio_type_id", using: :btree
  add_index "bsag_mep_audios", ["bsag_channel_error_id"], name: "index_bsag_mep_audios_on_bsag_channel_error_id", using: :btree
  add_index "bsag_mep_audios", ["bsag_mep_evaluation_id"], name: "index_bsag_mep_audios_on_bsag_mep_evaluation_id", using: :btree
  add_index "bsag_mep_audios", ["bsag_mep_version_id"], name: "index_bsag_mep_audios_on_bsag_mep_version_id", using: :btree
  add_index "bsag_mep_audios", ["bsag_project_partial_id"], name: "index_bsag_mep_audios_on_bsag_project_partial_id", using: :btree

  create_table "bsag_mep_evaluations", force: :cascade do |t|
    t.string   "name",       limit: 20, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "bsag_mep_evaluations", ["name"], name: "index_bsag_mep_evaluations_on_name", unique: true, using: :btree

  create_table "bsag_mep_versions", force: :cascade do |t|
    t.string   "name",       limit: 10, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "bsag_mep_versions", ["name"], name: "index_bsag_mep_versions_on_name", unique: true, using: :btree

  create_table "bsag_product_variations", force: :cascade do |t|
    t.integer  "product_id",        limit: 2
    t.string   "name",              limit: 20,                null: false
    t.boolean  "needs_calculation",            default: true
    t.boolean  "is_active",                    default: true, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at"
  end

  create_table "bsag_products", force: :cascade do |t|
    t.string   "code",       limit: 10
    t.string   "name",       limit: 30,                null: false
    t.string   "short_name", limit: 10
    t.string   "segment",    limit: 20
    t.string   "category",   limit: 20
    t.boolean  "is_active",             default: true, null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at"
  end

  create_table "bsag_project_partial_versions", force: :cascade do |t|
    t.integer  "project_id",           limit: 4,                                                                        null: false
    t.integer  "partial_id",           limit: 4,                                                                        null: false
    t.integer  "version_id",           limit: 2
    t.string   "guid",                 limit: 100
    t.string   "title",                limit: 255,                          default: "Titel wurde noch nicht vergeben", null: false
    t.string   "notes",                limit: 2000
    t.integer  "duration",             limit: 2
    t.decimal  "duration_in_seconds",               precision: 6, scale: 3
    t.decimal  "offset_in_seconds",                 precision: 6, scale: 3
    t.float    "framerate",            limit: 24,                           default: 24.0
    t.integer  "word_count_source",    limit: 4
    t.integer  "word_count_localized", limit: 4
    t.integer  "take_count",           limit: 4
    t.float    "talk_time",            limit: 24
    t.string   "video_asset_name",     limit: 200
    t.string   "video_asset_poster",   limit: 200
    t.boolean  "is_active",                                                 default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bsag_project_partial_versions", ["partial_id"], name: "iPartial", using: :btree
  add_index "bsag_project_partial_versions", ["project_id"], name: "iProject", using: :btree
  add_index "bsag_project_partial_versions", ["version_id"], name: "iVersion", using: :btree
  add_index "bsag_project_partial_versions", ["video_asset_name"], name: "iFileGuid", using: :btree

  create_table "bsag_project_partials", force: :cascade do |t|
    t.integer  "project_id",         limit: 4,                                                null: false
    t.integer  "number",             limit: 2,                                                null: false
    t.string   "production_code",    limit: 16
    t.string   "title",              limit: 255,  default: "Titel wurde noch nicht vergeben", null: false
    t.string   "title_localized1",   limit: 255
    t.string   "title_localized2",   limit: 255
    t.string   "title_localized3",   limit: 255
    t.string   "synopsis",           limit: 2000
    t.string   "synopsis_localized", limit: 2000
    t.string   "notes",              limit: 2000
    t.string   "imdb_id",            limit: 10
    t.string   "poster_url",         limit: 500
    t.string   "poster_file_name",   limit: 20
    t.boolean  "is_active",                       default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bsag_project_partials", ["project_id"], name: "iProject", using: :btree

  create_table "bsag_project_versions", force: :cascade do |t|
    t.integer  "project_id",   limit: 4
    t.string   "name",         limit: 20
    t.boolean  "is_final",                default: true
    t.boolean  "is_deletable",            default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bsag_project_versions", ["project_id"], name: "iProject", using: :btree

  create_table "tblClients", primary_key: "ID", force: :cascade do |t|
    t.integer  "sage_id",         limit: 4
    t.integer  "bank_account_id", limit: 2,     default: 1
    t.string   "Name",            limit: 150
    t.integer  "Manager",         limit: 4,     default: 0
    t.string   "Phone1",          limit: 30
    t.string   "Phone2",          limit: 30
    t.string   "Phone3",          limit: 30
    t.string   "FAX",             limit: 30
    t.string   "Address1",        limit: 255
    t.string   "Address2",        limit: 255
    t.string   "City",            limit: 30
    t.string   "State",           limit: 30
    t.string   "Country",         limit: 50
    t.string   "Postcode",        limit: 11
    t.string   "URL",             limit: 255
    t.text     "Description",     limit: 65535
    t.boolean  "Archived",                      default: false
    t.string   "ContactName",     limit: 255
    t.string   "ContactEmail",    limit: 255
    t.string   "Colour",          limit: 7,     default: "",    null: false
    t.string   "language",        limit: 5,     default: "D"
    t.integer  "debtor_id",       limit: 4
    t.string   "ustid",           limit: 20
    t.string   "email_global",    limit: 50
    t.string   "notes",           limit: 200
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tblclients", ["Archived"], name: "idx_archived", using: :btree

  create_table "tblProjects", primary_key: "ID", force: :cascade do |t|
    t.integer  "ClientID",             limit: 4,     default: 0,         null: false
    t.string   "ProjectID",            limit: 255
    t.string   "Name",                 limit: 255
    t.integer  "Owner",                limit: 4,     default: 0
    t.string   "URL",                  limit: 255
    t.string   "DemoURL",              limit: 255
    t.date     "StartDate"
    t.date     "EndDate"
    t.date     "ActualEndDate"
    t.integer  "Status",               limit: 4,     default: 0
    t.boolean  "Priority",                           default: true,      null: false
    t.string   "Colour",               limit: 7,     default: "#EEEEEE"
    t.text     "Description",          limit: 65535
    t.integer  "TargetBudget",         limit: 4,     default: 0
    t.integer  "ActualBudget",         limit: 4,     default: 0
    t.boolean  "Active",                             default: true
    t.integer  "product_id",           limit: 2
    t.integer  "product_variation_id", limit: 2
    t.integer  "category_id",          limit: 2,     default: 1
    t.string   "aka_title",            limit: 100
    t.string   "assets_path",          limit: 500
    t.string   "poster_url",           limit: 500
    t.integer  "take_count",           limit: 4
    t.integer  "word_count_source",    limit: 4
    t.integer  "word_count_localized", limit: 4
    t.float    "talk_time",            limit: 24
    t.datetime "structure_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tblprojects", ["Active"], name: "idx_Active", using: :btree
  add_index "tblprojects", ["ClientID"], name: "idx_ClientID", using: :btree
  add_index "tblprojects", ["EndDate"], name: "idx_edate", using: :btree
  add_index "tblprojects", ["StartDate"], name: "idx_sdate", using: :btree
  add_index "tblprojects", ["category_id"], name: "iCategory", using: :btree
  add_index "tblprojects", ["product_id"], name: "iProduct", using: :btree
  add_index "tblprojects", ["product_variation_id"], name: "iProductVariation", using: :btree

  add_foreign_key "bsag_audio_fault_commenters", "bsag_audio_faults"
  add_foreign_key "bsag_audio_fault_commenters", "bsag_mep_audios"
  add_foreign_key "bsag_mep_audios", "bsag_audio_formats"
  add_foreign_key "bsag_mep_audios", "bsag_audio_speeds"
  add_foreign_key "bsag_mep_audios", "bsag_audio_types"
  add_foreign_key "bsag_mep_audios", "bsag_channel_errors"
  add_foreign_key "bsag_mep_audios", "bsag_mep_evaluations"
  add_foreign_key "bsag_mep_audios", "bsag_mep_versions"
  add_foreign_key "bsag_mep_audios", "bsag_project_partials"
end
