Rails.application.routes.draw do
  resources :sunnahs
  resources :articles
  root 'home#index'
  get '/sunnah', to: 'home#sunnah'
  get '/daily', to: 'home#daily'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
