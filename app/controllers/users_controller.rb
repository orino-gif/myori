class UsersController < ApplicationController
  def new
    @user=User.new
    
  end
  def index
    @users=User.all
  end
  def create
    User.create(user_params)
    #管理者用ページへ移動
    redirect_to users_path

  end
  def show
    
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :passwd)
  end
  

end
