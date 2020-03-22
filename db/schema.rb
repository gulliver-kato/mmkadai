
ActiveRecord::Schema.define(version: 2020_03_22_052912) do

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "addres"
    t.integer "age"
    t.text "etc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string "line"
    t.string "station"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "house_id"
    t.index ["house_id"], name: "index_routes_on_house_id"
  end

end
