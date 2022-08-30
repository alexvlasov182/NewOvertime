# frozen_string_literal: true

@employee = Employee.create(email: 'drumlife182@gmail.com', password: 'drumlife', password_confirmation: 'drumlife',
                    first_name: 'Alex', last_name: 'Vlasov', phone: '8792565877')

p '1 User created'

AdminUser.create(email: 'anastasiya.jj@gmail.com', password: 'asdfasdf', password_confirmation: 'asdfasdf',
                 first_name: 'Admin', last_name: 'User', phone: '8792565877')

p '1 Admin user created'

AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))

p '3 audit logs have been created'

100.times do |post|
  Post.create!(date: Date.today,
               rationale: "#{post} RubyGems.org is the Ruby community’s gem hosting service. Instantly publish your gems and then install them. Use the API to find out more about available gems. Become a contributor and improve the site yourself.", user_id: @employee.id, overtime_request: 2.5)
end

p '100 Posts have been created'

