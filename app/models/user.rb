# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  has_many :audit_logs

  has_many :hands_associations, class_name: 'Hand'
  has_many :hands, through: :hands_associations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, :last_name, :phone

  PHONE_REGEX = /\A[0-9]*\Z/.freeze

  validates_format_of :phone, with: PHONE_REGEX

  def full_name
    "#{last_name.upcase}, #{first_name.upcase}"
  end
end



admin = AdminUser.create!(email: "admin@test123.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: 'John', last_name: 'Doe', phone: '5555555555')