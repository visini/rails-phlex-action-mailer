class Views::Mailers::Users::Welcome::Html < Views::Base
  def initialize(user)
    @user = user
  end

  def view_template
    div do
      plain "We are excited to have you join us! Thank you for signing up."
    end

    a href: "https://example.com" do
      plain "Click here to sign in"
    end
  end
end
