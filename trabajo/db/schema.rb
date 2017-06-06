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

ActiveRecord::Schema.define(version: 20170605235925) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.datetime "hora"
    t.string "estado"
    t.string "descripcion"
    t.boolean "confirmacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agentes", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido"
    t.string "empresa"
    t.string "telefono"
    t.string "comuna"
    t.string "direccion"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "listado_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "comuna"
    t.string "direccion"
    t.string "sexo"
    t.integer "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "agenda_id"
  end

  create_table "componentes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "rut"
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "comuna"
    t.string "direccion"
    t.string "sexo"
    t.integer "edad"
    t.string "correo"
    t.string "profesion"
    t.string "contraseña"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "agenda_id"
  end

  create_table "insumos", force: :cascade do |t|
    t.integer "cantidad"
    t.string "nombre"
    t.datetime "ingreso"
    t.datetime "vencimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "componente_id"
    t.integer "listado_id"
  end

  create_table "listados", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tratamientos", force: :cascade do |t|
    t.string "nombre"
    t.integer "costo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "agenda_id"
    t.integer "componente_id"
  end

  add_foreign_key "agentes", "listados"
  add_foreign_key "clientes", "agendas"
  add_foreign_key "funcionarios", "agendas"
  add_foreign_key "insumos", "componentes"
  add_foreign_key "insumos", "listados"
  add_foreign_key "tratamientos", "agendas"
  add_foreign_key "tratamientos", "componentes"
end
