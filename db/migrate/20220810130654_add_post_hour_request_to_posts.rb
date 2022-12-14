# frozen_string_literal: true

class AddPostHourRequestToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :overtime_request, :decimal, default: 0.0
  end
end
