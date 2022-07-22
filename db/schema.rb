# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_22_213650) do
  create_table "companies", force: :cascade do |t|
    t.string "razao_social", limit: 80
    t.string "nome_fantasia", limit: 80
    t.string "cnpj", limit: 14
    t.string "endereco_cep", limit: 8
    t.string "endereco_rua", limit: 60
    t.string "endereco_numero", limit: 10
    t.string "endereco_complemento", limit: 50
    t.string "endereco_bairro", limit: 50
    t.string "endereco_cidade", limit: 50
    t.string "endereco_uf", limit: 2
    t.string "telefone_fixo", limit: 15
    t.string "telefone_celular", limit: 15
    t.string "email", limit: 60
    t.string "site", limit: 60
    t.integer "created_user_id"
    t.integer "changed_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 80
    t.string "email", limit: 80
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
