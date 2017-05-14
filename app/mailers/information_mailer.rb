class InformationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.information_mailer.creation_confirmation.subject
  #
  def creation_confirmation(information)
    @information = information

    mail(
      to:       "info@blanca-jeremy.com",
      subject:  @information.subjet
    )
  end

  def sending_confirmation(information)
    @information = information
    mail(
      to:       @information.user.email,
      subject:  "Confirmation"
    )

  end
end
