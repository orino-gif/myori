class UsersController < ApplicationController
  def new
    @user=User.new
    UserMailer.welcome_email.deliver_later

  end
  
  def index
    @users=User.all
  end
  
  def create
    @user=User.create(user_params)
    if @user.save
      flash[:notice] = "認証メール送信"
      
      render 'show'
    else
      flash.now[:notice] = "入力エラー"
      render 'new'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :passwd)
  end
end
