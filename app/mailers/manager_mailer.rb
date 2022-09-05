# frozen_string_literal: true

class ManagerMailer < ApplicationMailer
  def email(manager)
    @manager = manager
    mail(to: @manager.email,
         subject: 'Anastasia Vlasov I Love So you much you are the best girl and wife in the whole world, I hope i am writing without mistakes:)')
  end
end
