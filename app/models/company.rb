class Company < ApplicationRecord
  validates :razao_social, :nome_fantasia, presence: true, length: { minimum: 5, maximum: 80 }
  validates :cnpj, cnpj: true, format: { with: /\A\d+\z/, message: 'é permitido apenas números' }
end
