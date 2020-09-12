class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.participation_notification.subject
  #
  def participation_notification(user,meeting)

    @user = user
    @meeting = meeting
    mail to: user.email
  end
end
