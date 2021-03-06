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

ActiveRecord::Schema.define(version: 20161214204735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "nombre_categoria"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "labelings", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "label_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["label_id"], name: "index_labelings_on_label_id", using: :btree
    t.index ["product_id"], name: "index_labelings_on_product_id", using: :btree
  end

  create_table "labels", force: :cascade do |t|
    t.string   "nombre_de_etiqueta"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "labels_products", id: false, force: :cascade do |t|
    t.integer "label_id",   null: false
    t.integer "product_id", null: false
    t.index ["label_id", "product_id"], name: "index_labels_products_on_label_id_and_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "producto"
    t.string   "codigo_producto"
    t.text     "descripcion"
    t.integer  "votos"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "nombre"
    t.string   "telefono"
    t.boolean  "is_female",              default: false
    t.datetime "date_of_birth"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "labelings", "labels"
  add_foreign_key "labelings", "products"
  add_foreign_key "products", "categories"
end
