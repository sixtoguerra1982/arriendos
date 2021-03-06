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

ActiveRecord::Schema.define(version: 2020_02_23_212238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arriendos", force: :cascade do |t|
    t.bigint "serie_id"
    t.bigint "pelicula_id"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pelicula_id"], name: "index_arriendos_on_pelicula_id"
    t.index ["serie_id"], name: "index_arriendos_on_serie_id"
    t.index ["usuario_id"], name: "index_arriendos_on_usuario_id"
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "titulo"
    t.string "genero"
    t.integer "precio_arriendo"
    t.integer "duracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.string "titulo"
    t.string "genero"
    t.integer "precio_arriendo"
    t.string "temporadas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
  end

  add_foreign_key "arriendos", "peliculas"
  add_foreign_key "arriendos", "series", column: "serie_id"
  add_foreign_key "arriendos", "usuarios"
end
