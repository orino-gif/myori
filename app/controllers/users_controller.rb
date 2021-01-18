class UsersController < ApplicationController
  def new
    @user=User.new
    UserMailer.with(user: @user).welcome_email.deliver_now
    
  end
  def index
    @users=User.all
  end
  def create
    @user=User.create(user_params)
    if @user.save
      flash[:notice] = "データベース登録完了"
      

      
      #管理者用ページへ移動
      redirect_to users_path
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