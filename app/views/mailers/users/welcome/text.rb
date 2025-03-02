class Views::Mailers::Users::Welcome::Text < Views::Base
  def initialize(user)
    @user = user
  end

  def view_template
    plain "We are excited to have you join us! Thank you for signing up."
    plain "\n\n"
    plain "Click here to sign in: https://example.com"
  end
end
