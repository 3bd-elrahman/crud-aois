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

ActiveRecord::Schema.define(version: 2020_10_14_194143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "student_classes", force: :cascade do |t|
    t.integer "capacity"
    t.string "class_gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "class_name"
  end

  create_table "student_classes_students", id: false, force: :cascade do |t|
    t.bigint "student_class_id", null: false
    t.bigint "student_id", null: false
    t.index ["student_class_id"], name: "index_student_classes_students_on_student_class_id"
    t.index ["student_id"], name: "index_student_classes_students_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "mobile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
