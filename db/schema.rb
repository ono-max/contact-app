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

ActiveRecord::Schema.define(version: 2021_02_23_110215) do

  create_table "questionnaires", charset: "utf8mb4", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "q1", default: 0, null: false
    t.integer "q2", default: 0, null: false
    t.text "q2_other"
    t.integer "q3", default: 0, null: false
    t.integer "q4", default: 0, null: false
    t.integer "q5", default: 0, null: false
    t.integer "q6", default: 0, null: false
    t.integer "q7", default: 0, null: false
    t.text "q7_other"
    t.integer "q8", default: 0, null: false
    t.text "q9"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
