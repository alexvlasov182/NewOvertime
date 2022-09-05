# frozen_string_literal: true

namespace :notification do
  desc 'Sends SMS notification to employees asking them to log if they had overtime or not'
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all

      notification_message = 'https://alexvlasov-overtime.herokuapp.com/'

      employees.each do |employee|
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    end
  end

  desc 'Sends mail notification to managers (admin user) each day to inform of pending overtime requests'
  task manager_email: :environment do
    submitted_posts = Post.submitted

    admin_users = AdminUser.all
    employees = Employee.all

    if submitted_posts.count.positive?
      employees.each do |employee|
        ManagerMailer.email(employee).deliver_now
      end
    end
  end
end
