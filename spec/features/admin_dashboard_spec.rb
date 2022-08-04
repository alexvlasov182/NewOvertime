# frozen_string_literal: true

require 'rails_helper'

describe 'admin dashboard' do
  it 'does not allow users to access without being signed in' do
    visit admin_root_path
    expect(page).to have_current_path(new_user_session_path, ignore_query: true)
  end

  it 'cannot be reached by a non admin users' do
    user = create(:user)
    login_as(user, scope: :user)

    visit admin_root_path

    expect(page).to have_current_path(root_path, ignore_query: true)
  end

  it 'can be reached by an admin users' do
    admin_user = create(:admin_user)
    login_as(admin_user, scope: :user)

    visit admin_root_path

    expect(page).to have_current_path(admin_root_path, ignore_query: true)
  end
end
