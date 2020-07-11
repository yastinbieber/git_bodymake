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

ActiveRecord::Schema.define(version: 2020_07_08_072116) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "advicediaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "idealweight_id"
    t.integer "advicemenu_id"
    t.integer "weight"
    t.integer "reps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "useradvice_id"
  end

  create_table "advicemenus", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "menu"
    t.integer "minimam_reps"
    t.integer "max_reps"
    t.integer "sets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "group"
  end

  create_table "fooddates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "foodname"
    t.integer "fooddiary_id"
    t.integer "gram"
    t.integer "kcal"
    t.integer "protein"
    t.integer "fat"
    t.integer "carbo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fooddiaries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "fooddate_id"
    t.integer "gram"
    t.integer "kcal"
    t.integer "protein"
    t.integer "fat"
    t.integer "carbo"
    t.string "timing"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.integer "idealweight_id"
  end

  create_table "idealweights", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "height"
    t.integer "weight"
    t.integer "targetweight"
    t.float "exerciselevel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "period"
    t.integer "basemetabolism"
    t.integer "kcalburned"
    t.float "minusweight"
    t.integer "minuskcal"
    t.integer "kcalintake"
    t.integer "intakeproteingram"
    t.integer "intakefatgram"
    t.integer "intakecarbogram"
    t.integer "intakeproteinkcal"
    t.integer "intakefatkcal"
    t.integer "intakecarbokcal"
    t.integer "age"
  end

  create_table "useradvices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "idealweight_id"
    t.string "purpose"
    t.integer "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "area"
    t.date "birthday"
    t.text "text"
    t.string "sex"
    t.integer "age"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weightchanges", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.float "todayweight"
    t.integer "idealweight_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
  end

  create_table "workoutdates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "menu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workoutdetails", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "settype"
    t.integer "weight"
    t.integer "reps"
    t.integer "workoutmenu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workoutmenus", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "weight"
    t.integer "reps"
    t.string "settype"
    t.date "date"
    t.integer "user_id"
    t.integer "workoutdate_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
