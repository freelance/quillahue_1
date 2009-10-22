# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091021003514) do

  create_table "cabanas", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.string   "ciudad"
    t.string   "pais"
    t.string   "telefono"
    t.string   "email"
    t.float    "precio_total"
    t.float    "precio_unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "complejos", :force => true do |t|
    t.string   "nombre"
    t.string   "pais"
    t.string   "provincia"
    t.string   "ciudad"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactos", :force => true do |t|
    t.string   "apellido"
    t.string   "nombre"
    t.string   "procedencia"
    t.string   "telefono"
    t.string   "email"
    t.datetime "fecha_llegada"
    t.datetime "fecha_partida"
    t.integer  "personas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", :force => true do |t|
    t.string   "name"
    t.integer  "cabana_id"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", :force => true do |t|
    t.string   "nombre"
    t.datetime "inicio"
    t.datetime "caduca"
    t.boolean  "estado"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "servicios", :force => true do |t|
    t.string   "nombre"
    t.integer  "cabana_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tarifas", :force => true do |t|
    t.float    "precio_per_base"
    t.float    "precio_cab_base"
    t.float    "precio_p_dia"
    t.float    "precio_p_semana"
    t.float    "precio_p_fdslargo"
    t.integer  "cabana_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubicacions", :force => true do |t|
    t.text     "descripcion"
    t.string   "tel1"
    t.string   "cel"
    t.string   "email"
    t.string   "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
