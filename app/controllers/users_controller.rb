class UsersController < ApplicationController
  
  def create
     User.create(name:params[:name],email:params[:email],
     passwd:params[:pass],)
  end
  def manage
     @users=User.all
  end
end
