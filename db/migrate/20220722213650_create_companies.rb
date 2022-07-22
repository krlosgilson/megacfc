class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :razao_social, limit: 80
      t.string :nome_fantasia, limit: 80
      t.string :cnpj, limit: 14
      t.string :endereco_cep, limit: 8
      t.string :endereco_rua, limit: 60
      t.string :endereco_numero, limit: 10
      t.string :endereco_complemento, limit: 50
      t.string :endereco_bairro, limit: 50
      t.string :endereco_cidade, limit: 50
      t.string :endereco_uf, limit: 2
      t.string :telefone_fixo, limit: 15
      t.string :telefone_celular, limit: 15
      t.string :email, limit: 60
      t.string :site, limit: 60
      t.integer :created_user_id
      t.integer :changed_user_id

      t.timestamps
    end
  end
end
