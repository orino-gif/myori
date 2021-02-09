class UserMailer < ApplicationMailer
  def welcome_email
    mail(to: 'testuser01@defomate.net', subject: '私の素敵なサイトへようこそ')
  end
end
