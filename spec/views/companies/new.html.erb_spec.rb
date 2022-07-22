require 'rails_helper'

RSpec.describe "companies/new", type: :view do
  before(:each) do
    assign(:company, Company.new(
      razao_social: "MyString",
      nome_fantasia: "MyString",
      cnpj: "MyString",
      endereco_cep: "MyString",
      endereco_rua: "MyString",
      endereco_numero: "MyString",
      endereco_complemento: "MyString",
      endereco_bairro: "MyString",
      endereco_cidade: "MyString",
      endereco_uf: "MyString",
      telefone_fixo: "MyString",
      telefone_celular: "MyString",
      email: "MyString",
      site: "MyString",
      created_user_id: 1,
      changed_user_id: 1
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input[name=?]", "company[razao_social]"

      assert_select "input[name=?]", "company[nome_fantasia]"

      assert_select "input[name=?]", "company[cnpj]"

      assert_select "input[name=?]", "company[endereco_cep]"

      assert_select "input[name=?]", "company[endereco_rua]"

      assert_select "input[name=?]", "company[endereco_numero]"

      assert_select "input[name=?]", "company[endereco_complemento]"

      assert_select "input[name=?]", "company[endereco_bairro]"

      assert_select "input[name=?]", "company[endereco_cidade]"

      assert_select "input[name=?]", "company[endereco_uf]"

      assert_select "input[name=?]", "company[telefone_fixo]"

      assert_select "input[name=?]", "company[telefone_celular]"

      assert_select "input[name=?]", "company[email]"

      assert_select "input[name=?]", "company[site]"

      assert_select "input[name=?]", "company[created_user_id]"

      assert_select "input[name=?]", "company[changed_user_id]"
    end
  end
end
