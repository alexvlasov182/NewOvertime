# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AuditLog, type: :model do
  before do
    @audit_log = create(:audit_log)
  end

  describe 'creation' do
    it 'can be properly created' do
      expect(@audit_log).to be_valid
    end
  end

  describe 'validations' do
    it 'is required to have a user association' do
      @audit_log.user_id = nil
      expect(@audit_log).not_to be_valid
    end

    it 'alwayses have a status' do
      @audit_log.user_id = nil
      expect(@audit_log).not_to be_valid
    end

    it 'is required to have a start_date' do
      @audit_log.start_date = nil
      expect(@audit_log).not_to be_valid
    end

    it 'has a start date equal to 6 days prior' do
      new_audit_log = described_class.create(user_id: User.last.id)
      expect(new_audit_log.start_date).to eq(Date.today - 6.days)
    end
  end
end
