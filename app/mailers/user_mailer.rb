class UserMailer < ApplicationMailer
  default from: 'test@defomate.com'
  layout 'mailer'
  def welcome_email
    mail(
      
      to: 'xr274375@fc5.so-net.ne.jp',
      subject: '私の素敵なサイトへようこそ'
      )
  end
end
