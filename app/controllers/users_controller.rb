class UsersController < ApplicationController
  def manage
     @users=User.all
     User.create(name:params[:name],email:params[:email],passwd:params[:pass],)
  end
  def index
  end
  def new
      @user = User.new
  end
end
