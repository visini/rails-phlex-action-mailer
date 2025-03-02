class ApplicationMailer < ActionMailer::Base
  include Roadie::Rails::Automatic

  default from: "from@example.com"
  layout false

  def render_email(view_class, subject:, to:, view_params: {})
    mail({subject: subject, to: to, content_type: "multipart/alternative"}) do |format|
      format.html { render Components::Layouts::Mailers::Html.new { render view_class.const_get(:Html).new(**view_params) } }
      format.text { render Components::Layouts::Mailers::Text.new { render view_class.const_get(:Text).new(**view_params) } }
    end
  end
end
