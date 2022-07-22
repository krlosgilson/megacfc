FactoryBot.define do
  factory :company do
    razao_social { "MyString" }
    nome_fantasia { "MyString" }
    cnpj { "MyString" }
    endereco_cep { "MyString" }
    endereco_rua { "MyString" }
    endereco_numero { "MyString" }
    endereco_complemento { "MyString" }
    endereco_bairro { "MyString" }
    endereco_cidade { "MyString" }
    endereco_uf { "MyString" }
    telefone_fixo { "MyString" }
    telefone_celular { "MyString" }
    email { "MyString" }
    site { "MyString" }
    created_user_id { 1 }
    changed_user_id { 1 }
  end
end
