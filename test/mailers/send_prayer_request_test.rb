require 'test_helper'

class SendPrayerRequestTest < ActionMailer::TestCase
  test "propertime" do
    mail = SendPrayerRequest.propertime
    assert_equal "Propertime", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
