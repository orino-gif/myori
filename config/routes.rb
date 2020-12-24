Rails.application.routes.draw do
  resources :tweets
  get 'question/index'

  get 'requests/top'

  get 'question/top'

  get 'posts/index'
  root to: 'home#top'
  get 'about' => 'home#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
