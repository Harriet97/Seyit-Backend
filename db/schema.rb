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

ActiveRecord::Schema.define(version: 2020_03_30_150949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "guest_id", null: false
    t.bigint "property_id", null: false
    t.boolean "confirmed"
    t.string "startDate"
    t.string "endDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guest_id"], name: "index_bookings_on_guest_id"
    t.index ["property_id"], name: "index_bookings_on_property_id"
  end

  create_table "guest_favourites", force: :cascade do |t|
    t.bigint "guest_id", null: false
    t.bigint "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guest_id"], name: "index_guest_favourites_on_guest_id"
    t.index ["property_id"], name: "index_guest_favourites_on_property_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hosts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "phone_number"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.bigint "host_id", null: false
    t.string "postcode"
    t.string "location"
    t.float "long"
    t.float "lat"
    t.integer "price"
    t.integer "sleeps"
    t.integer "bedrooms"
    t.integer "bathrooms"
    t.boolean "balcony"
    t.boolean "washing_machine"
    t.boolean "kettle"
    t.boolean "coffee_machine"
    t.boolean "fridge"
    t.boolean "microwave"
    t.boolean "kitchenware"
    t.boolean "elevator"
    t.boolean "living_room"
    t.boolean "shower"
    t.boolean "bathtub"
    t.boolean "hairdryer"
    t.boolean "iron"
    t.boolean "hoover"
    t.boolean "mop"
    t.boolean "bedding"
    t.boolean "tv"
    t.boolean "wifi"
    t.text "images", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["host_id"], name: "index_properties_on_host_id"
  end

  add_foreign_key "bookings", "guests"
  add_foreign_key "bookings", "properties"
  add_foreign_key "guest_favourites", "guests"
  add_foreign_key "guest_favourites", "properties"
  add_foreign_key "properties", "hosts"
end
