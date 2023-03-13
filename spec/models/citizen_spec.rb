require 'rails_helper'

RSpec.describe Citizen, type: :model do
  describe 'validations' do
    context 'Check field is presence' do
      it { should validate_presence_of(:full_name) }
      it { should validate_presence_of(:email) }
      it { should validate_presence_of(:cpf) }
      it { should validate_presence_of(:date_of_birth) }
      it { should validate_presence_of(:phone) }
    end

    it "is invalid if birthdate is in the future" do
      citizen = Citizen.new(full_name: "John Doe", date_of_birth: Date.tomorrow)
      expect(citizen).not_to be_valid
    end

    it "is valid if birthdate is in the past" do
      citizen = Citizen.new(full_name: "John Doe", date_of_birth: Date.today - 30.years)
      expect(citizen).to be_valid
    end

    it "is invalid if name is blank" do
      citizen = Citizen.new(full_name: "", date_of_birth: Date.today - 30.years)
      expect(citizen).not_to be_valid
    end

    it "is invalid if email is not in a valid format" do
      citizen = Citizen.new(full_name: "John Doe", date_of_birth: Date.today - 30.years, email: "invalid_email")
      expect(citizen).not_to be_valid
    end

  end
end
