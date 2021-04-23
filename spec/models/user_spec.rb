require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validate user' do
    let(:user) {build(:random_user)}

    it 'without Name' do
      #user = User.new(last_name: 'Last', email: 'test@test21.com').save
      user.name = nil
      expect(user.save).to eq(false)
    end

    it 'Without Email' do
      user.email = nil
      #user = User.new(name: 'Name', last_name: 'Last').save
      expect(user.save).to eq(false)
    end

    it 'Without Last Name' do
      user.last_name = nil
      #user = User.new(name: 'Name', email: 'test@test21.com').save
      expect(user.save).to eq(false)
    end
    it 'Without Password' do
      user.password = nil
      #user = User.new(name: 'Name', email: 'test@test21.com').save
      expect(user.save).to eq(false)
    end

    it 'Should save' do

      # user = User.new(name: 'Name', email: 'test@test21.com', last_name: 'Last').save
      expect(user.save).to eq(true)
    end
  end

end
