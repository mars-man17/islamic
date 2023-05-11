# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_11_225015) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "writer"
    t.text "body"
    t.datetime "publishedat"
    t.text "tags"
    t.string "slug"
    t.datetime "updatedat"
    t.text "updatedtext"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sunnahs", force: :cascade do |t|
    t.text "hadith"
    t.string "status"
    t.string "book"
    t.string "volume"
    t.text "isnad"
    t.text "adalah"
    t.text "irsal"
    t.text "tawatur"
    t.text "matn"
    t.text "asbabalwurud"
    t.text "tags"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
