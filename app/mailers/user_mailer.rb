class UserMailer < ApplicationMailer
  default from: 'orino0710@gmail.com'

  def welcome_email
    @user = params[:user]
    mail(
      
      to: 'orino0710@gmail.com',
      subject: '私の素敵なサイトへようこそ'
      )
  end
end
