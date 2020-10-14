require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe '#validations' do
    it 'should test that the contacts factory is valid' do
      expect(FactoryBot.build :contact).to be_valid
    end

    it 'should validate the presence of the name' do
      contact = FactoryBot.build :contact, name: ''
      expect(contact).not_to be_valid
    end

    it 'shoul validate the presence of the email' do
      contact = FactoryBot.build :contact, email: ''
      expect(contact).not_to be_valid
    end
  end
end
