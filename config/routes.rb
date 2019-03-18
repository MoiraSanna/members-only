Rails.application.routes.draw do

  get 'secrets/index'

  get 'secrets/new'

  get 'sessions/new'

  root 'secrets#index'
  get '/about', to: 'static_pages#home'
  get  '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/new', to: 'secrets#new'
  post '/new', to: 'secrets#create'
  get '/index', to: 'secrets#index'

  resources :users
  resources :secrets, only: [:new, :create, :index]
end
