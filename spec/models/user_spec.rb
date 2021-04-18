require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validate user' do
    it 'ensures Last name presence' do
      user = User.new(last_name: 'Last', email:'test@test.com').save
      expect(user).to eq(false)
    end
    it 'ensures first name presence' do
      user = User.new(name: 'name', email:'test@test.com').save
      expect(user).to eq(false)
    end
    it 'ensures email presence' do
      user = User.new(name: 'name', last_name:'Last').save
      expect(user).to eq(false)
    end

    it 'Should save' do
      user = User.new(name: 'name', email:'test@test.com', last_name: 'last').save
      expect(user).to eq(true )
    end
  end
end
