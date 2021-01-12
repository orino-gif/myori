Rails.application.routes.draw do
  devise_for :users
  
  #サインアップエラー後のリダイレクト先を指定
  devise_scope :users do
    get '/users', to: redirect("/users/sign_up")
  end
  
  get 'user/index/:id' => 'user#index'
  #get 'user/index'
  root to: 'home#top'
  get 'about' => 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
