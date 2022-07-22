json.extract! company, :id, :razao_social, :nome_fantasia, :cnpj, :endereco_cep, :endereco_rua, :endereco_numero, :endereco_complemento, :endereco_bairro, :endereco_cidade, :endereco_uf, :telefone_fixo, :telefone_celular, :email, :site, :created_user_id, :changed_user_id, :created_at, :updated_at
json.url company_url(company, format: :json)
