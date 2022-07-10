require 'rails_helper'

describe User do
  subject {
    described_class.new(name: Faker::Name.name,
                        email: Faker::Internet.email)
  }

  describe 'Validations' do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end
end
