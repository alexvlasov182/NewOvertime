class ManagerMailer < ApplicationMailer
  def email(manager)
    @manager = manager
    mail(to: @manager.email, subject: 'Anastasia I Love So you much you the best girl and wife in the whole world, I hope i writing without mistakes:)')
  end
end
