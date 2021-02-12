class UsersController < ApplicationController
  def new
    #Userクラスのインスタンス生成
    @user=User.new

  end
  
  def index
    #Userテーブルのすべてのデータを取得
    @users=User.all
  end
  
  #新規ユーザー登録ボタンが押された後のメソッド
  def create
    #user_paramsのレコードを追加後、データベースへ保存。戻り値はモデルのインスタンス
    @user=User.create(user_params)
    #saveメソッドは、インスタンスの保存が成功した場合はtrue、失敗した場合はfalseを返す
    if @user.save
      #userのインスタンスの値をUserMailerに添付して
      UserMailer.with(user: @user).welcome_email.deliver_now
      flash[:notice] = "仮登録完了"
      #render 'show'
    else
      flash.now[:notice] = "入力エラー"
      render 'new'
    end
  end
  
  def show
  @creator=Creator.create(email: params[:email], passwd: params[:passwd], name: params[:name])
  if @creator.save
    flash[:notice] = "本登録完了"
  else
    flash[:notice] = "重複が検出されました。お手数ですが、再度の仮登録をお願いします。"
    render 'new'
  end
  end
  
  def edit
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :passwd)
  end
end
