require "ostruct"

class UserMailerPreview < ActionMailer::Preview
  def welcome
    user = OpenStruct.new(email: "user@example.com")
    UserMailer.with(user: user).welcome
  end
end
