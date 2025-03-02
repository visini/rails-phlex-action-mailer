class UserMailer < ApplicationMailer
  def welcome
    @user = params[:user]
    render_email(
      Views::Mailers::Users::Welcome,
      subject: "Welcome",
      to: @user.email,
      view_params: {user: @user}
    )
  end
end
