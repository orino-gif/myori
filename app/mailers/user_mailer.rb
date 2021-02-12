class UserMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'defomateメール認証')
    #mail(to: 'xr274375@fc5.so-net.ne.jp', subject: '私の素敵なサイトへようこそ')
  end
end
