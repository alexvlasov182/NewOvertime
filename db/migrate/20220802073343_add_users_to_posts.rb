# frozen_string_literal: true

class AddUsersToPosts < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :user, foreign_key: true
  end
end
