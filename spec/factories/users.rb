# frozen_string_literal: true

FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
  factory :user do
    first_name { 'Alex' }
    last_name { 'Vlasov' }
    email { generate :email }
    password { 'drumlife' }
    password_confirmation { 'drumlife' }
  end

  factory :admin_user, class: 'AdminUser' do
    first_name { 'Admin' }
    last_name { 'User' }
    email { generate :email }
    password { 'admin@admin' }
    password_confirmation { 'admin@admin' }
  end

  factory :non_authorized_user, class: 'User' do
    first_name { 'Non' }
    last_name { 'Authorized' }
    email { generate :email }
    password { 'admin@admin' }
    password_confirmation { 'admin@admin' }
  end
end
