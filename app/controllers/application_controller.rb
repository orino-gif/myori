class ApplicationController < ActionController::Base
  #CSRF対策の設定
  protect_from_forgery with: :exception
  #パラメータの保存を許可する
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
    added_attrs = [ :nickname, :email, :password, :birthday ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  end
end
