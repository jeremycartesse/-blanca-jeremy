class InformationMailer < ApplicationMailer
  def creation_confirmation(information)
    @information = information

    mail(
      to:       "info@blanca-jeremy.com",
      subject:  "#{@information.type_message} #{@information.subject}"

    )
  end
end
