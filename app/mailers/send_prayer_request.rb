class SendPrayerRequest < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_prayer_request.propertime.subject
  #
  
  def propertime(person)
    @person = person
    @greeting = "Hi"

    mail to: person.email
  end
end
