Rails.application.routes.draw do
  
  # get 'users/show'
  # post 'users/show'
  # get 'users/profile'
  # post 'users/profile'

  # get 'users/new'
  # post 'users/new'

  # get 'users/manage'
  # post 'users/manage'

  # get 'users' => 'users#index'
  resources:users
  root to: 'home#top'
  get 'about' => 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
