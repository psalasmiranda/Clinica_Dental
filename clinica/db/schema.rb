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

ActiveRecord::Schema.define(version: 20170517023532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.date "fecha"
    t.time "hora"
    t.string "estado"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insumos", force: :cascade do |t|
    t.string "nomre"
    t.integer "cantidad"
    t.date "fecha_ing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listados", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "proveedor_id"
    t.integer "insumo_id"
  end

  create_table "materials", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "insumos_id"
    t.integer "tratamiento_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nombres"
    t.string "rut"
    t.string "direccion"
    t.string "telefono"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "agenda_id"
  end

  create_table "personals", force: :cascade do |t|
    t.string "nombres"
    t.string "rut"
    t.string "correo"
    t.string "telefono"
    t.string "profesion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "agendas_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nomre"
    t.string "rut"
    t.string "correo"
    t.string "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tratamientos", force: :cascade do |t|
    t.string "nombre"
    t.integer "costo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "agendas_id"
  end

  add_foreign_key "listados", "insumos"
  add_foreign_key "listados", "proveedors"
  add_foreign_key "materials", "insumos", column: "insumos_id"
  add_foreign_key "materials", "tratamientos"
  add_foreign_key "pacientes", "agendas"
  add_foreign_key "personals", "agendas", column: "agendas_id"
  add_foreign_key "tratamientos", "agendas", column: "agendas_id"
end
