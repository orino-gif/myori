class ApplicationController < ActionController::Base
  #CSRF対策の設定
  protect_from_forgery with: :exception

end
