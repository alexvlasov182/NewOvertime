# frozen_string_literal: true

@user = User.create(email: 'drumlife182@gmail.com', password: 'drumlife', password_confirmation: 'drumlife',
                    first_name: 'Alex', last_name: 'Vlasov', phone: '9093628233')

p '1 User created'

AdminUser.create(email: 'admin@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf',
                 first_name: 'Admin', last_name: 'User', phone: '9093628233')

p '1 Admin User created'

100.times do |post|
  Post.create!(date: Date.today,
               rationale: "#{post} RubyGems.org is the Ruby community’s gem hosting service. Instantly publish your gems and then install them. Use the API to find out more about available gems. Become a contributor and improve the site yourself.", user_id: @user.id, overtime_request: 2.5)
end

p '100 Posts have been created'

AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

p '3 audit logs have been created'
