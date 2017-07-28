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

ActiveRecord::Schema.define(version: 20180620043049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agendas", force: :cascade do |t|
    t.date "fecha"
    t.text "comentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hora_id"
    t.integer "diente_id"
    t.integer "usuario_id"
    t.integer "tratamiento_id"
    t.integer "paciente_id"
  end

  create_table "agentes", force: :cascade do |t|
    t.string "nombre"
    t.string "rut"
    t.integer "telefono"
    t.string "correo"
    t.string "dirrecion"
    t.integer "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comuna_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "especialidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calendarios", force: :cascade do |t|
    t.time "hora_el"
    t.time "hora_sl"
    t.time "hora_ema"
    t.time "hora_sma"
    t.time "hora_em"
    t.time "hora_sm"
    t.time "hora_ej"
    t.time "hora_sj"
    t.time "hora_ev"
    t.time "hora_sv"
    t.time "hora_es"
    t.time "hora_ss"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comunas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dientes", force: :cascade do |t|
    t.boolean "d55"
    t.boolean "d54"
    t.boolean "d53"
    t.boolean "d52"
    t.boolean "d51"
    t.boolean "d61"
    t.boolean "d62"
    t.boolean "d63"
    t.boolean "d64"
    t.boolean "d65"
    t.boolean "d85"
    t.boolean "d84"
    t.boolean "d83"
    t.boolean "d82"
    t.boolean "d81"
    t.boolean "d71"
    t.boolean "d72"
    t.boolean "d73"
    t.boolean "d74"
    t.boolean "d75"
    t.boolean "d18"
    t.boolean "d17"
    t.boolean "d16"
    t.boolean "d15"
    t.boolean "d14"
    t.boolean "d13"
    t.boolean "d12"
    t.boolean "d11"
    t.boolean "d21"
    t.boolean "d22"
    t.boolean "d23"
    t.boolean "d24"
    t.boolean "d25"
    t.boolean "d26"
    t.boolean "d27"
    t.boolean "d28"
    t.boolean "d38"
    t.boolean "d37"
    t.boolean "d36"
    t.boolean "d35"
    t.boolean "d34"
    t.boolean "d33"
    t.boolean "d32"
    t.boolean "d31"
    t.boolean "d41"
    t.boolean "d42"
    t.boolean "d43"
    t.boolean "d44"
    t.boolean "d45"
    t.boolean "d46"
    t.boolean "d47"
    t.boolean "d48"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "especialista", force: :cascade do |t|
    t.string "especialidad"
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

  create_table "horas", force: :cascade do |t|
    t.string "bloque"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer "telefono"
    t.string "direccion"
    t.integer "numero"
    t.integer "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comuna_id"
  end

  create_table "tratamientos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.integer "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "alias"
    t.string "nombre"
    t.string "ape_paterno"
    t.string "ape_materno"
    t.string "rut"
    t.integer "telefono"
    t.string "correo"
    t.string "cargo"
    t.string "password_digest"
    t.string "tipo"
    t.time "hora_entrada"
    t.time "hora_salida"
    t.date "fecha_ingreso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "grado_id"
  end

  add_foreign_key "agendas", "dientes"
  add_foreign_key "agendas", "horas"
  add_foreign_key "agendas", "pacientes"
  add_foreign_key "agendas", "tratamientos"
  add_foreign_key "agendas", "usuarios"
  add_foreign_key "agentes", "comunas"
  add_foreign_key "historia", "pacientes"
  add_foreign_key "historia", "tratamientos"
  add_foreign_key "insumos", "agentes"
  add_foreign_key "listados", "areas"
  add_foreign_key "listados", "usuarios"
  add_foreign_key "pacientes", "comunas"
  add_foreign_key "usuarios", "grados"
end
