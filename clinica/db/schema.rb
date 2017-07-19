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

ActiveRecord::Schema.define(version: 20170620043049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.datetime "hora"
    t.integer "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area_id"
    t.integer "paciente_id"
  end

  create_table "agentes", force: :cascade do |t|
    t.string "nombre"
    t.string "rut"
    t.string "telefono"
    t.string "correo"
    t.string "dirrecion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "areas", force: :cascade do |t|
    t.string "especialidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comunas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "especialistas", force: :cascade do |t|
    t.string "nombre"
    t.string "apellidos"
    t.string "rut"
    t.string "telefono"
    t.string "correo"
    t.string "cargo"
    t.string "contraseña"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grados", force: :cascade do |t|
    t.string "rol"
    t.boolean "agenda_vista"
    t.boolean "insumo_vista"
    t.boolean "paciente_vista"
    t.boolean "proveedor_vista"
    t.boolean "tratamiento_vista"
    t.boolean "usuario_vista"
    t.boolean "grado_vista"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historia", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "paciente_id"
    t.integer "tratamiento_id"
  end

  create_table "insumos", force: :cascade do |t|
    t.string "nombre"
    t.integer "cantidad"
    t.date "ingreso"
    t.date "vencimiento"
    t.integer "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "agente_id"
  end

  create_table "listados", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area_id"
    t.integer "usuario_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "materna"
    t.string "paterno"
    t.string "sexo"
    t.string "telefono"
    t.string "direccion"
    t.integer "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comuna_id"
  end

  create_table "tratamientos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "alias"
    t.string "nombre"
    t.string "ape_paterno"
    t.string "ape_materno"
    t.string "rut"
    t.string "telefono"
    t.string "correo"
    t.string "cargo"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "grado_id"
  end

  add_foreign_key "agendas", "areas"
  add_foreign_key "agendas", "pacientes"
  add_foreign_key "historia", "pacientes"
  add_foreign_key "historia", "tratamientos"
  add_foreign_key "insumos", "agentes"
  add_foreign_key "listados", "areas"
  add_foreign_key "listados", "usuarios"
  add_foreign_key "pacientes", "comunas"
  add_foreign_key "usuarios", "grados"
end
