require 'rails_helper'

RSpec.describe "companies/index", type: :view do
  before(:each) do
    assign(:companies, [
      Company.create!(
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
      ),
      Company.create!(
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
      )
    ])
  end

  it "renders a list of companies" do
    render
    assert_select "tr>td", text: "Razao Social".to_s, count: 2
    assert_select "tr>td", text: "Nome Fantasia".to_s, count: 2
    assert_select "tr>td", text: "Cnpj".to_s, count: 2
    assert_select "tr>td", text: "Endereco Cep".to_s, count: 2
    assert_select "tr>td", text: "Endereco Rua".to_s, count: 2
    assert_select "tr>td", text: "Endereco Numero".to_s, count: 2
    assert_select "tr>td", text: "Endereco Complemento".to_s, count: 2
    assert_select "tr>td", text: "Endereco Bairro".to_s, count: 2
    assert_select "tr>td", text: "Endereco Cidade".to_s, count: 2
    assert_select "tr>td", text: "Endereco Uf".to_s, count: 2
    assert_select "tr>td", text: "Telefone Fixo".to_s, count: 2
    assert_select "tr>td", text: "Telefone Celular".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Site".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
