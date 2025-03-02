require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "welcome" do
    user = OpenStruct.new(email: "to@example.com")
    email = UserMailer.with(user: user).welcome

    assert_equal ["from@example.com"], email.from
    assert_equal ["to@example.com"], email.to
    assert_equal "Welcome", email.subject
  end
end
