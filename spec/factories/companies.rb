FactoryBot.define do
  factory :company do
    razao_social { Faker::Company.name }
    nome_fantasia { Faker::Company.name }
    cnpj { CNPJ.generate }
  end
end
