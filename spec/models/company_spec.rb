# frozen_string_literal: true

require 'rails_helper'

describe Company do
  subject { build(:company) }

  it 'is valid' do
    expect(subject).to be_valid
  end

  it 'is not valid without a razao_social' do
    subject.razao_social = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a nome_fantasia' do
    subject.nome_fantasia = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a valid cnpj' do
    subject.cnpj = '00000000000000'
    expect(subject).to_not be_valid
  end
end
