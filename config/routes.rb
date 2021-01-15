Rails.application.routes.draw do

  get 'users/create'
  post 'users/create'

  get 'users/manage'
  post 'users/manage'

  get 'users' => 'users#index'


  root to: 'home#top'
  get 'about' => 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
