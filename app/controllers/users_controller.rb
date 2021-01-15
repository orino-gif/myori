class UsersController < ApplicationController
  
  def create
     User.create(name:params[:name],email:params[:email],
     passwd:params[:pass],)
     flash[:notice] = "ユーザー登録が完了しました"
  end
  def manage
     @users=User.all
  end
end
