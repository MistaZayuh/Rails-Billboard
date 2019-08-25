ActiveRecord::Schema.define(version: 2019_08_23_213818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "billboards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tunes", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.bigint "band_id"
    t.bigint "billboard_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["band_id"], name: "index_tunes_on_band_id"
    t.index ["billboard_id"], name: "index_tunes_on_billboard_id"
  end

  add_foreign_key "tunes", "bands"
  add_foreign_key "tunes", "billboards"
end
