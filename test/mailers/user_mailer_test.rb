require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "participation_notification" do
    mail = UserMailer.participation_notification
    assert_equal "Participation notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
