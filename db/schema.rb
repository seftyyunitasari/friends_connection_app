ActiveRecord::Schema.define(version: 2021_12_23_163559) do

  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email"
  end

end
