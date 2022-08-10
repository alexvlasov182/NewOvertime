# frozen_string_literal: true

@user = User.create(email: 'drumlife182@gmail.com', password: 'drumlife', password_confirmation: 'drumlife', first_name: 'Alex', last_name: 'Vlasov')

p '1 User created'

AdminUser.create(email: 'admin@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf',
                 first_name: 'Admin', last_name: 'User')

p '1 Admin User created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

p '100 Posts have been created'
