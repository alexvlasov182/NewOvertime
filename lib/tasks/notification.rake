# frozen_string_literal: true

namespace :notification do
  desc 'Sends SMS notification to employees asking them to log if they had overtime or not'
  task sms: :environment do
    if Time.now.sunday?

    end
    # TODO
    # 1. Schedule to run at Sunday at 5pm
    # 2. Iterate over all employees
    # 3. Skip AdminUsers
    # 4. Send a message that has instructions and a link to log time
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    # No spaces or dashes
    # exactly 10 characters
    # all characters have to be a number
  end

  desc 'Sends mail notification to managers (admin user) each day to inform of pending overtime requests'
  task manager_email: :environment do
    submitted_posts = Post.submitted

    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end
end
