# frozen_string_literal: true

@user = User.create(email: 'drumlife182@gmail.com', password: 'drumlife', password_confirmation: 'drumlife', first_name: 'Alex', last_name: 'Vlasov')

p '1 User created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

p '100 Posts have been created'
