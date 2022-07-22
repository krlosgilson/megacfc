require 'rails_helper'

RSpec.describe "companies/show", type: :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      razao_social: "Razao Social",
      nome_fantasia: "Nome Fantasia",
      cnpj: "Cnpj",
      endereco_cep: "Endereco Cep",
      endereco_rua: "Endereco Rua",
      endereco_numero: "Endereco Numero",
      endereco_complemento: "Endereco Complemento",
      endereco_bairro: "Endereco Bairro",
      endereco_cidade: "Endereco Cidade",
      endereco_uf: "Endereco Uf",
      telefone_fixo: "Telefone Fixo",
      telefone_celular: "Telefone Celular",
      email: "Email",
      site: "Site",
      created_user_id: 2,
      changed_user_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Razao Social/)
    expect(rendered).to match(/Nome Fantasia/)
    expect(rendered).to match(/Cnpj/)
    expect(rendered).to match(/Endereco Cep/)
    expect(rendered).to match(/Endereco Rua/)
    expect(rendered).to match(/Endereco Numero/)
    expect(rendered).to match(/Endereco Complemento/)
    expect(rendered).to match(/Endereco Bairro/)
    expect(rendered).to match(/Endereco Cidade/)
    expect(rendered).to match(/Endereco Uf/)
    expect(rendered).to match(/Telefone Fixo/)
    expect(rendered).to match(/Telefone Celular/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Site/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
