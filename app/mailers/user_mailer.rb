class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    @greeting = "Hi"

    mail(to: @user.email, subject: 'Welcome to Blanca and Jeremy wedding ')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.message_info.subject
  #
  def message_info
    @greeting = "Hi"
    @user = user

    mail(to: @user.email, subject: 'Welcome to Blanca and Jeremy wedding')
  end
end
