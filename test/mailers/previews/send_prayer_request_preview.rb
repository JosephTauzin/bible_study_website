# Preview all emails at http://localhost:3000/rails/mailers/send_prayer_request
class SendPrayerRequestPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/send_prayer_request/propertime
  def propertime
    SendPrayerRequest.propertime
  end

end
