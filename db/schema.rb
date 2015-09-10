# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150910015848) do

  create_table "aptos", force: :cascade do |t|
    t.string   "num_apto"
    t.string   "num_residentes"
    t.string   "email1"
    t.integer  "conjunto_id"
    t.string   "password_digest"
    t.string   "email2"
    t.string   "email_propietario"
    t.string   "placa_carro1"
    t.string   "placa_carro2"
    t.string   "placa_carro3"
    t.string   "nombre_empleada1"
    t.string   "cedula_empleada1"
    t.string   "nombre_empleada2"
    t.string   "cedula_empleada2"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "conjuntos", force: :cascade do |t|
    t.string   "nombre_conjunto"
    t.string   "empresa_admin"
    t.string   "email_admin"
    t.string   "info"
    t.string   "direccion_conjunto"
    t.string   "tel_conjunto"
    t.string   "tel_admin"
    t.string   "direccion_admin"
    t.string   "nombre_administrador"
    t.string   "empresa_vigilancia"
    t.string   "empresa_servicios"
    t.string   "vigilante1"
    t.string   "cedula_vigilante1"
    t.string   "pic_vigilante1"
    t.string   "vigilante2"
    t.string   "cedula_vigilante2"
    t.string   "pic_vigilante2"
    t.string   "vigilante3"
    t.string   "cedula_vigilante3"
    t.string   "pic_vigilante3"
    t.string   "aseo1"
    t.string   "cedula_aseo1"
    t.string   "pic_aseo1"
    t.string   "aseo2"
    t.string   "cedula_aseo2"
    t.string   "pic_aseo2"
    t.string   "clasificados"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string   "nombre_contratista"
    t.string   "cedula_contratista"
    t.string   "imagen_contratista"
    t.string   "categoria"
    t.integer  "conjunto_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
