# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    before do
      @user = described_class.create(email: 'drumlife182@gmail.com', password: 'drumlife', password_confirmation: 'drumlife', first_name: 'Alex', last_name: 'Vlasov')
    end

    it 'can be created' do
      expect(@user).to be_valid
    end

    it 'cannot be created without first_name, last_name' do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).not_to be_valid
    end
  end
end
