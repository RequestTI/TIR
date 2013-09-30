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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130926225556) do

  create_table "atendimentos", :force => true do |t|
    t.string   "sumario"
    t.string   "resolucao"
    t.date     "dataAtualizacao"
    t.string   "horaAtualizacao"
    t.string   "horaFinalizacao"
    t.string   "status"
    t.integer  "tecnico_id"
    t.integer  "registro_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "atendimentos", ["registro_id"], :name => "index_atendimentos_on_registro_id"
  add_index "atendimentos", ["tecnico_id"], :name => "index_atendimentos_on_tecnico_id"

  create_table "clientes", :force => true do |t|
    t.string   "matricula"
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "lotacao"
    t.string   "localidade"
    t.integer  "empresa_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "clientes", ["empresa_id"], :name => "index_clientes_on_empresa_id"

  create_table "empresas", :force => true do |t|
    t.integer  "codigoempresa"
    t.string   "razaosocial"
    t.string   "nome"
    t.string   "localidade"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "registros", :force => true do |t|
    t.integer  "codregistro"
    t.string   "descricao"
    t.string   "complemento"
    t.date     "data"
    t.string   "hora"
    t.integer  "tiposervico_id"
    t.integer  "cliente_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "registros", ["cliente_id"], :name => "index_registros_on_cliente_id"
  add_index "registros", ["tiposervico_id"], :name => "index_registros_on_tiposervico_id"

  create_table "tecnicos", :force => true do |t|
    t.string   "matricula"
    t.string   "nome"
    t.string   "ocupacao"
    t.string   "especializacao"
    t.integer  "tiposervico_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "tecnicos", ["tiposervico_id"], :name => "index_tecnicos_on_tiposervico_id"

  create_table "tiposervicos", :force => true do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :null => false
    t.string   "encrypted_password",                  :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",        :default => 0, :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "username"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
