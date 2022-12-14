# frozen_string_literal: true

require 'rails_helper'

describe 'navigate' do
  before do
    @admin_user = create(:admin_user)
    login_as(@admin_user, scope: :user)
  end

  describe 'edit' do
    before do
      @post = create(:post)
      visit edit_post_path(@post)
    end

    it 'has a status that can be edited on the form by an admin' do
      choose('post_status_approved')
      click_on 'Save'

      expect(@post.reload.status).to eq('approved')
    end

    it 'cannot be edited by a non admin' do
      logout(:user)
      user = create(:user)
      login_as(user, scope: :user)

      visit edit_post_path(@post)

      expect(page).not_to have_content('Approved')
    end

    it 'is not editable by the post creator if status is approved' do
      logout(:user)
      user = create(:user)
      login_as(user, scope: :user)

      @post.update(user_id: user.id, status: 'approved')

      visit edit_post_path(@post)

      expect(page).to have_current_path(root_path, ignore_query: true)
    end
  end
end
