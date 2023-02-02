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

ActiveRecord::Schema.define(version: 2019_05_21_164744) do

  create_table "album_types", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albums", force: :cascade do |t|
    t.integer "album_type_id"
    t.integer "label_id"
    t.string "name", null: false
    t.date "release_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["album_type_id", "label_id", "name", "release_date"], name: "index_albums_all_fields_unique", unique: true
    t.index ["album_type_id"], name: "index_albums_on_album_type_id"
    t.index ["label_id"], name: "index_albums_on_label_id"
  end

  create_table "artist_lists", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "person_id"
    t.date "debut_year", null: false
    t.date "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id", nil, "debut_year", "end_year"], name: "index_artist_lists_all_fields_unique", unique: true
    t.index ["artist_id"], name: "index_artist_lists_on_artist_id"
    t.index ["person_id"], name: "index_artist_lists_on_person_id"
  end

  create_table "artists", force: :cascade do |t|
    t.boolean "type_band", default: false
    t.string "name", limit: 50, null: false
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "companies", force: :cascade do |t|
    t.integer "country_id"
    t.string "name", limit: 50, null: false
    t.date "foundation_date", null: false
    t.date "releaes_end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_companies_on_country_id"
  end

  create_table "composition_lists", force: :cascade do |t|
    t.integer "composition_id"
    t.integer "album_id"
    t.integer "person_id"
    t.integer "artist_id"
    t.integer "position_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_composition_lists_on_album_id"
    t.index ["artist_id"], name: "index_composition_lists_on_artist_id"
    t.index ["composition_id", "album_id", "person_id", "artist_id", "position_number"], name: "index_composition_lists_all_fields_unique", unique: true
    t.index ["composition_id", "album_id", "person_id", "artist_id"], name: "index_composition_lists_four_fields_unique", unique: true
    t.index ["composition_id"], name: "index_composition_lists_on_composition_id"
    t.index ["person_id"], name: "index_composition_lists_on_person_id"
  end

  create_table "compositions", force: :cascade do |t|
    t.integer "genre_id"
    t.string "name", null: false
    t.time "duration", null: false
    t.date "release_date", null: false
    t.text "lyrics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id", "name", "duration", "release_date", "lyrics"], name: "index_compositions_all_fields_unique", unique: true
    t.index ["genre_id"], name: "index_compositions_on_genre_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", limit: 25, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.integer "country_id"
    t.string "name", limit: 50, null: false
    t.date "foundation_date", null: false
    t.date "end_existing_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["country_id", "name", "foundation_date", "end_existing_date"], name: "index_labels_all_fields_unique", unique: true
    t.index ["country_id"], name: "index_labels_on_country_id"
  end

  create_table "music_storages", force: :cascade do |t|
    t.integer "company_id"
    t.integer "storage_type_id"
    t.string "name", null: false
    t.integer "rack", limit: 3, null: false
    t.integer "shelf", limit: 3, null: false
    t.integer "section", limit: 3, null: false
    t.integer "cell", limit: 3, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_music_storages_on_company_id"
    t.index ["rack", "shelf", "section", "cell"], name: "index_music_storages_on_rack_and_shelf_and_section_and_cell", unique: true
    t.index ["storage_type_id"], name: "index_music_storages_on_storage_type_id"
  end

  create_table "people", force: :cascade do |t|
    t.integer "country_id"
    t.string "first_name", limit: 25, null: false
    t.string "last_name", limit: 25, null: false
    t.date "birth_date", null: false
    t.date "death_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["country_id"], name: "index_people_on_country_id"
  end

  create_table "storage_lists", force: :cascade do |t|
    t.integer "album_id"
    t.integer "music_storage_id"
    t.date "production_year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id", "music_storage_id"], name: "index_storage_lists_on_album_id_and_music_storage_id", unique: true
    t.index ["album_id"], name: "index_storage_lists_on_album_id"
    t.index ["music_storage_id"], name: "index_storage_lists_on_music_storage_id"
  end

  create_table "storage_types", force: :cascade do |t|
    t.string "name", limit: 15, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
