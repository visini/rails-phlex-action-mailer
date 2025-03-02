# frozen_string_literal: true

class Views::Mailers::Users::Welcome < Views::Base
  def initialize(user:)
    @user = user
  end

  class Html < self
    def view_template
      div class: "highlight" do
        plain "We are excited to have you join us! Thank you for signing up."
      end

      a href: "https://example.com" do
        plain "Click here to sign in"
      end
    end
  end

  class Text < self
    def view_template
      plain "We are excited to have you join us! Thank you for signing up."
      plain "\n\n"
      plain "Click here to sign in: https://example.com"
    end
  end
end
